(* 与えられた自然数nから1までのリストを作る *)
let rec enumerate n =
  if n > 0 then n :: enumerate (n - 1) else []

let test0 = enumerate 0 = []
let test1 = enumerate 5 = [5;4;3;2;1]

(* 与えられた自然数nの約数を求める *)
let divisor n =
  List.filter (fun x -> n mod x = 0) (enumerate n)

let test2 = divisor 12 = [12;6;4;3;2;1;]

(* 与えられた自然数mいか完全数を求める *)
let perfect m =
  List.filter (fun n -> (List.fold_right ( + ) (divisor n) 0) - n = n ) (enumerate m)

let test3 = perfect 500 = [496;28;6;]
