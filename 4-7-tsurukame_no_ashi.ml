(* Purpose: 鶴と亀の匹数を与えられたら足の数を返す *)
(* tsurukame_no_ashi : int -> int -> int *)
let tsurukame_no_ashi x y = x * 2 + y * 4

(* Test *)
let test1 = (tsurukame_no_ashi 1 5 = 22)
let test2 = (tsurukame_no_ashi 6 4 = 28)
let test3 = (tsurukame_no_ashi 9 2 = 26)
