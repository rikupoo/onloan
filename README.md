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
# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| password | string | null: false |
| company   | references | null: false, foreign_key: true |
### Association

- has_many :user_companies
- belongs_to :company, user
- has_many :items

## items テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |
| company   | references | null: false, foreign_key: true |
### Association

- belongs_to :company


## companies テーブル

| Column | Type       | Options   |
| ------ | ---------- | ----------|
| name   | string | null: false   |
| password | string | null: false |

### Association

- has_many :item
- has_many :user

