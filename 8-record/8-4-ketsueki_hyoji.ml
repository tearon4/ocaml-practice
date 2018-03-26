type person_t = {
  name : string;
  height : float;
  birthday : string;
  blood_type : string;
}

(* 8-4 8-3のperson_tを再利用して血液型に関する定型文を返す *)
(* ketsueki_hyoji : person_t -> string *)
let ketsueki_hyoji person_t = match person_t with 
  { name = n; height = h; birthday = bd; blood_type = bt} ->
  n ^ "さんの血液型は" ^ bt ^ "型です。"

let nobita = {
  name = "野比のび太";
  height = 129.3;
  birthday = "08-07";
  blood_type = "A";
}

let test = ketsueki_hyoji nobita = "野比のび太さんの血液型はA型です。"