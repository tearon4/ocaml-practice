(* 8-5 駅名の情報を格納するレコード型を宣言せよ *)
type ekimei_t = {
  kanji  : string;
  kana   : string;
  romaji : string;
  route  : string;
}

(* hyoji : ekimei_t -> string *)
let hyoji ekimei_t = match ekimei_t with {kanji = kanji; kana = kana; romaji = romaji; route = route} 
  -> route ^ ", " ^ kanji ^ "(" ^ kana ^ ")"

let test = hyoji {kanji = "茗荷谷"; kana = "みょうがだに"; romaji = "myogadani"; route = "丸ノ内線"} = "丸ノ内線, 茗荷谷(みょうがだに)"