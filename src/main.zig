const std = @import("std");

const Signal = struct {
    demand: i32,
    capacity: i32,
    latency: i32,
    risk: i32,
    weight: i32,
};

const threshold: i32 = 160;
const risk_penalty: i32 = 7;
const latency_penalty: i32 = 2;
const weight_bonus: i32 = 2;

fn score(signal: Signal) i32 {
    return signal.demand * 2 + signal.capacity + signal.weight * weight_bonus
        - signal.latency * latency_penalty - signal.risk * risk_penalty;
}

fn classify(signal: Signal) []const u8 {
    return if (score(signal) >= threshold) "accept" else "review";
}

test "fixture decisions" {
    const signal_case_1 = Signal{ .demand = 79, .capacity = 100, .latency = 15, .risk = 9, .weight = 12 };
    try std.testing.expectEqual(@as(i32, 189), score(signal_case_1));
    try std.testing.expect(std.mem.eql(u8, classify(signal_case_1), "accept"));
    const signal_case_2 = Signal{ .demand = 71, .capacity = 75, .latency = 13, .risk = 20, .weight = 9 };
    try std.testing.expectEqual(@as(i32, 69), score(signal_case_2));
    try std.testing.expect(std.mem.eql(u8, classify(signal_case_2), "review"));
    const signal_case_3 = Signal{ .demand = 87, .capacity = 86, .latency = 21, .risk = 8, .weight = 13 };
    try std.testing.expectEqual(@as(i32, 188), score(signal_case_3));
    try std.testing.expect(std.mem.eql(u8, classify(signal_case_3), "accept"));
}
