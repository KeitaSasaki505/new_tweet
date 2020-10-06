# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



# ~~アプリケーションの説明~~



## アプリケーション名

  New Tweet 


## アプリケーション概要

  高齢者でも利用できるツイートアプリを作成しました。ユーザー登録をすることでツイートや相手のツイ-
  トにコメントができます。画像や動画も投稿ができます。 

## URL

  実装後に記載

## テスト用アカウント

  実装後に記載

------------------------------------------------------------------------------
## 利用方法

### ユーザー登録

| 1 | 「新規登録」をクリック                   |
| 2 | ニックネーム、メール、パスワードを入力し保存 |

### ツイートの投稿

| 1 | 「ぼやく」からツイートを投稿 |

### 画像や動画を投稿

| 1 | 「ぼやく」をクリック                              |
| 2 | ツイート入力欄横の「画像」をクリックし画像を選択し投稿  |

### ツイートへのコメント
| 1 | 各ツイート内の「コメント」をクリック  |
| 2 | メッセージ入力欄に記述し保存        |

### ツイートの削除(投稿者のみ)
| 1 | 各ツイート内の「削除」をクリック |

------------------------------------------------------------------------------

## 目指した課題解決
  ITを敬遠しがちな高齢者（作者の両親）とITを使った活発なコミュニケーションの場を設ける

## 洗い出した要件

| ユーザーの新規登録ができる　　　　　 |
| ユーザーはログインできる　　　　　　 |
| ユーザーはログアウトできる　　　　　 |
| メッセージを一覧表示する　　　　　　 |
| メッセージの投稿ができる　　　　　　 |
| メッセージの削除ができる（投稿者)　　|
| メッセージにコメントをつけられる　　 |
| 動画、写真が投稿できる　　　　　　　 |
| 文字列の検索ができる　　　　　　　　 |

## 実装予定の機能

| ------- | --- |

## ローカルでの動作方法

実装後に記載

------------------------------------------------------------------------------

# テーブル設計

## usersテーブル

| Column           | Type    | Options     |
| ---------------- | ------- | ----------- |
| name             | string  | null: false |
| nickname         | string  | null: false |
| mail             | string  | null: false |
| password         | string  | null: false |

### Association

- has_many :tweets
- has_many :comments

## tweetテーブル

| Column           | Type       | Options           |
| ---------------- | ---------- | ----------------- |
| user_id          | integer    | foreign_key: true |
| content          | string     | null: false       |

### Association

- belongs_to :user
- has_many :comments

## commentテーブル

| Column           | Type    | Options                        |
| ---------------- | ------- | ------------------------------ |
| text             | string  | null: false, foreign_key: true |
| user_id          | integer | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :tweet