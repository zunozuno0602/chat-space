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

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|index:true, null:false, unique:true|
|mail|string|null:false|
|password|string|null:false|

### Association
- has_many :groups, through: members
- has_many :messages
- has_many :members


## group_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|intenger|null: false, foreign_key:true|
|group_id|intenger|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

## group テーブル

|Column|Type|Options|
|------|----|-------|
|group_name|text|null: false|
|menber|string|null:false, index:true|
|user_id|integer|null: false|

### Association
- has_many :groups, through: members
- has_many :messages
- has_many :members