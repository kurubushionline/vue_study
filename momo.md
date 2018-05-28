# 準備手順

## プロジェクト作成

turboとcoffeeいらんバージョンで

```
mkdir vue_study
cd vue_study
rbenv local 2.5.1
bundle init
bundle install --path vendor/bundle
be rails new . -d mysql --skip-turbolinks --webpack=vue --skip-coffee
```

## foreman準備

```Gemfile
gem 'foreman'
```

```Procfile
rails: bundle exec rails server
webpack: ./bin/webpack-dev-server
```

サーバ起動時には以下

```
foreman start
```

# 開発

プロジェクト登録時にメンバーを同時にアサインできる

## モデル追加

```
be rails g model project
be rails g model user
be rails g model assign
```

* リレーションを記載
```

```
