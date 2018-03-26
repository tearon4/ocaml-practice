(* Purpose: 亀の匹数を与えられたら足の数を返す *)
(* kame_no_ashi : int -> int *)
let kame_no_ashi x = x * 4

(* Test *)
let test1 = (kame_no_ashi 3 = 12)
let test2 = (kame_no_ashi 7 = 28)
let test3 = (kame_no_ashi 11 = 44)
