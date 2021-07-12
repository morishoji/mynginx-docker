# mynginx-docker
Docker build source files for my AWS nginx container

自宅回線を Softbank Air にしたらポート開放できなくなって自宅サーバをネット上に公開できなくなったので、代わりに AWS に SSH トンネルを張ってリバースプロキシすることにしました。
これは AWS で動かす Docker コンテナをビルドするためのファイルと、自宅サーバ側から SSH のトンネルを張るためのファイルを登録しています。

backend に置かれたファイルがトンネルを張る側の SSH と systemd の設定ファイルです。（コンテナのビルドでは使いません）
