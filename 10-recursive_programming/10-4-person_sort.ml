type person_t = {
  name : string;
  age : int;
  birthday : string;
  blood_type : string;
}

(* 10-4 *)

(* purpose: あらかじめ昇順に並んでいるperson_t リストとperson_tデータ1つを受け取って 新たに昇順に並び替えたリストを返す *)
(* insert : person_t list -> person_t -> person_t list *)
let rec insert lst person_t = match lst with 
  [] -> person_t::[]
  | ({name = n;} as first)::rest 
     -> if n < person_t.name then first::(insert rest person_t)
                             else person_t::lst

(* Test *)
let test1 = insert [] 
  { name = "SAITO ASUKA"; age = 19; birthday = "1998 8-10"; blood_type = "O"; } 
  = [
  { name = "SAITO ASUKA"; age = 19; birthday = "1998 8-10"; blood_type = "O"; } 
  ]
let test2 = insert [
  { name = "NISHINO NANASE"; age = 23; birthday = "1994 5-25"; blood_type = "O"; };
  ]
  { name = "IKUTA ERIKA"; age = 21; birthday = "1997 1-22"; blood_type = "A"; }
  = [
  { name = "IKUTA ERIKA"; age = 21; birthday = "1997 1-22"; blood_type = "A"; };
  { name = "NISHINO NANASE"; age = 23; birthday = "1994 5-25"; blood_type = "O"; }
  ]

(* purpose: person_t型のリストを受け取ったら名前順にソートしたリストを返す(本体) *)
(* name_sort : person_t list -> person_t list *)
let rec name_sort lst = match lst with
  [] -> []
  | first::rest -> insert (name_sort rest) first

(* Test *)
let test1 = name_sort [] = []
let test2 = name_sort [
  { name = "SAITO ASUKA"; age = 19; birthday = "1998 8-10"; blood_type = "O"; };
  { name = "NISHINO NANASE"; age = 23; birthday = "1994 5-25"; blood_type = "O"; };
  { name = "SHIRAISHI MAI"; age = 25; birthday = "1992 8-20"; blood_type = "A"; };
  { name = "IKUTA ERIKA"; age = 21; birthday = "1997 1-22"; blood_type = "A"; };
] = [
  { name = "IKUTA ERIKA"; age = 21; birthday = "1997 1-22"; blood_type = "A"; };
  { name = "NISHINO NANASE"; age = 23; birthday = "1994 5-25"; blood_type = "O"; };
  { name = "SAITO ASUKA"; age = 19; birthday = "1998 8-10"; blood_type = "O"; };
  { name = "SHIRAISHI MAI"; age = 25; birthday = "1992 8-20"; blood_type = "A"; };
]
