(* nの階乗を求める *)
let rec enumerate n =
  if n > 0 then n :: enumerate (n - 1) else []

let test0 = enumerate 0 = []
let test1 = enumerate 5 = [5;4;3;2;1]

let fac n = List.fold_right ( * ) (enumerate n) 1

let test2 = fac 3  = 6
let test3 = fac 5  = 120
