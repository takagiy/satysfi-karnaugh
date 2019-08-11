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

