# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

has_many :tasks

## tasks テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| name           | string     | null: false                    |
| explanation    | string     | null: false                    |
| priority_id    | integer    | null: false                    |
| deadline_month | integer    | null: false                    |
| deadline_day   | integer    | null: false                    |
| user           | references | null: false, foreign_key: true |

belongs_to :user
