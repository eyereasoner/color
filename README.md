# eyelog

- A reasoner using webized prolog which basically means that atoms can be IRIs.
- Besides top-down reasoning with `conclusion :- premise` rules, it also does bottom-up reasoning with `conclusion :+ premise` rules.
- Bottum-up reasoning can use `stable(n)` to fail if the deductive closure at level `n` is not yet stable.
- Proofs steps are `step((conclusion :+ premise), premise_inst, conclusion_inst)` and `conclusion_inst` is asserted.
- Variables are interpreted as universally quantified variables except for `conclusion :+ premise` conclusion-only variables which are interpreted existentially.
- Queries are posed as `true :+ premise` and answered as `answer(premise_inst)`.
- Inference fuses are defined as `false :+ premise` and blown as `fuse(premise_inst)` with return code 2.

## Rationale for bottom-up reasoning with `conclusion :+ premise` rules

- conclusion can be a conjunction
- conclusion can be `false` to blow an inference fuse
- conclusion can be `true` to pose a query
- conclusion can not be any other built-in
- conclusion-only variables are existentials
- proving the bottom-up reasoning with `step/3` proof steps
- avoiding loops that could occur with top-down reasoning

## Installation and test

- Install [Scryer Prolog](https://github.com/mthom/scryer-prolog#installing-scryer-prolog)
  and run the tests
    ```
    git clone https://github.com/eyereasoner/eyelog
    cd eyelog/etc
    ./test-scryer
    ```
- Install [SICStus Prolog](https://sicstus.sics.se/download4.html)
  and run the tests
    ```
    git clone https://github.com/eyereasoner/eyelog
    cd eyelog/etc
    ./test-sicstus
    ```
- Install [SWI Prolog](http://www.swi-prolog.org/Download.html)
  and run the tests
    ```
    git clone https://github.com/eyereasoner/eyelog
    cd eyelog/etc
    ./test-swipl
    ```
- Install [Trealla Prolog](https://github.com/trealla-prolog/trealla#building)
  and run the tests
    ```
    git clone https://github.com/eyereasoner/eyelog
    cd eyelog/etc
    ./test-trealla
    ```

## Background

- Personal notes by Tim Berners-Lee: [Design Issues](https://www.w3.org/DesignIssues/)
- Book of Markus Triska: [The Power of Prolog](https://www.metalevel.at/prolog)
