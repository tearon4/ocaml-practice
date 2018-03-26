type person_t = {
  name : string;
  age : int;
  birthday : string;
  blood_type : string;
}

(* 10-7 *)
(* purpose: person_t型のデータのリストを受け取って各血液型の人数を組にして返す *)
(* shukei : person_t list -> int * int * int * int  *)
let rec shukei lst = match lst with 
  [] -> (0,0,0,0)
  | {blood_type = bt}::rest -> 
    let (a, b, o, ab) = shukei rest in
      if bt = "A"      then (a+1, b, o ,ab)
      else if bt = "B" then (a, b+1, o, ab)
      else if bt = "O" then (a, b, o+1, ab)
      else                  (a, b, o, ab+1)

(* Test *)
let test1 = shukei [] = (0,0,0,0)
let test2 = shukei [
  { name = "SAITO ASUKA"; age = 19; birthday = "1998 8-10"; blood_type = "O"; };
  { name = "NISHINO NANASE"; age = 23; birthday = "1994 5-25"; blood_type = "O"; };
  { name = "SHIRAISHI MAI"; age = 25; birthday = "1992 8-20"; blood_type = "A"; };
  { name = "IKUTA ERIKA"; age = 21; birthday = "1997 1-22"; blood_type = "A"; };
] = (2, 0, 2, 0)

(* 10-8 *)
(* purpose: person_t型のデータのリストを受け取って最も人数の多かった血液型を返す *)
(* saita : person_t list -> string *)
let saita lst = 
  let (a, b, o, ab) = shukei lst in
    let saidai = max (max a o) (max b ab) in
      if saidai = a      then "A"
      else if saidai = b then "B"
      else if saidai = o then "O"
      else                    "AB"

(* Test *)
let test3 = saita [] = "A" (* 空リストだと先頭要素が返ってしまう(同数の場合も然り) *)
let test4 = saita [
  { name = "NISHINO NANASE"; age = 23; birthday = "1994 5-25"; blood_type = "O"; };
  { name = "SHIRAISHI MAI"; age = 25; birthday = "1992 8-20"; blood_type = "A"; };
  { name = "IKUTA ERIKA"; age = 21; birthday = "1997 1-22"; blood_type = "A"; };
] = "A"