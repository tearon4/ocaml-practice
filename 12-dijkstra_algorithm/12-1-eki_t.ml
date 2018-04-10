type ekimei_t = { 
  kanji   : string; (* 駅名 *) 
  kana    : string; (* 読み *) 
  romaji  : string; (* ローマ字 *) 
  shozoku : string; (* 所属線名 *) 
} 
 
type ekikan_t = { 
  kiten  : string; (* 起点 *) 
  shuten : string; (* 終点 *) 
  keiyu  : string; (* 経由線名 *) 
  kyori  : float;  (* 距離 *) 
  jikan  : int;    (* 時間 *) 
} 

let dummy_ekimei_t_list = [
  {kanji="西日暮里"; kana="にしにっぽり"; romaji="nishinippori"; shozoku="千代田線"}; 
  {kanji="北千住"; kana="きたせんじゅ"; romaji="kitasenjyu"; shozoku="千代田線"}; 
  {kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="丸ノ内線"}; 
  {kanji="北千住"; kana="きたせんじゅ"; romaji="kitasenju"; shozoku="日比谷線"}; 
  {kanji="東池袋"; kana="ひがしいけぶくろ"; romaji="higasiikebukuro"; shozoku="有楽町線"}; 
  {kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="有楽町線"}; 
]

(* 12-1 *)

type eki_t = {
  name : string;            (* 駅名 *)
  min_kyori : float;        (* 最短距離 *)
  temae_list : string list; (* 駅名リスト *)
}
(* 【メモ】 リストの型は要素の型を使って 'a list と書かれる *)

(* 12-2 *)

(* 目的: ekimei_t型のリストを受け取ったらその駅名を使ってeki_t型のリストを作る関数 *)
(* make_eki_list : ekimei_t list -> eki_t list *)
let rec make_eki_list lst = match lst with
  [] -> []
  | {kanji = kanji; kana = kana; romaji = romaji; shozoku = shozoku} :: rest ->
    {name = kanji; min_kyori = infinity; temae_list = []} :: (make_eki_list rest)

let test0 = make_eki_list [] = []
let test1 = make_eki_list dummy_ekimei_t_list = [
  {name="西日暮里"; min_kyori=infinity; temae_list = []}; 
  {name="北千住"; min_kyori=infinity; temae_list = []}; 
  {name="池袋"; min_kyori=infinity; temae_list = []}; 
  {name="北千住"; min_kyori=infinity; temae_list = []}; 
  {name="東池袋"; min_kyori=infinity; temae_list = []}; 
  {name="池袋";min_kyori=infinity; temae_list = []}; 
]

(* 12-3 *)
(* 目的: eki_t型のリスト(eki_t_list)と起点を受け取ったら起点のみ初期化されたeki_t型のリストを返す *)
(* shokika: ekimei_t list -> string -> ekimei_t list *)
let rec shokika lst ktn = match lst with
  [] -> []
  | ({name = kanji; min_kyori = min_kyori; temae_list = temae_list} as first) :: rest ->
    if ( kanji = ktn ) 
      then {name = ktn; min_kyori = 0.0; temae_list =ktn::[]} :: (shokika rest ktn)
      else first :: (shokika rest ktn)

let test2 = shokika [] "hoge" = []
let test3 = shokika (make_eki_list dummy_ekimei_t_list) "北千住" = [
  {name="西日暮里"; min_kyori=infinity; temae_list = []}; 
  {name="北千住"; min_kyori=0.0; temae_list = ["北千住"]}; 
  {name="池袋"; min_kyori=infinity; temae_list = []}; 
  {name="北千住"; min_kyori=0.0; temae_list = ["北千住"]}; 
  {name="東池袋"; min_kyori=infinity; temae_list = []}; 
  {name="池袋";min_kyori=infinity; temae_list = []};
]

(* 12-4 *)

(* 目的: あらかじめ昇順に並んでいるekimei_t型データを持つリスト lst と, *)
(* ekimei_t型データ1つ n を受け取って n を含めた昇順のekimei_t型データリストを返す *)
(* insert : int list -> int -> int list *)
let rec insert lst n = match lst with 
  [] -> n::[]
  | ({kanji = kanji_1; kana = kana_1; romaji = romaji_1; shozoku = shozoku_1} as first) :: rest ->
    match n with
    {kanji = kanji_2; kana = kana_2; romaji = romaji_2; shozoku = shozoku_2} ->
      if ( kana_1 = kana_2 )
        then insert rest n
        else if ( kana_1 < kana_2 )
          then first :: (insert rest n)
          else n :: lst

(* 目的: ekimei_t型のリストを受け取ったらひらがな順にソートして重複している駅を取り除いたekimei_t型のリストを返す *)
(* seiretsu: ekimei_t list -> ekimei_t list *)
let rec seiretsu lst = match lst with
  [] -> []
  | first :: rest -> insert (seiretsu rest) first

let test4 = seiretsu [] = [] 
let test5 = seiretsu dummy_ekimei_t_list = [ 
  {kanji = "池袋"; kana = "いけぶくろ"; romaji = "ikebukuro";shozoku = "丸ノ内線"};
  {kanji = "北千住"; kana = "きたせんじゅ"; romaji = "kitasenjyu";shozoku = "千代田線"};
  {kanji = "西日暮里"; kana = "にしにっぽり";romaji = "nishinippori"; shozoku = "千代田線"};
  {kanji = "東池袋"; kana = "ひがしいけぶくろ";romaji = "higasiikebukuro"; shozoku = "有楽町線"}
]
