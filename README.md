# data-platform-rank-sql 
data-platform-rank-sql は、データ連携基盤において、ランクデータを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-rank-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.xxx.com/api/API_XXXXX_XXX/overview

## sqlの設定ファイル
data-platform-rank-sql には、sqlの設定ファイルとして以下のsqlファイルが含まれています。  

* data-platform-rank-sql-rank-data.sql（データ連携基盤 ランク - ランクデータ）
* data-platform-rank-sql-rank-data-setup.sql（データ連携基盤 ランク - ランクデータの設定）
* data-platform-rank-sql-text-data.sql（データ連携基盤 ランク - テキストデータ）
* data-platform-rank-sql-text-data-setup.sql（データ連携基盤 ランク - テキストデータの設定）

## 設定値

setupファイルには、各テーブルに対応した設定値が含まれています。  
設定値は次の通りです。

| RankType | Rankコード      | Rank名                    | 
| -------- | --------------- | ------------------------- | 
| PTAP     | 1               | ビギナー                  | 
| PTAP     | 2               | ミドル                    | 
| PTAP     | 3               | エキスパート              | 
| PTAP     | 4               | マスター                  | 
| PTAP     | 5               | マニア                    | 
| COMM     | 1               | 友達                     | 
| COMM     | 2               | 仲良し                   | 
| COMM     | 3               | スーパー仲良し            | 
| COMM     | 4               | 最高の友                  | 
| COMM     | 5               | 神友                     | 

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。
