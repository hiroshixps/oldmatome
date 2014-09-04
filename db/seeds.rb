# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
LCategory.create(:l_category => 'パソコン')
LCategory.create(:l_category => 'カメラ')
LCategory.create(:l_category => 'AV・情報家電')
LCategory.create(:l_category => '携帯電話・スマートフォン')
LCategory.create(:l_category => '調理・生活家電')
LCategory.create(:l_category => '健康・美容家電')
LCategory.create(:l_category => '照明器具・天井照明')
LCategory.create(:l_category => '季節家電')

MCategory.create(:m_category => 'カメラ本体', :l_id =>2)
MCategory.create(:m_category => 'カメラアクセサリー', :l_id =>2)
MCategory.create(:m_category => 'カメラ関連製品', :l_id =>2)
MCategory.create(:m_category => 'フラッシュメモリー', :l_id =>2)
MCategory.create(:m_category => '映像関連', :l_id =>3)
MCategory.create(:m_category => 'オーディオ関連', :l_id =>3)
MCategory.create(:m_category => '情報家電', :l_id =>3)
MCategory.create(:m_category => 'キッチン家電', :l_id =>5)
MCategory.create(:m_category => '生活家電', :l_id =>5)
MCategory.create(:m_category => '健康・美容家電', :l_id =>6)
MCategory.create(:m_category => '照明器具・天井照明', :l_id =>7)
MCategory.create(:m_category => '季節家電', :l_id =>8)
MCategory.create(:m_category => 'スマートフォン ', :l_id =>4)
MCategory.create(:m_category => 'モバイルインターネット ', :l_id =>4)
MCategory.create(:m_category => '携帯電話・PHS ', :l_id =>4)
MCategory.create(:m_category => '周辺機器', :l_id =>4)
MCategory.create(:m_category => 'パソコン本体', :l_id =>1)
MCategory.create(:m_category => 'パソコン周辺機器', :l_id =>1)
MCategory.create(:m_category => 'パソコンパーツ', :l_id =>1)
MCategory.create(:m_category => 'ドライブ', :l_id =>1)
MCategory.create(:m_category => 'ストレージ', :l_id =>1)
MCategory.create(:m_category => 'フラッシュメモリー', :l_id =>1)
MCategory.create(:m_category => 'ネットワーク機器', :l_id =>1)
MCategory.create(:m_category => 'パソコンソフト', :l_id =>1)

SCategory.create(:s_category => 'デジタルカメラ', :l_id =>2, :m_id =>1)
SCategory.create(:s_category => 'デジタル一眼カメラ', :l_id =>2, :m_id =>1)
SCategory.create(:s_category => 'ビデオカメラ', :l_id =>2, :m_id =>1)
SCategory.create(:s_category => '一眼レフカメラ(フィルム)', :l_id =>2, :m_id =>1)
SCategory.create(:s_category => 'WEBカメラ', :l_id =>2, :m_id =>1)
SCategory.create(:s_category => 'ネットワークカメラ', :l_id =>2, :m_id =>1)
SCategory.create(:s_category => 'インスタントカメラ', :l_id =>2, :m_id =>1)
SCategory.create(:s_category => 'フィルムカメラ', :l_id =>2, :m_id =>1)
SCategory.create(:s_category => 'レンズ', :l_id =>2, :m_id =>2)
SCategory.create(:s_category => 'コンバージョンレンズ・アダプタ', :l_id =>2, :m_id =>2)
SCategory.create(:s_category => '三脚・一脚', :l_id =>2, :m_id =>2)
SCategory.create(:s_category => '雲台', :l_id =>2, :m_id =>2)
SCategory.create(:s_category => 'カメラ バッテリー', :l_id =>2, :m_id =>2)
SCategory.create(:s_category => '充電池・充電器', :l_id =>2, :m_id =>2)
SCategory.create(:s_category => 'カメラ用バッテリー充電器', :l_id =>2, :m_id =>2)
SCategory.create(:s_category => 'バッテリーグリップ・ホルダー', :l_id =>2, :m_id =>2)
SCategory.create(:s_category => 'フラッシュ', :l_id =>2, :m_id =>2)
SCategory.create(:s_category => 'レンズフィルター', :l_id =>2, :m_id =>2)
SCategory.create(:s_category => 'ファインダーアクセサリー', :l_id =>2, :m_id =>2)
SCategory.create(:s_category => 'カメラ用リモコン', :l_id =>2, :m_id =>2)
SCategory.create(:s_category => '露出計・色温度計', :l_id =>2, :m_id =>2)
SCategory.create(:s_category => '防水ケース', :l_id =>2, :m_id =>2)
SCategory.create(:s_category => 'カメラバッグ', :l_id =>2, :m_id =>2)
SCategory.create(:s_category => 'カメラケース・ポーチ', :l_id =>2, :m_id =>2)
SCategory.create(:s_category => '液晶保護フィルム', :l_id =>2, :m_id =>2)
SCategory.create(:s_category => 'カメラストラップ', :l_id =>2, :m_id =>2)
SCategory.create(:s_category => 'その他カメラ関連製品', :l_id =>2, :m_id =>2)
SCategory.create(:s_category => 'デジタルフォトフレーム', :l_id =>2, :m_id =>3)
SCategory.create(:s_category => '双眼鏡・単眼鏡', :l_id =>2, :m_id =>3)
SCategory.create(:s_category => '防湿庫', :l_id =>2, :m_id =>3)
SCategory.create(:s_category => '天体望遠鏡', :l_id =>2, :m_id =>3)
SCategory.create(:s_category => 'フィールドスコープ', :l_id =>2, :m_id =>3)
SCategory.create(:s_category => 'フォトストレージ', :l_id =>2, :m_id =>3)
SCategory.create(:s_category => 'カードリーダー', :l_id =>2, :m_id =>3)
SCategory.create(:s_category => 'フィルムスキャナ', :l_id =>2, :m_id =>3)
SCategory.create(:s_category => 'プリンタ', :l_id =>2, :m_id =>3)
SCategory.create(:s_category => '画像編集ソフト', :l_id =>2, :m_id =>3)
SCategory.create(:s_category => 'カメラフィルム', :l_id =>2, :m_id =>3)
SCategory.create(:s_category => '写真用紙', :l_id =>2, :m_id =>3)
SCategory.create(:s_category => 'カメラクリーニング品', :l_id =>2, :m_id =>3)
SCategory.create(:s_category => 'レフ板', :l_id =>2, :m_id =>3)
SCategory.create(:s_category => 'MiniDVテープ', :l_id =>2, :m_id =>3)
SCategory.create(:s_category => '写真現像用品', :l_id =>2, :m_id =>3)
SCategory.create(:s_category => 'SDメモリーカード', :l_id =>2, :m_id =>4)
SCategory.create(:s_category => 'XQDメモリーカード', :l_id =>2, :m_id =>4)
SCategory.create(:s_category => 'メモリースティック', :l_id =>2, :m_id =>4)
SCategory.create(:s_category => 'コンパクトフラッシュ', :l_id =>2, :m_id =>4)
SCategory.create(:s_category => 'xDピクチャーカード', :l_id =>2, :m_id =>4)
SCategory.create(:s_category => 'スマートメディア', :l_id =>2, :m_id =>4)
SCategory.create(:s_category => 'メモリーカードケース', :l_id =>2, :m_id =>4)
SCategory.create(:s_category => '液晶テレビ', :l_id =>3, :m_id =>5)
SCategory.create(:s_category => 'プラズマテレビ', :l_id =>3, :m_id =>5)
SCategory.create(:s_category => '液晶保護フィルム', :l_id =>3, :m_id =>5)
SCategory.create(:s_category => 'テレビリモコン', :l_id =>3, :m_id =>5)
SCategory.create(:s_category => 'テレビオプション', :l_id =>3, :m_id =>5)
SCategory.create(:s_category => '外付け ハードディスク', :l_id =>3, :m_id =>5)
SCategory.create(:s_category => 'ブルーレイ・DVDレコーダー', :l_id =>3, :m_id =>5)
SCategory.create(:s_category => 'DVDプレーヤー', :l_id =>3, :m_id =>5)
SCategory.create(:s_category => 'ブルーレイプレーヤー', :l_id =>3, :m_id =>5)
SCategory.create(:s_category => 'ポータブルDVDプレーヤー', :l_id =>3, :m_id =>5)
SCategory.create(:s_category => '携帯テレビ・ポータブルテレビ', :l_id =>3, :m_id =>5)
SCategory.create(:s_category => 'モニタ・ディスプレイ', :l_id =>3, :m_id =>5)
SCategory.create(:s_category => 'デジタルテレビチューナー', :l_id =>3, :m_id =>5)
SCategory.create(:s_category => '地デジアンテナ', :l_id =>3, :m_id =>5)
SCategory.create(:s_category => 'BS・CSアンテナ', :l_id =>3, :m_id =>5)
SCategory.create(:s_category => 'テレビブースター', :l_id =>3, :m_id =>5)
SCategory.create(:s_category => 'AVセレクター', :l_id =>3, :m_id =>5)
SCategory.create(:s_category => 'プロジェクタ', :l_id =>3, :m_id =>5)
SCategory.create(:s_category => 'プロジェクタスクリーン', :l_id =>3, :m_id =>5)
SCategory.create(:s_category => 'HDDレコーダー', :l_id =>3, :m_id =>5)
SCategory.create(:s_category => 'ビデオデッキ', :l_id =>3, :m_id =>5)
SCategory.create(:s_category => 'リアプロジェクションテレビ', :l_id =>3, :m_id =>5)
SCategory.create(:s_category => 'テレビ', :l_id =>3, :m_id =>5)
SCategory.create(:s_category => 'MP3プレーヤー', :l_id =>3, :m_id =>6)
SCategory.create(:s_category => 'MP3プレーヤーアクセサリ', :l_id =>3, :m_id =>6)
SCategory.create(:s_category => 'ヘッドホン・イヤホン', :l_id =>3, :m_id =>6)
SCategory.create(:s_category => 'ヘッドセット', :l_id =>3, :m_id =>6)
SCategory.create(:s_category => 'ヘッドホンアンプ・DAC', :l_id =>3, :m_id =>6)
SCategory.create(:s_category => 'ホームシアター スピーカー', :l_id =>3, :m_id =>6)
SCategory.create(:s_category => 'スピーカー', :l_id =>3, :m_id =>6)
SCategory.create(:s_category => 'コンポ', :l_id =>3, :m_id =>6)
SCategory.create(:s_category => 'AVアンプ', :l_id =>3, :m_id =>6)
SCategory.create(:s_category => 'プリメインアンプ', :l_id =>3, :m_id =>6)
SCategory.create(:s_category => 'サウンドカード・ユニット', :l_id =>3, :m_id =>6)
SCategory.create(:s_category => 'CDプレーヤー', :l_id =>3, :m_id =>6)
SCategory.create(:s_category => 'ポータブルCD', :l_id =>3, :m_id =>6)
SCategory.create(:s_category => 'ポータブルMD', :l_id =>3, :m_id =>6)
SCategory.create(:s_category => 'ポータブルAVプレーヤー', :l_id =>3, :m_id =>6)
SCategory.create(:s_category => 'ラジカセ', :l_id =>3, :m_id =>6)
SCategory.create(:s_category => 'AVケーブル', :l_id =>3, :m_id =>6)
SCategory.create(:s_category => 'HDMIケーブル', :l_id =>3, :m_id =>6)
SCategory.create(:s_category => 'スピーカーアクセサリ', :l_id =>3, :m_id =>6)
SCategory.create(:s_category => 'レコード針', :l_id =>3, :m_id =>6)
SCategory.create(:s_category => 'MD(ミニディスク)', :l_id =>3, :m_id =>6)
SCategory.create(:s_category => 'カセットテープ', :l_id =>3, :m_id =>6)
SCategory.create(:s_category => 'VHSテープ', :l_id =>3, :m_id =>6)
SCategory.create(:s_category => 'その他のAVアクセサリ', :l_id =>3, :m_id =>6)
SCategory.create(:s_category => 'その他オーディオ機器', :l_id =>3, :m_id =>6)
SCategory.create(:s_category => '電子辞書', :l_id =>3, :m_id =>7)
SCategory.create(:s_category => 'ICレコーダー', :l_id =>3, :m_id =>7)
SCategory.create(:s_category => 'FAX', :l_id =>3, :m_id =>7)
SCategory.create(:s_category => '電話機', :l_id =>3, :m_id =>7)
SCategory.create(:s_category => 'テレビドアホン・インターホン', :l_id =>3, :m_id =>7)
SCategory.create(:s_category => 'ラジオ', :l_id =>3, :m_id =>7)
SCategory.create(:s_category => '電子メモ帳', :l_id =>3, :m_id =>7)
SCategory.create(:s_category => 'ラベルライター', :l_id =>3, :m_id =>7)
SCategory.create(:s_category => 'ラベルライターテープ', :l_id =>3, :m_id =>7)
SCategory.create(:s_category => 'ラミネーター', :l_id =>3, :m_id =>7)
SCategory.create(:s_category => '家庭用プラネタリウム', :l_id =>3, :m_id =>7)
SCategory.create(:s_category => '家庭用ゲーム機', :l_id =>3, :m_id =>7)
SCategory.create(:s_category => '炊飯器', :l_id =>5, :m_id =>8)
SCategory.create(:s_category => '電子レンジ・オーブンレンジ', :l_id =>5, :m_id =>8)
SCategory.create(:s_category => '冷蔵庫・冷凍庫', :l_id =>5, :m_id =>8)
SCategory.create(:s_category => '電気ポット・電気ケトル', :l_id =>5, :m_id =>8)
SCategory.create(:s_category => 'ホームベーカリー', :l_id =>5, :m_id =>8)
SCategory.create(:s_category => 'コーヒーメーカー', :l_id =>5, :m_id =>8)
SCategory.create(:s_category => '食器洗い機', :l_id =>5, :m_id =>8)
SCategory.create(:s_category => '食器乾燥機', :l_id =>5, :m_id =>8)
SCategory.create(:s_category => 'ミキサー・フードプロセッサー', :l_id =>5, :m_id =>8)
SCategory.create(:s_category => 'トースター', :l_id =>5, :m_id =>8)
SCategory.create(:s_category => 'IH クッキングヒーター', :l_id =>5, :m_id =>8)
SCategory.create(:s_category => 'ガスコンロ', :l_id =>5, :m_id =>8)
SCategory.create(:s_category => 'ホットプレート', :l_id =>5, :m_id =>8)
SCategory.create(:s_category => '精米機', :l_id =>5, :m_id =>8)
SCategory.create(:s_category => 'ワインセラー', :l_id =>5, :m_id =>8)
SCategory.create(:s_category => '生ごみ処理機', :l_id =>5, :m_id =>8)
SCategory.create(:s_category => 'デジタルクッキングスケール', :l_id =>5, :m_id =>8)
SCategory.create(:s_category => '圧力鍋', :l_id =>5, :m_id =>8)
SCategory.create(:s_category => 'フィッシュロースター', :l_id =>5, :m_id =>8)
SCategory.create(:s_category => '餅つき機', :l_id =>5, :m_id =>8)
SCategory.create(:s_category => '電子レンジ用調理器具', :l_id =>5, :m_id =>8)
SCategory.create(:s_category => 'その他調理家電', :l_id =>5, :m_id =>8)
SCategory.create(:s_category => '掃除機', :l_id =>5, :m_id =>9)
SCategory.create(:s_category => '洗濯機', :l_id =>5, :m_id =>9)
SCategory.create(:s_category => '充電池・充電器', :l_id =>5, :m_id =>9)
SCategory.create(:s_category => 'ミシン', :l_id =>5, :m_id =>9)
SCategory.create(:s_category => '火災警報器', :l_id =>5, :m_id =>9)
SCategory.create(:s_category => 'アイロン', :l_id =>5, :m_id =>9)
SCategory.create(:s_category => '布団乾燥機', :l_id =>5, :m_id =>9)
SCategory.create(:s_category => '衣類乾燥機', :l_id =>5, :m_id =>9)
SCategory.create(:s_category => 'ズボンプレッサー', :l_id =>5, :m_id =>9)
SCategory.create(:s_category => 'シュレッダー', :l_id =>5, :m_id =>9)
SCategory.create(:s_category => 'OAタップ', :l_id =>5, :m_id =>9)
SCategory.create(:s_category => '変圧器', :l_id =>5, :m_id =>9)
SCategory.create(:s_category => '電動自転車', :l_id =>5, :m_id =>9)
SCategory.create(:s_category => '空気清浄機', :l_id =>6, :m_id =>10)
SCategory.create(:s_category => '空調機器フィルター', :l_id =>6, :m_id =>10)
SCategory.create(:s_category => 'シェーバー', :l_id =>6, :m_id =>10)
SCategory.create(:s_category => 'シェーバー替え刃', :l_id =>6, :m_id =>10)
SCategory.create(:s_category => '美容器具', :l_id =>6, :m_id =>10)
SCategory.create(:s_category => 'ドライヤー・ヘアアイロン', :l_id =>6, :m_id =>10)
SCategory.create(:s_category => '体脂肪計・体重計', :l_id =>6, :m_id =>10)
SCategory.create(:s_category => '温水洗浄便座', :l_id =>6, :m_id =>10)
SCategory.create(:s_category => 'マッサージ器', :l_id =>6, :m_id =>10)
SCategory.create(:s_category => 'マッサージチェア', :l_id =>6, :m_id =>10)
SCategory.create(:s_category => '血圧計', :l_id =>6, :m_id =>10)
SCategory.create(:s_category => '活動量計', :l_id =>6, :m_id =>10)
SCategory.create(:s_category => '歩数計', :l_id =>6, :m_id =>10)
SCategory.create(:s_category => '体温計', :l_id =>6, :m_id =>10)
SCategory.create(:s_category => '低周波治療器・電気治療器', :l_id =>6, :m_id =>10)
SCategory.create(:s_category => 'その他健康器具・医療機器', :l_id =>6, :m_id =>10)
SCategory.create(:s_category => '放射線測定器・線量計', :l_id =>6, :m_id =>10)
SCategory.create(:s_category => '電動歯ブラシ', :l_id =>6, :m_id =>10)
SCategory.create(:s_category => '電動歯ブラシ用替えブラシ', :l_id =>6, :m_id =>10)
SCategory.create(:s_category => 'ウォーターサーバー', :l_id =>6, :m_id =>10)
SCategory.create(:s_category => '浄水器・整水器', :l_id =>6, :m_id =>10)
SCategory.create(:s_category => '浄水器カートリッジ', :l_id =>6, :m_id =>10)
SCategory.create(:s_category => 'フィットネス機器', :l_id =>6, :m_id =>10)
SCategory.create(:s_category => 'メンズグルーミング', :l_id =>6, :m_id =>10)
SCategory.create(:s_category => '女性用シェーバー', :l_id =>6, :m_id =>10)
SCategory.create(:s_category => 'シーリングライト', :l_id =>7, :m_id =>11)
SCategory.create(:s_category => 'シーリングファンライト', :l_id =>7, :m_id =>11)
SCategory.create(:s_category => 'ペンダントライト', :l_id =>7, :m_id =>11)
SCategory.create(:s_category => 'シャンデリア', :l_id =>7, :m_id =>11)
SCategory.create(:s_category => 'LED電球・LED蛍光灯', :l_id =>7, :m_id =>11)
SCategory.create(:s_category => '電球・蛍光灯', :l_id =>7, :m_id =>11)
SCategory.create(:s_category => 'スタンドライト', :l_id =>7, :m_id =>11)
SCategory.create(:s_category => 'ダウンライト', :l_id =>7, :m_id =>11)
SCategory.create(:s_category => 'スポットライト', :l_id =>7, :m_id =>11)
SCategory.create(:s_category => '照明用部品', :l_id =>7, :m_id =>11)
SCategory.create(:s_category => 'ブラケットライト', :l_id =>7, :m_id =>11)
SCategory.create(:s_category => 'キッチンライト', :l_id =>7, :m_id =>11)
SCategory.create(:s_category => 'その他の照明器具・天井照明', :l_id =>7, :m_id =>11)
SCategory.create(:s_category => 'エアコン・クーラー', :l_id =>8, :m_id =>12)
SCategory.create(:s_category => '扇風機・サーキュレーター', :l_id =>8, :m_id =>12)
SCategory.create(:s_category => '除湿機', :l_id =>8, :m_id =>12)
SCategory.create(:s_category => '加湿器', :l_id =>8, :m_id =>12)
SCategory.create(:s_category => 'ヒーター・ストーブ', :l_id =>8, :m_id =>12)
SCategory.create(:s_category => 'ホットカーペット', :l_id =>8, :m_id =>12)
SCategory.create(:s_category => 'こたつ', :l_id =>8, :m_id =>12)
SCategory.create(:s_category => '電気毛布・ひざ掛け', :l_id =>8, :m_id =>12)
SCategory.create(:s_category => 'スマートフォン ', :l_id =>4, :m_id =>13)
SCategory.create(:s_category => 'SIMカード ', :l_id =>4, :m_id =>14)
SCategory.create(:s_category => 'docomo(ドコモ) ', :l_id =>4, :m_id =>15)
SCategory.create(:s_category => 'au ', :l_id =>4, :m_id =>15)
SCategory.create(:s_category => 'SoftBank(ソフトバンク) ', :l_id =>4, :m_id =>15)
SCategory.create(:s_category => 'WILLCOM(ウィルコム) ', :l_id =>4, :m_id =>15)
SCategory.create(:s_category => 'ワイモバイル', :l_id =>4, :m_id =>15)
SCategory.create(:s_category => 'ディズニー・モバイル', :l_id =>4, :m_id =>15)
SCategory.create(:s_category => '携帯電話アクセサリ', :l_id =>4, :m_id =>16)
SCategory.create(:s_category => '液晶保護フィルム', :l_id =>4, :m_id =>16)
SCategory.create(:s_category => 'ワイヤレスディスプレイアダプタ', :l_id =>4, :m_id =>16)
SCategory.create(:s_category => 'オーディオレシーバー・アダプタ', :l_id =>4, :m_id =>16)
SCategory.create(:s_category => 'ノートパソコン', :l_id =>1, :m_id =>17)
SCategory.create(:s_category => 'デスクトップパソコン', :l_id =>1, :m_id =>17)
SCategory.create(:s_category => 'Mac ノート', :l_id =>1, :m_id =>17)
SCategory.create(:s_category => 'Mac デスクトップ', :l_id =>1, :m_id =>17)
SCategory.create(:s_category => 'タブレットPC(端末)・PDA', :l_id =>1, :m_id =>17)
SCategory.create(:s_category => 'BTOパソコン', :l_id =>1, :m_id =>17)
SCategory.create(:s_category => '中古パソコン', :l_id =>1, :m_id =>17)
SCategory.create(:s_category => '液晶モニタ・液晶ディスプレイ', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => '液晶保護フィルム', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'タブレットケース', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'モニターアーム', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'プリンタ', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => '3Dプリンタ', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'プリンタオプション', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'インク', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'トナー', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'スキャナ', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'ラミネーター', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'マウス', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'マウスパッド', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'キーボード', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'テンキー', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'プロジェクタ', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'プロジェクタスクリーン', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'MP3プレーヤー', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'MP3プレーヤーアクセサリ', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'HDDレコーダー', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'ポータブルAVプレーヤー', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'ヘッドセット', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'ヘッドホンアンプ・DAC', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'ペンタブレット', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'デジタルペン', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'USBハブ', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'カードリーダー', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'ICカードリーダー・ライター', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'PCスピーカー', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'PC用テレビチューナー', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'フィルムスキャナ', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'スキャンコンバータ', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'CPU切替器（KVM）', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => '無停電電源装置（UPS）', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'モニタ・ディスプレイ', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'ノートパソコン バッテリー', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'ノートパソコン用クーラー', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => '変圧器', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'LANケーブル', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'USBケーブル', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'コピー用紙・プリンタ用紙', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'パソコンデスク', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'USBグッズ', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'パソコンバッグ・ケース', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'パソコン向けケーブル', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'CD・DVDケース', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'OAクリーナーグッズ', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'パソコン用セキュリティ用品', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'その他のパソコンサプライ品', :l_id =>1, :m_id =>18)
SCategory.create(:s_category => 'メモリー', :l_id =>1, :m_id =>19)
SCategory.create(:s_category => 'ビデオカード', :l_id =>1, :m_id =>19)
SCategory.create(:s_category => 'ビデオキャプチャ', :l_id =>1, :m_id =>19)
SCategory.create(:s_category => 'マザーボード', :l_id =>1, :m_id =>19)
SCategory.create(:s_category => 'CPU', :l_id =>1, :m_id =>19)
SCategory.create(:s_category => 'PCケース', :l_id =>1, :m_id =>19)
SCategory.create(:s_category => 'ケースファン', :l_id =>1, :m_id =>19)
SCategory.create(:s_category => 'ファンコントローラー', :l_id =>1, :m_id =>19)
SCategory.create(:s_category => '電源ユニット', :l_id =>1, :m_id =>19)
SCategory.create(:s_category => 'CPUクーラー', :l_id =>1, :m_id =>19)
SCategory.create(:s_category => 'サウンドカード・ユニット', :l_id =>1, :m_id =>19)
SCategory.create(:s_category => 'インターフェイスカード', :l_id =>1, :m_id =>19)
SCategory.create(:s_category => 'ベアボーン', :l_id =>1, :m_id =>19)
SCategory.create(:s_category => 'ハードディスク ケース', :l_id =>1, :m_id =>19)
SCategory.create(:s_category => 'リムーバブルケース', :l_id =>1, :m_id =>19)
SCategory.create(:s_category => 'DVDドライブ', :l_id =>1, :m_id =>20)
SCategory.create(:s_category => 'ブルーレイドライブ', :l_id =>1, :m_id =>20)
SCategory.create(:s_category => 'CD-Rドライブ', :l_id =>1, :m_id =>20)
SCategory.create(:s_category => 'MOドライブ', :l_id =>1, :m_id =>20)
SCategory.create(:s_category => 'DVDメディア', :l_id =>1, :m_id =>20)
SCategory.create(:s_category => 'ブルーレイディスク・メディア', :l_id =>1, :m_id =>20)
SCategory.create(:s_category => 'CD-Rメディア', :l_id =>1, :m_id =>20)
SCategory.create(:s_category => '外付け ハードディスク', :l_id =>1, :m_id =>21)
SCategory.create(:s_category => 'ハードディスク・HDD(3.5インチ)', :l_id =>1, :m_id =>21)
SCategory.create(:s_category => 'ハードディスク・HDD(2.5インチ)', :l_id =>1, :m_id =>21)
SCategory.create(:s_category => 'ハードディスク・HDD(1.8インチ)', :l_id =>1, :m_id =>21)
SCategory.create(:s_category => 'ハードディスク・HDD(SCSI)', :l_id =>1, :m_id =>21)
SCategory.create(:s_category => 'SSD', :l_id =>1, :m_id =>21)
SCategory.create(:s_category => 'USBメモリー', :l_id =>1, :m_id =>4)
SCategory.create(:s_category => 'SDメモリーカード', :l_id =>1, :m_id =>4)
SCategory.create(:s_category => 'メモリースティック', :l_id =>1, :m_id =>4)
SCategory.create(:s_category => 'コンパクトフラッシュ', :l_id =>1, :m_id =>4)
SCategory.create(:s_category => 'xDピクチャーカード', :l_id =>1, :m_id =>4)
SCategory.create(:s_category => 'スマートメディア', :l_id =>1, :m_id =>4)
SCategory.create(:s_category => '無線LANブロードバンドルーター', :l_id =>1, :m_id =>23)
SCategory.create(:s_category => '有線ブロードバンドルーター', :l_id =>1, :m_id =>23)
SCategory.create(:s_category => 'プリントサーバー', :l_id =>1, :m_id =>23)
SCategory.create(:s_category => 'PLC', :l_id =>1, :m_id =>23)
SCategory.create(:s_category => 'TA', :l_id =>1, :m_id =>23)
SCategory.create(:s_category => 'ネットワークハブ', :l_id =>1, :m_id =>23)
SCategory.create(:s_category => 'Bluetoothアダプタ', :l_id =>1, :m_id =>23)
SCategory.create(:s_category => '有線LANアダプタ', :l_id =>1, :m_id =>23)
SCategory.create(:s_category => '無線LANアダプタ', :l_id =>1, :m_id =>23)
SCategory.create(:s_category => '無線LANアクセスポイント', :l_id =>1, :m_id =>23)
SCategory.create(:s_category => 'ワイヤレスディスプレイアダプタ', :l_id =>1, :m_id =>23)
SCategory.create(:s_category => 'オーディオレシーバー・アダプタ', :l_id =>1, :m_id =>23)
SCategory.create(:s_category => 'その他ネットワーク機器', :l_id =>1, :m_id =>23)
SCategory.create(:s_category => 'OSソフト', :l_id =>1, :m_id =>24)
SCategory.create(:s_category => 'オフィスソフト', :l_id =>1, :m_id =>24)
SCategory.create(:s_category => 'セキュリティソフト', :l_id =>1, :m_id =>24)
SCategory.create(:s_category => '年賀状ソフト・はがきソフト', :l_id =>1, :m_id =>24)
SCategory.create(:s_category => '会計ソフト', :l_id =>1, :m_id =>24)
SCategory.create(:s_category => '画像編集ソフト', :l_id =>1, :m_id =>24)
SCategory.create(:s_category => '動画編集ソフト', :l_id =>1, :m_id =>24)
SCategory.create(:s_category => 'ホームページ作成ソフト', :l_id =>1, :m_id =>24)
SCategory.create(:s_category => 'フォント集', :l_id =>1, :m_id =>24)
SCategory.create(:s_category => '音楽ソフト', :l_id =>1, :m_id =>24)
SCategory.create(:s_category => 'バックアップソフト', :l_id =>1, :m_id =>24)
SCategory.create(:s_category => 'ユーティリティソフト', :l_id =>1, :m_id =>24)
SCategory.create(:s_category => 'ビジネスソフト', :l_id =>1, :m_id =>24)
SCategory.create(:s_category => 'CADソフト', :l_id =>1, :m_id =>24)
SCategory.create(:s_category => 'プログラミングソフト', :l_id =>1, :m_id =>24)
SCategory.create(:s_category => '学習・教養ソフト', :l_id =>1, :m_id =>24)
SCategory.create(:s_category => '地図ソフト', :l_id =>1, :m_id =>24)
SCategory.create(:s_category => '素材集', :l_id =>1, :m_id =>24)
SCategory.create(:s_category => '翻訳ソフト', :l_id =>1, :m_id =>24)
SCategory.create(:s_category => '辞書ソフト', :l_id =>1, :m_id =>24)
SCategory.create(:s_category => 'タイピングソフト', :l_id =>1, :m_id =>24)
SCategory.create(:s_category => '資格ソフト', :l_id =>1, :m_id =>24)
SCategory.create(:s_category => 'ゲームソフト ', :l_id =>1, :m_id =>24)
