(* person_t型の宣言 *)
type person_t = {
  name       : string;
  age        : int;
  birthday   : string;
  blood_type : string;
}

let is_A person = match person with
  {name = n; age = a; birthday = bd; blood_type = bt} -> bt = "A"

(* purpose: person_t型のデータのリストを受け取ったら血液型がA型の人数を返す *)
(* count_ketsueki: person_t list -> int *)
let rec count_ketsueki is_X lst = match lst with 
  [] -> 0
  | first::rest -> if is_X first
      then 1 + count_ketsueki is_X rest
      else     count_ketsueki is_X rest

(* Test *)
let test0 = count_ketsueki is_A [] = 0
let test2 = count_ketsueki is_A [
    { name = "白石麻衣"; age = 25; birthday = "1992 8-20"; blood_type = "A"; };
    { name = "西野七瀬"; age = 23; birthday = "1994 5-25"; blood_type = "O"; };
  ] = 1
let test3 = count_ketsueki is_A [
    { name = "白石麻衣"; age = 25; birthday = "1992 8-20"; blood_type = "A"; };
    { name = "生田絵梨花"; age = 21; birthday = "1997 1-22"; blood_type = "A"; };
    { name = "齋藤飛鳥"; age = 19; birthday = "1998 8-10"; blood_type = "O"; };
  ] = 2
