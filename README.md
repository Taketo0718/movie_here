# アプリケーション名

Movie Now!

# アプリケーション概要

高評価の映画が上映中の、最寄りの映画館と上映時間を手早く調べる。

# URL

https://movie-now-32626.herokuapp.com/

# テスト用アカウント

ID
Pass

# 利用方法

トップページの入力欄に住所または郵便番号を入力し、ボタンを押すと、
検索結果が表示される。
新規登録し、ログインすると、映画詳細ページでコメントができる。

# 目指した課題解決

空き時間に、映画が見たい時に、早く決断するのを助ける。

# 洗い出した要件



# 実装した機能についてのGIFと説明



# 実装予定の機能

webスクレイピングによる映画情報更新。


# テーブル設計

## users テーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| nickname           | string  | null: false |
| email              | string  | null: false |
| encrypted_password | string  | null: false |

### Association

- has_many :comments


## comments テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| user         | references | null: false, foreign_key: true |
| movie        | references | null: false, foreign_key: true |
| comment      | text       | null: false                    |

### Association

- belongs_to :user
- belongs_to :movie


## theaters テーブル

| Column       | Type   | Options     |
| ------------ | ------ | ----------- |
| name         | string | null: false |
| longitude    | float  | null: false |
| latitude     | float  | null: false |
| scraping_url | text   | null: false |

### Association

- has_many :movies


## movies テーブル

| Column      | Type       | Options                        |
| ------------| ---------- | ------------------------------ |
| theater     | references | null: false, foreign_key: true |
| name        | string     | null: false                    |
| tweet_url   | text       |                                |
| youtube_url | text       |                                |

### Association
- belongs_to :theater
- has_many :reviews
- has_many :schedules
- has_many :comments

## schedules テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| theater    | references | null: false, foreign_key: true |
| movie      | references | null: false, foreign_key: true |
| start_time | string     | null: false                    |
| end_time   | string     | null: false                    |

### Association

- belongs_to :movie

## reviews テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| review_site | references | null: false, foreign_key: true |
| movie       | references | null: false, foreign_key: true |
| score       | string     | null: false                    |

### Association

- belongs_to :movie
- belongs_to :review_site

## review_site テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| name   | string     | null: false                    |

### Association

- has_many :reviews

# ローカルでの動作方法

