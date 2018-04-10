(* 目的: 関数 f とリスト lst を受け取って f を施したリストを返す *)
(* map : ('a -> 'b) -> 'a list -> 'b list *)
let rec map f lst = match lst with
  [] -> []
  | first::rest -> f first :: map f rest

(* Test *)
let test0 = map sqrt [2.0; 3.0]
let test1 = map sin  [2.0; 3.0]