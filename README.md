# eye3

A reasoner using Webized [ISO Prolog](https://en.wikipedia.org/wiki/Prolog#ISO_Prolog)
which basically means that atoms can be IRIs.

It performs forward chaining for `prem => conc.` rules and uses `stable(n)` to fail
if the deductive closure at level `n` is not yet stable.

Variables are interpreted as universally quantified variables except for forward rule
conclusion-only variables which are interpreted existentially.

Queries are posed and answered as `prem => true.`

Proofs steps are `ether((prem => conc),prem_inst,conc_inst).`

Inference fuses return code 2 with output `prem => false.`

## Installation and test

Install [Trealla Prolog](https://github.com/trealla-prolog/trealla?tab=readme-ov-file#building) and run

```
cd etc
./test
```

## Background

- Personal notes by Tim Berners-Lee: [Design Issues](https://www.w3.org/DesignIssues/)
- Book of Markus Triska: [The Power of Prolog](https://www.metalevel.at/prolog)
