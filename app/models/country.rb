class Country < ActiveHash::Base
  self.data = [
      {id: 1, country: 'アイスランド'}, 
      {id: 2, country: 'アイルランド'}, 
      {id: 3, country: 'アゼルバイジャン'},
      {id: 4, country: 'アフガニスタン'}, 
      {id: 5, country: 'アメリカ合衆国'}, 
      {id: 6, country: 'アラブ首長国連邦'},
      {id: 7, country: 'アルジェリア'}, 
      {id: 8, country: 'アルゼンチン'}, 
      {id: 9, country: 'アルバニア'},
      {id: 10, country: 'アルメニア'}, 
      {id: 11, country: 'アンゴラ'}, 
      {id: 12, country: 'アンティグア・バーブーダ'},
      {id: 13, country: 'アンドラ'}, 
      {id: 14, country: 'イエメン'}, 
      {id: 15, country: 'イギリス'},
      {id: 16, country: 'イスラエル'}, 
      {id: 17, country: 'イタリア'}, 
      {id: 18, country: 'イラク'},
      {id: 19, country: 'イラン'}, 
      {id: 20, country: 'インド'}, 
      {id: 21, country: 'インドネシア'},
      {id: 22, country: 'ウガンダ'}, 
      {id: 23, country: 'ウクライナ'}, 
      {id: 24, country: 'ウズベキスタン'},
      {id: 25, country: 'ウルグアイ'}, 
      {id: 26, country: 'エクアドル'}, 
      {id: 27, country: 'エジプト'},
      {id: 28, country: 'エストニア'}, 
      {id: 29, country: 'エチオピア'}, 
      {id: 30, country: 'エリトリア'},
      {id: 31, country: 'エルサルバドル'}, 
      {id: 32, country: 'オーストラリア'}, 
      {id: 33, country: 'オーストリア'},
      {id: 34, country: 'オマーン'}, 
      {id: 35, country: 'オランダ'}, 
      {id: 36, country: 'ガイアナ'},
      {id: 37, country: 'カザフスタン'}, 
      {id: 38, country: 'カタール'}, 
      {id: 39, country: 'ガーナ'},
      {id: 40, country: 'カナダ'}, 
      {id: 41, country: 'カーボベルデ'}, 
      {id: 42, country: 'ガボン'},
      {id: 43, country: 'カメルーン'}, 
      {id: 44, country: '韓国'}, 
      {id: 45, country: 'ガンビア'},
      {id: 46, country: 'カンボジア'}, 
      {id: 48, country: '北朝鮮'}, 
      {id: 49, country: '北マケドニア'}, 
      {id: 50, country: 'ギニア'}, 
      {id: 51, country: 'ギニアビサウ'}, 
      {id: 52, country: 'キプロス'}, 
      {id: 53, country: 'キューバ'}, 
      {id: 54, country: 'ギリシャ'}, 
      {id: 55, country: 'キリバス'}, 
      {id: 56, country: 'キルギス共和国'}, 
      {id: 57, country: 'グアテマラ'}, 
      {id: 58, country: 'クウェート'}, 
      {id: 59, country: 'クック諸島'}, 
      {id: 60, country: 'グルジア'}, 
      {id: 61, country: 'グレナダ'}, 
      {id: 62, country: 'クロアチア共和国'}, 
      {id: 63, country: 'ケニア'}, 
      {id: 64, country: 'コスタリカ'}, 
      {id: 65, country: 'コソボ共和国'}, 
      {id: 66, country: 'コートジボワール'}, 
      {id: 67, country: 'コモロ連合'}, 
      {id: 68, country: 'コロンビア'}, 
      {id: 70, country: 'コンゴ共和国'}, 
      {id: 71, country: 'コンゴ民主共和国'}, 
      {id: 72, country: 'サウジアラビア'}, 
      {id: 73, country: 'サモア'}, 
      {id: 74, country: 'サントメ・プリンシペ'}, 
      {id: 75, country: 'ザンビア'}, 
      {id: 76, country: 'サンマリノ'}, 
      {id: 77, country: 'シエラレオネ'}, 
      {id: 78, country: 'ジブチ'}, 
      {id: 79, country: 'ジャマイカ'}, 
      {id: 80, country: 'シリア'}, 
      {id: 81, country: 'シンガポール'}, 
      {id: 82, country: 'ジンバブエ'}, 
      {id: 83, country: 'スイス'}, 
      {id: 84, country: 'スウェーデン'}, 
      {id: 85, country: 'スーダン'}, 
      {id: 86, country: 'スペイン'}, 
      {id: 87, country: 'スリナム'}, 
      {id: 88, country: 'スリランカ'}, 
      {id: 89, country: 'スロバキア'}, 
      {id: 90, country: 'スロベニア'}, 
      {id: 91, country: 'スワジランド'}, 
      {id: 92, country: '赤道ギニア'}, 
      {id: 93, country: 'セイシェル'}, 
      {id: 94, country: 'セネガル'}, 
      {id: 95, country: 'セルビア共和国'}, 
      {id: 96, country: 'セントビンセント・グレナディーン諸島'}, 
      {id: 97, country: 'セントクリストファー・ネイビス'}, 
      {id: 98, country: 'セントルシア'}, 
      {id: 99, country: 'ソマリア'}, 
      {id: 100, country: 'ソロモン諸島'}, 
      {id: 101, country: 'タイ'}, 
      {id: 102, country: 'タジキスタン'}, 
      {id: 103, country: 'タンザニア'}, 
      {id: 104, country: 'チェコ'}, 
      {id: 105, country: 'チャド'}, 
      {id: 106, country: '中央アフリカ'}, 
      {id: 107, country: '中国'}, 
      {id: 108, country: 'チュニジア'}, 
      {id: 109, country: 'チリ'}, 
      {id: 110, country: 'ツバル'}, 
      {id: 111, country: 'デンマーク'}, 
      {id: 112, country: 'ドイツ'}, 
      {id: 113, country: 'トーゴ'}, 
      {id: 114, country: 'ドミニカ'}, 
      {id: 115, country: 'ドミニカ共和国'}, 
      {id: 116, country: 'トリニダード・トバゴ'}, 
      {id: 117, country: 'トルクメニスタン'}, 
      {id: 118, country: 'トルコ'}, 
      {id: 119, country: 'トンガ'}, 
      {id: 120, country: 'ナイジェリア'}, 
      {id: 121, country: 'ナウル'}, 
      {id: 122, country: 'ナミビア'}, 
      {id: 123, country: 'ニウエ'}, 
      {id: 124, country: 'ニカラグア'}, 
      {id: 125, country: 'ニジェール'}, 
      {id: 126, country: '日本'}, 
      {id: 127, country: 'ニュージーランド'}, 
      {id: 128, country: 'ネパール'}, 
      {id: 129, country: 'ノルウェー'}, 
      {id: 130, country: 'ハイチ'}, 
      {id: 131, country: 'パキスタン'}, 
      {id: 132, country: 'バチカン市国'}, 
      {id: 133, country: 'パナマ'}, 
      {id: 134, country: 'バヌアツ'}, 
      {id: 135, country: 'バハマ'}, 
      {id: 136, country: 'バーレーン王国'}, 
      {id: 137, country: 'パプアニューギニア'}, 
      {id: 138, country: 'パラオ'}, 
      {id: 139, country: 'パラグアイ'}, 
      {id: 140, country: 'ハンガリー'}, 
      {id: 141, country: 'バングラデシュ'}, 
      {id: 142, country: '東ティモール'}, 
      {id: 143, country: 'フィジー'}, 
      {id: 144, country: 'フィリピン'}, 
      {id: 145, country: 'フィンランド'}, 
      {id: 146, country: 'ブータン'}, 
      {id: 147, country: 'ブラジル'}, 
      {id: 148, country: 'フランス'}, 
      {id: 149, country: 'ブルガリア'}, 
      {id: 150, country: 'ブルキナファソ'}, 
      {id: 151, country: 'ブルネイ'}, 
      {id: 152, country: 'ブルンジ'}, 
      {id: 153, country: 'ベトナム'}, 
      {id: 154, country: 'ベナン'}, 
      {id: 155, country: 'ベネズエラ'}, 
      {id: 156, country: 'ベラルーシ'}, 
      {id: 157, country: 'ベリーズ'}, 
      {id: 158, country: 'ペルー'}, 
      {id: 159, country: 'ベルギー'}, 
      {id: 160, country: 'ボスニア・ヘルツェゴヴィナ'}, 
      {id: 161, country: 'ボツワナ'}, 
      {id: 162, country: 'ポーランド'}, 
      {id: 163, country: 'ボリビア'}, 
      {id: 164, country: 'ポルトガル'}, 
      {id: 165, country: 'ホンジュラス'}, 
      {id: 166, country: 'マーシャル諸島'}, 
      {id: 167, country: 'マダガスカル'}, 
      {id: 168, country: 'マラウィ'}, 
      {id: 169, country: 'マリ'}, 
      {id: 170, country: 'マルタ'}, 
      {id: 171, country: 'マレーシア'}, 
      {id: 172, country: 'ミクロネシア'}, 
      {id: 173, country: '南アフリカ'}, 
      {id: 174, country: '南スーダン'}, 
      {id: 175, country: 'ミャンマー'}, 
      {id: 176, country: 'メキシコ'}, 
      {id: 177, country: 'モザンビーク'}, 
      {id: 178, country: 'モナコ'}, 
      {id: 179, country: 'モーリシャス'}, 
      {id: 180, country: 'モーリタニア'}, 
      {id: 181, country: 'モルディブ'}, 
      {id: 182, country: 'モルドバ'}, 
      {id: 183, country: 'モロッコ'}, 
      {id: 184, country: 'モンゴル'}, 
      {id: 185, country: 'モンテネグロ共和国'}, 
      {id: 186, country: 'ヨルダン'}, 
      {id: 187, country: 'ラオス'}, 
      {id: 188, country: 'ラトビア'}, 
      {id: 189, country: 'リトアニア'}, 
      {id: 190, country: 'リビア'}, 
      {id: 191, country: 'リベリア'}, 
      {id: 192, country: 'リヒテンシュタイン'}, 
      {id: 193, country: 'ルクセンブルク'}, 
      {id: 194, country: 'ルーマニア'}, 
      {id: 195, country: 'ルワンダ'}, 
      {id: 196, country: 'レソト王国'}, 
      {id: 197, country: 'レバノン'}, 
      {id: 198, country: 'ロシア'} 

  ]

  include ActiveHash::Associations
  has_many :posts

end