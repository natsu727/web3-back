## 環境構築手順

1. このリポジトリをCloneする

2.  ``` sudo groupadd docker ``` を実行し　Dockerグループが存在するか確認する

3. (Dockerグループが存在していた場合) ```sudo usermod -aG docker $USER ``` で自身をグループに追加する

4. (Dockerグループが存在しない場合)　```sudo groupadd docker --gid ``` を実行しグループを作成その後 3. を行う

5. ``` docker compose up -d --build ``` Docker環境をビルドしてコンテナを起動状態にする

6. ```docker compose exec web rake db:create ``` でローカルにDBを作成する

7. 止めたいときは```docker compose down ```　でコンテナを停止する
   
