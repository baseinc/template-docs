# 検索Appの対応

商品をキーワードで検索できる検索フォームが利用できるAppsです。  
テンプレートのデザインに応じて柔軟にフォームをデザインしていただけるように、検索用のURLをテンプレート変数として用意しております。

## 関連するテンプレート変数

### if ページ

| タグ名 | 説明 |
|--------|------|
| {block:IndexPageSearch} | トップページの検索キーワードがある |
| {block:NoIndexPageSearch} | トップページの検索キーワードがない |

### if Apps

| タグ名 | 説明 |
|--------|------|
| {block:AppsSearch} | 商品検索Appsをインストールしている |

### ページ

| タグ名 | 説明 |
|--------|------|
| {IndexPageSearch} | 検索キーワード |
| {SearchPageURL} | 検索フォームのURL。 GETパラメータ q=***(検索キーワード) が必要です。|

### ローカライズテキスト

| タグ名 | 説明 |
|--------|------|
| {lang:ItemSearchResult} | "[検索キーワード]"の検索結果 |


## 検索フォームの設置

ショップの全ページからアクセスできるよう、ヘッダーやグローバルナビゲーションに配置することが望ましいです。 

 - formのactionにテンプレート変数 {SearchPageURL} を指定
 - 検索ワード入力inputのnameに "q" を指定
 - 検索ワード入力inputのvalueにテンプレート変数 {IndexPageSearch} を指定

*例)*

```
{block:AppsSearch}
<form action="{SearchPageURL}" method="get">
	<input type="text" name="q" placeholder="商品を検索" value="{IndexPageSearch}"/>
	<button type="submit">検索</button>
</form>
{/block:AppsSearch}
```

## 検索結果一覧ページ

検索結果はトップページ {block:IndexPage} 内に表示されます。  
テンプレート変数 {lang:ItemSearchResult} を利用して、検索に利用されたキーワードを表示することができます。

*例)*

```
{block:IndexPage}

...

	{block:IndexPageSearch}
		<p>{lang:ItemSearchResult}</p>
	{/block:IndexPageSearch}
	
...

{/block:IndexPage}
```


## 動作のチェック
- 検索フォームが存在するか
- 指定したキーワードで検索ができるか
