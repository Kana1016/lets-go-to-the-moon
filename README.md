# サービス名（仮称）
### Let's Go to the Mooooon!!


## サービス概要
Let's Go to the Mooooon!! は、縄跳びやウォーキングなどの運動記録を「月までの距離（384,400km）」に向けて積み重ねていく運動記録アプリです。 <br>
毎日の縄跳び回数や歩数を記録し、合計距離で月への到達を目指します。 <br>
ただ一直線に月を目指すのではなく、10,000kmごとにうさぎを仲間に加え（画面に表示していき）、月を目指していきます。 <br>
また、月へ到着した後も楽しく継続できるよう一定期間内で仲間にしたうさぎの数で競うランキング機能や、周回機能を実装予定です。


## このサービスへの思い・作りたい理由
私は長年、さまざまな方法でダイエットに取り組んできましたが、なかなか思うような結果を得られず、挫折してきました。<br>
ウォーキングや縄跳びが好きで運動のメイン種目にしていたのですが、体重という数字だけを目標にしてしまうと、思うように減らなかったときに気持ちが折れてしまい、運動そのものが苦痛に感じるようになってしまいました。<br>
そんな中で「目標体重を目指していくのではなく、日々の運動そのものを記録し、楽しく積み上げていく目標があれば、モチベーションが維持できるのでは？」と考えました。<br>
体重は運動した努力の量と結果が必ずしも比例しませんが、運動の記録は頑張った分だけ数値として目に見える形で蓄積されます。その蓄積こそが、継続する力と達成感につながると信じています。<br>
このアプリが、「運動を楽しみながら習慣化すること」を応援する存在になれたら嬉しいです。


## ユーザー層について
ターゲット層は若年層の女性の方です。<br>
厚生労働省が発表している「国民健康・栄養調査（令和5年）※一番新しいデータ」では、20代女性の運動が一番習慣化されていないとのことでした。<br><br>

▼国民健康・栄養調査<br>
https://www.mhlw.go.jp/bunya/kenkou/kenkou_eiyou_chousa.html<br>
└この結果を分かりやすくまとめたサイト：https://seikatsusyukanbyo.com/statistics/2024/010826.php<br><br>

ですが、現在の日本人女性は痩せすぎであると日本肥満学会が警鐘しています。<br>
▼Yahooニュース<br>
https://news.yahoo.co.jp/articles/9af30ccb1032c30e88d489dd7a8d6780e7872161<br><br>

運動習慣がなくとも痩せるということは過度な食事制限を行っていると考えられます。<br>
運動をせず食事制限をメインで痩せてしまうと、筋肉量の低下を招き、「※スキニーファット※」になってしまいます。<br>
また筋力不足は病気やケガの大きなきっかけとなります。<br>
※スキニーファット：見た目が痩せている、または普通体型(BMIが18.5〜25未満) にもかかわらず、筋肉量が少なく脂肪が多い状態のこと。<br><br>

これらを踏まえ、若年層の女性の方（主に20代の方）に、体重にとらわれず健康的に運動を続けてほしいという想いを届けたいと思っております。<br>


## サービスの利用イメージ
寝る前や運動が終わった後に1日の歩数や縄跳びの回数を記録します。<br>
運動習慣は約3か月※で定着するとされているため、第一目標として、3か月で月へ到着できるよう計算いたします。<br>
なお、実際距離で記録してしまうと、月へ到着するまでに途方もない時間がかかってしまうため、モチベーションの低下の恐れを考えバフ（強化アイテム）で倍率を掛けます。<br>
※みんチャレブログ参照：https://minchalle.com/blog/necessaryperiods-for_habits<br><br>

### ＜縄跳びの記録方法＞「時間」と「1分間に跳ぶ回数」が記入箇所です（自分で回数を数えて直接記述してもよい）
20分（跳んだ時間）× 180回（1分当たりの跳ぶ回数：早い）× 1.2km（1回あたりの飛ぶ高さ：バフ） = 4,320km （1日当たりに跳ぶ高さ）<br>
384,400km（月への距離）/ 4,320km（1日当たりに跳ぶ高さ）= 約89日（月まで行くのにかかる日数）<br>
※なお、1分当たりに飛ぶ回数は「遅い：100step/分以下」「普通；120step/分程度」「早い：180step/分程度」に設定します。直接回数を入れることもできます。<br><br>

### ＜ウォーキングの記録方法＞「歩数」のみ記入いたします。
「最近10年間の歩数の増加傾向を考慮して、当面10年間の目標として、男女とも歩数の1,000歩増加を目指し、1日平均歩数を男性9,200歩、女性8,300歩程度を目標とする。」と厚生労働省の身体活動・運動の政策に記載があるため、1日の歩数を8,000歩として算出する。<br>
▼厚生労働省HP（イ　日常生活における歩数の増加に記載）<br>
https://www.mhlw.go.jp/www1/topics/kenko21_11/b2.html<br>
8,000（歩数）× 90日（続ける日数） = 720,000歩（3か月での合計歩数）<br>
720,000歩 × 70cm（歩幅）= 504km（3か月で移動できる距離）<br>
384,400 / 504 = 762.3<br>
1日歩いた歩数に0.0007km（歩幅）を掛けて760倍のバフを掛けると1日のアプリ内での距離が求められます。<br>
※歩幅：https://support.sixtostart.com/hc/ja-jp/articles/214617277<br>

## ユーザーの獲得について
SNS活用: SNSで「運動を楽しむ」コンテンツを発信し、アプリの魅力を伝える。ゲーム感覚で進める「月までの冒険」や、ユーザーが毎日の運動を記録していく楽しさを強調。また各階層達成ごとにxに投稿できる機能を実装する。<br>
愛らしいデザイン: 若年層の女性をターゲットにしているため、かわいらしいイラストでデザインする。また毎日記録することを考慮し、見やすく使いやすいUI/UXを心掛ける。<br>

## サービスの差別化ポイント・推しポイント
本アプリは、縄跳びに特化した記録型フィットネスアプリとして差別化を図っています。<br>
ウォーキング系は「ポケモンGO」や「モンハンNOW」など多く存在しますが、縄跳びを中心に楽しめるアプリは非常に少なく、ニッチかつ独自性の高いジャンルです。<br>
さらに「ウサギを仲間にして月を目指す旅」というファンタジー要素×運動記録の組み合わせにより、継続しやすく、運動そのものを楽しむ習慣づくりをサポートします。<br>
※縄跳びのみでは使用機会が狭まってしまうため、ウォーキングも追加しております。<br><br>

### 類似の既存アプリ
▼ポケモンGO<br>
https://pokemongo.com/ja-JP<br><br>

▼モンハンNOW<br>
https://monsterhunternow.com/ja<br><br>

▼ポイ活アプリ（ウォーキングでポイントがたまるスマホアプリ）※一部抜粋<br>
・トリマ 歩数計アプリ：https://m-s-y.com/redirect/82192/<br>
・えみぅ 歩いて育ててポイ活アプリ：https://m-s-y.com/redirect/81874/<br><br>

▼APPバンクの縄跳びカウンターアプリ一覧（ゲーム性の高いものや可愛らしいアプリはない模様）<br>
https://www.appbank.net/app-rank/life/ouchi-app/measurement/nawatobi-counter


## 機能候補
### MVP
* 会員登録機能
* ログイン機能
* ログアウト機能
* パスワードリセット機能
* トップページ（月まであと○○キロ等の表示と記録ボタンの表示）
* 記録ページ（実際距離とアプリ内での仮想距離を表示）
* 過去の記録一覧（実際距離とアプリ内での仮想距離を表示）

### 本リリース
* プロフィール（週間ランキングで使用）
* xへの投稿機能
* 週間ランキング
* 周回機能
* LINE通知


## 機能の実装方針予定
開発環境: Docker<br>
サーバサイド: Ruby on Rails 7系、Ruby 3.2.2 Rails 7.0.4.3<br>
フロントエンド: Vue.js<br>
CSSフレームワーク:Tailwind CSS (https://tailwindcss.com/)<br>
WebAPI: LINE Messaging API SDK for Ruby (https://github.com/line/line-bot-sdk-ruby)<br>
Webアプリケーションサーバ: Render (https://dashboard.render.com/login)<br>
データベースサーバ: PostgreSQL<br>
その他: GitHub