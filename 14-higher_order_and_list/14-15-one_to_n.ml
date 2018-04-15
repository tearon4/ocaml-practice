(* 1 ~ n までの総和を計算する *)
let rec enumerate n =
  if n > 0 then n :: enumerate (n - 1) else []

let test0 = enumerate 0 = []
let test1 = enumerate 5 = [5;4;3;2;1]

let one_to_n n = List.fold_right ( + ) (enumerate n) 0

let test2 = one_to_n 5  = 15
let test3 = one_to_n 10 = 55