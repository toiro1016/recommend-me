# README.md
# アプリ名  
## recommend-me  
# 概要  
利用しているユーザーがお互いにオススメなものを紹介しあえて、趣味や嗜好のあったユーザーと繋がって、繋がったユーザーから情報を受け取ることができるアプリ。  

# 制作背景（背景）
前職では店舗の店長として、10代から60代までの幅広い年齢層のアルバイトの方と一緒に働いていました。その中で、学生は自分の好きなことがわからないや、自分のやりたいことがわからないという子が多くいました。また、自分よりも上の世代の方などは、気軽に話せる友人や場所がなく、アルバイトをしている時間が唯一誰かと話せる場だという話をよく聞いていました。これらの悩みは発展していくと自分に自信がもてなくなったり、ストレスが溜まったり、最悪の場合は自殺や孤独死などにも繋がっていくのではないかと感じていました。  
そんな経験から、好きなものややりたい事を見つけるためのきっかけになるような、また、自分と趣味や嗜好の合う相手と気軽に繋がることが出来るようなアプリを目指しました。  
# DEMO  
トップページ
[![Image from Gyazo](https://i.gyazo.com/843722438a3b458e1b9ff28f8cdf65d1.jpg)](https://gyazo.com/843722438a3b458e1b9ff28f8cdf65d1)  
マッチングページ
[![Image from Gyazo](https://i.gyazo.com/761f4cbb09e07f7eff2d5138967b4ce6.gif)](https://gyazo.com/761f4cbb09e07f7eff2d5138967b4ce6)

# 実装予定の内容
+ いいね機能　　　・・・気に入ったオススメ記事にいいねをつけられる
+ マッチング機能　・・・相手のプロフィールなどから気になるユーザーと繋がる事ができる
+ SNS認証　　　　・・・SNSアカウントを利用したログイン方法を選択肢として追加する
+ ジャンル検索機能・・・探したいオススメ情報の検索を簡単にする  

# DB設計  
## user テーブル

| Column              | Type   | Options                  |
| ------------------- | ------ | ------------------------ |
| nickname            | string | null: false              |
| email               | string | null: false, unique:true |
| encrypted_password  | string | null: false              |
| first_name          | string | null: false              |
| last_name           | string | null: false              |
| birthday            | date   | null: false              |
| self_introduction   | text   |                          |
| profile_images      | string |                          |

### Association

- has_many :reactions
- has_many :recommends

## reactions テーブル

| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| status              | integer    | null: false,                   |
| to_user             | reference  | null: false,  foreign_key: true|
| from_user           | reference  | null: false   foreign_key: true|

### Association

- belong_to :user

## recommend テーブル

| Column           | Type       | Options                        |
| ----------       | ---------- | ------------------------------ |
| user             | references | null: false, foreign_key: true |
| recommend_image  | string     |                                |
| recommend_tittle | string     | null: false                    |
| recommend_comment| string     | null: false                    |
| recommend_genre  | integer    | null: false                    |
| good             | integer    |                                |

### Association

- belongs_to :user

