(* Purpose: 鶴と亀の匹数の合計と足の数の合計が与えられたら鶴の数を返す関数 *)
(* tsurukame : int -> int -> int *)
let tsurukame x y = (4 * x - y) / 2

(* 
  tsuru + kame = x - (1)
  tsuru * 2 + kame * 4 = y - (2)
  (1)より
  kame = x - tsuru
  (2)に代入
  tsuru * 2 + (x-tsuru) * 4 = y
  整理して
  tsuru = (4x - y) / 2
*)

(* Test *)
let test1 = (tsurukame 5 14 = 3)
let test2 = (tsurukame 7 26 = 1)
let test3 = (tsurukame 8 24 = 4)