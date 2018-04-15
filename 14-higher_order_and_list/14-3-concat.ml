(* fold_right *)
(* 目的: initから初めてlstの要素を右から順にfを施し込む *)
let rec fold_right f lst init = match lst with
  [] -> init
  | first::rest -> f first (fold_right f rest init)

let concat_single s1 s2 = s1 ^ s2

(* purpose: 文字列のリストを受け取ったらその中の要素を全部くっつけた文字列を返す *)
(* concat : string list -> string *)
let rec concat lst = fold_right concat_single lst ""

(* Test *)
let test3 = concat ["盛";"者";"必";"衰"] = "盛者必衰"
let test2 = concat [] = ""

(* 14-5 *)
let concat2 lst =
  let rec concat_single s1 s2 = s1 ^ s2
  in fold_right concat_single lst ""

(* Test *)
let test3 = concat2 ["跳";"梁";"跋";"扈"] = "跳梁跋扈"
let test4 = concat2 [] = ""

(* 14-14 *)
let concat3 lst = fold_right ( ^ ) lst ""

(* Test *)
let test5 = concat3 ["環";"境";"問";"題"] = "環境問題"
let test6 = concat3 [] = ""