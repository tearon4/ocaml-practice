(* person_t型の宣言 *)
type person_t = {
  name       : string;
  age        : int;
  birthday   : string;
  blood_type : string;
}

(* 星座の入力が面倒なので問題を改変 *)
(* purpose: person_t型のデータのリストを受け取ったら未成年の人の名前だけのリストを返す *)
(* under20: person_t list -> string list *)
let rec under20 lst = match lst with 
  [] -> []
  | {name = name;age = age}::rest -> 
    if age < 20 then name :: under20 rest
                else under20 rest

(* Test *)
let test0 = under20 [] = []
let test2 = under20 [
    { name = "齋藤飛鳥"; age = 19; birthday = "1998 8-10"; blood_type = "O"; };
    { name = "西野七瀬"; age = 23; birthday = "1994 5-25"; blood_type = "O"; };
  ] = ["齋藤飛鳥"]
let test3 = under20 [
  { name = "齋藤飛鳥"; age = 19; birthday = "1998 8-10"; blood_type = "O"; };
  { name = "生田絵梨花"; age = 21; birthday = "1997 1-22"; blood_type = "A"; };
  { name = "和田まあや"; age = 19; birthday = "1998 4-23"; blood_type = "O"; };
  ] = ["齋藤飛鳥";"和田まあや"]
