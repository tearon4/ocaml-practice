(* Purpose: 鶴の匹数を与えられたら足の数を返す *)
(* tsuru_no_ashi : int -> int *)
let tsuru_no_ashi x = x * 2

(* Test *)
let test1 = (tsuru_no_ashi 3 = 6)
let test2 = (tsuru_no_ashi 7 = 14)
let test3 = (tsuru_no_ashi 11 = 22)
