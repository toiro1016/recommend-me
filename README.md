# README.md
# アプリ名  
## recommend-me  
# 概要  
利用しているユーザーがお互いにオススメなものを紹介しあえて、趣味や嗜好のあったユーザーと繋がって、繋がったユーザーから情報を受け取ることができるアプリ。  

# 制作背景（背景）
自分の好きなことがわからないや、自分のやりたいことがわからないという人の、好きなものややりたい事を見つけるためのきっかけになるようなアプリを目指しました。また、情報過多の現代社会において、欲しい情報を自分と趣味や嗜好の合う特定の相手からだけ受け取る事が出来るようなアプリです。  
# DEMO  
トップページ
[![Image from Gyazo](https://i.gyazo.com/843722438a3b458e1b9ff28f8cdf65d1.jpg)](https://gyazo.com/843722438a3b458e1b9ff28f8cdf65d1)  

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

