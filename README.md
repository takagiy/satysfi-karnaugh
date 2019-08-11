# satysfi-karnaugh - Drawing Karnaugh maps in SATySFi
## example

```satysfi
let-math \dc = ${\dontcare} in
{
  \karnaugh-map(${xy})(${zw}) [
    ${| 1   | 0   | 0   | 1   |};
    ${| 1   | 1   | 0   | 1   |};
    ${| \dc | \dc | \dc | \dc |};
    ${| 1   | 0   | \dc | \dc |};
  ] [
    Karnaugh.box  (0, 1);
    Karnaugh.tall (3, 0);
  ];
}

{
  \karnaugh-map(${AB})(${C}) [
    ${| 1 | 1 | 0 | 1 |};
    ${| 1 | 0 | 0 | 0 |};
  ] [
    Karnaugh.slim (0, 0);
    Karnaugh.flat (0, 0);
    Karnaugh.flat (3, 0);
  ];
}
```

The adbove will look like the following.

![output](/docs/example.png)

## reference
* `\dontcare` : `[] math-cmd`

    * “∅” in formula

* `\karnaugh-map` : `[math; math; (math list) list; (length list -> length list -> graphics list) list] inline-cmd`   
`\karnaugh-map` : `<label of the columns> <label of the rows> <contents> <groupings>`
    * Draw a Karnaugh map

* `Karnaugh.box` : `int * int -> lenght list -> length list -> graphics list`   
`Karnaugh.box` : `(<start column>, <start row>) -> <grouping>`
    * Group 2x2 cells

* `Karnaugh.tall` : `int * int -> lenght list -> length list -> graphics list`   
`Karnaugh.tall` : `(<start column>, <start row>) -> <grouping>`
    * Group 2x4 cells

* `Karnaugh.wide` : `int * int -> lenght list -> length list -> graphics list`   
`Karnaugh.wide` : `(<start column>, <start row>) -> <grouping>`
    * Group 4x2 cells

* `Karnaugh.slim` : `int * int -> lenght list -> length list -> graphics list`   
`Karnaugh.slim` : `(<start column>, <start row>) -> <grouping>`
    * Group 1x2 cells

* `Karnaugh.flat` : `int * int -> lenght list -> length list -> graphics list`   
`Karnaugh.flat` : `(<start column>, <start row>) -> <grouping>`
    * Group 2x1 cells

* `Karnaugh.minimum` : `int * int -> lenght list -> length list -> graphics list`   
`Karnaugh.minimum` : `(<start column>, <start row>) -> <grouping>`
    * Group 1x1 cells

* `Karnaugh.large` : `int * int -> lenght list -> length list -> graphics list`   
`Karnaugh.large` : `(<start column>, <start row>) -> <grouping>`
    * Group 4x4 cells
