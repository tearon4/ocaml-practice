type person_t = {
  name : string;
  height : float;
  birthday : string;
  blood_type : string;
}
let people = [
  { name = "hoge"; height = 149.2; birthday = "1994 08-05"; blood_type = "B"; };
  { name = "fuga"; height = 171.3; birthday = "1989 12-14"; blood_type = "A"; };
  { name = "piyo"; height = 149.2; birthday = "1994 08-05"; blood_type = "B"; };
  { name = "foo"; height = 155.9;  birthday = "1999 05-30"; blood_type = "O"; };
  { name = "bar"; height = 164.4;  birthday = "1995 08-22"; blood_type = "AB"; };
  { name = "baz"; height = 173.6;  birthday = "1990 10-14"; blood_type = "B"; };
]

(* 13-1 *)
(* 目的: person_t型のリストを受け取ったら指定された血液型の人数を返す *)
(* count_ketsueki : person_t list -> string -> int *)
let rec count_ketsueki plst target_bt = match plst with
  [] -> 0
  | { name = n; height = h; birthday = bd; blood_type = bt }::rest ->
    if (target_bt = bt) 
      then 1 + count_ketsueki rest target_bt
      else count_ketsueki rest target_bt

(* Test *)
let test0 = count_ketsueki [] "A" = 0
let test1 = count_ketsueki people "B" = 3
let test2 = count_ketsueki people "AB" = 1


(* 13-2 *)
(* 目的: person_t型のリストを受け取ったらその中に出てくる人の名前を返す *)
(* person_namae : person_t list -> string list *)
let rec person_namae plst = match plst with
  [] -> []
  | { name = n; height = h; birthday = bd; blood_type = bt }::rest -> n::(person_namae rest)

(* Test *)
let test3 = person_namae [] = []
let test4 = person_namae people = ["hoge";"fuga";"piyo";"foo";"bar";"baz";]
