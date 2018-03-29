(* 8-1 本に関する情報を格納するレコード型 boot_tを宣言せよ *)
type book_t = {
  title : string;
  author : string;
  publisher : string;
  price : int;
  isbn : int;
}
(* example *)
let book1 = {
  title = "白夜行";
  author = "東野圭吾";
  publisher = "集英社";
  price = 1080;
  isbn = 9784087744002;
}

(* 8-2 お小遣い帳の情報を格納するレコード型 okozukai_tを宣言せよ *)
type okozukai_t = {
  name : string;
  price : int;
  place : string;
  date : string;
}
(* example *)
let purchase_history1 = {
  name = "風の歌を聴け";
  price = 421;
  place = "紀伊国屋";
  date = "2018 03-01";
}

(* 8-3 個人の情報を格納するレコード型 person_tを宣言せよ *)
type person_t = {
  name : string;
  height : float;
  birthday : string;
  blood_type : string;
}
let nobita = {
  name = "野比のび太";
  height = 129.3;
  birthday = "08-07";
  blood_type = "A";
}