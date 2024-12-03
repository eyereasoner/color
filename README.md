# eye2-trealla

- A reasoner using Webized Prolog which basically means that atoms can be IRIs.
- It does bottom-up reasoning with `conclusion ?- premise` rules and uses `stable(n)` to fail if the deductive closure at level `n` is not yet stable.
- Proofs steps are `ether((conclusion ?- premise), premise_inst, conclusion_inst)` and `conclusion_inst` is asserted.
- Variables are interpreted as universally quantified variables except for `conclusion ?- premise` conclusion-only variables which are interpreted existentially.
- Queries are posed as `true ?- premise` and answered as `answer(premise_inst)`.
- Inference fuses are defined as `false ?- premise` and blown as `fuse(premise_inst)` with return code 2.

## Rationale for `conclusion ?- premise`

- conclusion can be a conjunction
- conclusion can be `false` to blow an inference fuse
- conclusion can be `true` to pose a query
- conclusion-only variables are existentials
- current way to explain the reasoning as `ether` proof steps
- avoiding loops that could occur with backward chaining

## Installation and test

Install [Trealla Prolog](https://github.com/trealla-prolog/trealla?tab=readme-ov-file#building) and run

```
cd etc
./test
```

## Background

- Personal notes by Tim Berners-Lee: [Design Issues](https://www.w3.org/DesignIssues/)
- Book of Markus Triska: [The Power of Prolog](https://www.metalevel.at/prolog)
