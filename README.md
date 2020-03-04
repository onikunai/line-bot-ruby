# **rubyでline-bot**
line-botで、「天気を知ること」と「オウム返し体験」が出来ます。

1.[MENU](#MENU)  
2.[デモ画像](#デモ画像)  
3.[開発環境](#開発環境)  
4.[DB設計](#DB設計)  
5.[今後の展開](#今後の展開)  
6.[製作者](#製作者)

### *MENU*
---
　どんなメッセージでも良いので送信をすると、MENU画面が表示されます。
また、スタンプを送信するとリセットされます。
* *MENU画面*
<img width="1440" alt="task_new_2" src='./app/0images/0demo/menu.jpg'>
<br>

### *デモ画像*
---
<!-- ![デモ](https://user-images.githubusercontent.com/58467980/75109626-650a9000-5668-11ea-9ea2-6b366b63afc7.png) -->
* *タスク入力*
  * 日程や時間などを入力し保存が行えます
  * 「今日」入力したものが表示されます

<img width="1440" alt="task_new_2" src="https://user-images.githubusercontent.com/58467980/75649831-a8cc4d80-5c97-11ea-9174-6d7eafd82177.png">

* *今日の予定*
  * 入力されたタスクの内、日程が「今日」のものを表示します

<img width="1326" alt="task_today_2" src="https://user-images.githubusercontent.com/58467980/75649906-d44f3800-5c97-11ea-87e7-0d435a673943.png">

* *日記一覧*
  * 各投稿者が1日の出来事を日記にして投稿できます

<img width="1440" alt="diaryimage" src="https://user-images.githubusercontent.com/58467980/75110450-a2bfe680-5671-11ea-849b-b5a4cef8721f.png">


### *開発環境*
---
* Ruby 2.5.1
* Ruby on Rails 5.2.3
* データベース MySQL
* デプロイ AWS

<br>

### *DB設計*
---

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|unique: true|
|password|string|null: false|
|prefecture_id|integer|null: false|
|image|string|

### Association
* has_many :tasks
* has_many :diaries
* belongs_to_active_hash :prefecture

## tasksテーブル
|Column|Type|Options|
|------|----|-------|
|day|date|null: false|
|beforetime_id|integer|
|aftertime_id|integer|
|place|string|
|doing|string|null: false|
|memo|string|
|user|references|foreign_key: true|

### Association
* belongs_to :user
* belongs_to_active_hash :beforetime
* belongs_to_active_hash :aftertime

## diariesテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|impression|text|null: false|
|user|references|foreign_key: true|

### Association
* belongs_to :user

<br>

### *今後の展開*
---
- [ ] タスク編集機能
- [ ] タスクに優先度のカラムを追加
- [ ] ソート機能
- [ ] 日記いいね機能
- [ ] 日記公開・非公開機能

などを実装していきたいと思います。

<br>

### *製作者*
---
yukis1996 ゆう  
Github: https://github.com/yukis1996    
Twitter: @yu723life


