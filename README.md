# silver-trade-fills-gate

`silver-trade-fills-gate` keeps a focused Zig implementation around trading systems. The project goal is to design a Zig verification harness for fills systems, covering resource planning, capacity fixtures, and failure-oriented tests.

## Reason For The Project

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Silver Trade Fills Gate Review Notes

For a quick review, compare `spread pressure` with `spread pressure` before reading the middle cases.

## What It Does

- `fixtures/domain_review.csv` adds cases for spread pressure and fill risk.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/silver-trade-fills-walkthrough.md` walks through the case spread.
- The Zig code includes a review path for `spread pressure` and `spread pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## How It Is Put Together

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The Zig code keeps the review rule close to the tests.

## Run It

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Check It

The check exercises the source code and the review fixture. `stale` is the high score at 230; `baseline` is the low score at 126.

## Boundaries

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
