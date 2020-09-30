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

#　テーブル設計

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