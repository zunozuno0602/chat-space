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
- has_many :groups, through: :group_users
- has_many :messages
- has_many :group_users


## group_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|reference|null: false, foreign_key:true|
|group_id|reference|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

## groups テーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|


### Association
- has_many :groups, through: group_users
- has_many :messages
- has_many :group_users

## message テーブル
|Column|Type|Option|
|------|----|------|
|body|text||
|image|string||
|group_id|integer||
|user_id|integer||

### Association
- has_many :messages
- belongs_to :group