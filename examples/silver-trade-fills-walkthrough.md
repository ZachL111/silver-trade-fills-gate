# Silver Trade Fills Gate Walkthrough

This walk-through keeps the domain vocabulary close to the data instead of burying it in prose.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | spread pressure | 126 | watch |
| stress | fill risk | 149 | ship |
| edge | portfolio drift | 147 | ship |
| recovery | quote width | 190 | ship |
| stale | spread pressure | 230 | ship |

Start with `stale` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

`stale` is the optimistic case; use it to make sure the scoring path still rewards strong signal.
