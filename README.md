# eye3

A reasoner using Webized [ISO Prolog](https://en.wikipedia.org/wiki/Prolog#ISO_Prolog):

TERM            | Examples
----------------|---------
IRI             | `'urn:example:abc'`
VARIABLE        | `X` `_abc`
LITERAL         | `"abc"` `true` `1.52` `1e-18` `pi` `dt("2022-01-15",'http://www.w3.org/2001/XMLSchema#date')`
LIST            | `[TERM,...]` `[TERM,...\|LIST]`
COMPOUND        | `IRI(TERM,...)`
TRIPLE          | `IRI(TERM,TERM)` `GRAPH => GRAPH`
GRAPH           | `TRIPLE,...`

CLAUSE          | Examples
----------------|---------
ASSERTION       | `TRIPLE.` `true => GRAPH.`
FORWARD_RULE    | `GRAPH,`[`PROLOG`](https://www.scryer.pl/builtins)` => GRAPH.`
QUERY           | `GRAPH => true.`
ANSWER          | `GRAPH => true.`
INFERENCE_FUSE  | `GRAPH => false.`
BACKWARD_RULE   | `TRIPLE <= GRAPH,`[`PROLOG`](https://www.scryer.pl/builtins)`.`

It performs forward chaining for a `FORWARD_RULE` and backward chaining for a `BACKWARD_RULE`.

Queries are posed and answered as `GRAPH => true.` so the answers are also queries be it with
some parts substituted and eventually containing more variables than in the original query.
This forms a dialogue leading to necessary and sufficient answers, supported by proof steps, so that action can take place.

Proofs are composed of proof steps:
```
'https://eyereasoner.github.io/log#proof_step'(((prem=>conc),instantiated_prem),instantiated_conc).
```

## Installation and test

Install [Trealla Prolog](https://github.com/trealla-prolog/trealla?tab=readme-ov-file#building) and run

```
cd etc
./test
```

## Background

- Personal notes by Tim Berners-Lee: [Design Issues](https://www.w3.org/DesignIssues/)
- Book of Markus Triska: [The Power of Prolog](https://www.metalevel.at/prolog)
