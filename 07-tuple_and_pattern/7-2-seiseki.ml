(* Purpose: 名前と成績の組みを受け取ったら定型文を返す *)
(* goukei_to_heikin : string * string -> string *)
let seiseki datas = match datas with 
    (name, score) -> name ^ "さんの評価は" ^ score ^ "です。"

(* Test *)
let test1 = seiseki ("渡辺", "A") = "渡辺さんの評価はAです。"
let test2 = seiseki ("鈴木", "B") = "鈴木さんの評価はBです。"
let test3 = seiseki ("内田", "C") = "内田さんの評価はCです。"
