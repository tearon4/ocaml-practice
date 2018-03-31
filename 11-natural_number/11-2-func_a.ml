(* 目的: 指定された漸化式を満たす関数を作る *)
(* a : int -> int *)
let rec func_a n = 
  if n = 0 then 3
  else 2 * func_a (n-1) -1

(* Test *)
let test1 = func_a 0 = 3
let test2 = func_a 1 = 5
let test3 = func_a 2 = 9
let test4 = func_a 3 = 17