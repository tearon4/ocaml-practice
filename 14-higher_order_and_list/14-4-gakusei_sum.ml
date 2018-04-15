type gakusei_t = {
  name  : string;
  score : int;
  rank  : string; 
}

let gakusei_A = {name = "fuga"; score = 72; rank = "B";}
let gakusei_B = {name = "hoge"; score = 85; rank = "A";}
let gakusei_C = {name = "piyo"; score = 64; rank = "C";}
let gakusei_D = {name = "piyo"; score = 93; rank = "AA";}

let gakusei_lst0 = [gakusei_A;gakusei_D;]
let gakusei_lst1 = [gakusei_B;gakusei_C;]
let gakusei_lst2 = [gakusei_A;gakusei_B;]
let gakusei_lst3 = [gakusei_C;gakusei_D;]

let add_score gakusei rest_result = match gakusei with
  {score = s;} -> s + rest_result

let sum_score lst = List.fold_right add_score lst 0

(* Test *)
let test0 = sum_score gakusei_lst0 = 72 + 93
let test1 = sum_score gakusei_lst1 = 85 + 64

(* 14-5 *)
let sum_score2 lst =
  let add_score2 gakusei rest_result2 =
    match gakusei with {score = s;} -> s + rest_result2
    in List.fold_right add_score2 lst 0

(* Test *)
let test2 = sum_score2 gakusei_lst2 = 72 + 85
let test3 = sum_score2 gakusei_lst3 = 64 + 93
