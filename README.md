# BASE Templateドキュメント

BASE Templateのドキュメントです。BASE Templateを使うにはHTML、CSS、JavaScriptの基本的な知識が必須です。事前に学習をお願いします。

## はじめに

BASE Templateとは、BASEのショップのテンプレートを編集できる機能のことです。テンプレートを自由に編集して、自分のオリジナルのテーマを作ることができます。デザインオプションを独自設定することで、簡単にデザインを編集できるようにもなります。

## 利用開始

1. HTML編集Appをインストール。
2. メニューのデザイン編集をクリック。
3. HTMLを編集するをクリック。

BASE Templateはテンプレート変数を使って編集します。テンプレート変数には、変数とブロックの2種類があります。使い方はBASEのデフォルトテーマを参考にしてみてください。

*変数の例)*

```
<html>
	<head>
		...
	</head>
	<body>
		<h1><a href="{IndexPageURL}">{LogoTag}</a></h1>
	</body>
</html>
```

*ブロックの例)*

```
<html>
	<head>
		...
	</head>
	<body>
		<ul>
			{block:Items}
			<li>...</li>
			{/block:Items}
		</ul>
	</body>
</html>
```

## 禁止事項

- {BASEMenuTag}を非表示にしないでください。タグの改変もしないでください。
- {FaviconTag}を非表示にしないでください。タグの改変もしないでください。
- 意図的にサーバーに負荷をかける編集はしないでください。

## 注意事項

- 外部ファイルを読み込みたい場合は[BASE Developers](https://developers.thebase.in/)のファイルアップローダーを使ってください。
- BASEのサーバー上の画像、CSS、JavaScriptファイルは予告なく変更されます。
- 編集したテンプレートには最新のAppsが適用されません。
- 弊社が不適切と認めたテーマもしくはソースコードは予告なく削除することがあります。

## スマートフォン対応について

デザイン編集ページの「デフォルトのモバイルテーマを使用」をオフにすることで、スマートフォンでもPCと同じページが表示されるようになります。レスポンシブデザインでコーディングすることによってスマートフォンにも対応できます。

## テンプレート変数の説明

### ループ

| タグ名 | 説明 |
|--------|------|
| {block:Items} | 商品のループ |
| {block:AppsItemCategoryCategories} | 商品カテゴリーのループ (カテゴリーAppsのインストールが必要) |

### if 非表示

| タグ名 | 説明 |
|--------|------|
| {block:Hidden} | このブロックで囲むと何も表示されない |

### if イテレータ

| タグ名 | 説明 |
|--------|------|
| {block:Item[1-24]} | 商品が何番目のループ `例) {block:Item2}2番目{/block:Item2}` |
| {block:NotItem[1-24]} | 商品が何番目のループではない `例) {block:NotItem3}3番目ではない{/block:NotItem3}` |
| {block:Odd} | 商品が奇数番目のループ |
| {block:Even} | 商品が偶数番目のループ |

### if ページ

| タグ名 | 説明 |
|--------|------|
| {block:IndexPage} | トップページ |
| {block:ItemPage} | 商品ページ |
| {block:AboutPage} | aboutページ |
| {block:ContactPage} | contactページ |
| {block:PrivacyPage} | プライバシーポリシーページ |
| {block:LawPage} | 特商法ページ |
| {block:BlogPage} | blogページ (Apps) |
| {block:NotIndexPage} | トップページではない |
| {block:NotItemPage} | 商品ページではない |
| {block:NotAboutPage} | aboutページではない |
| {block:NotContactPage} | contactページではない |
| {block:NotPrivacyPage} | プライバシーポリシーページではない |
| {block:NotLawPage} | 特商法ページではない |
| {block:NotBlogPage} | blogページではない (Apps) |
| {block:LoadItemsPage} | 商品ロードページ |
| {block:NotLoadItemsPage} | 商品ロードページではない |
| {block:IndexPageCategory} | トップページのカテゴリーがある |
| {block:NoIndexPageCategory} | トップページのカテゴリーがない |

### if ショップ

| タグ名 | 説明 |
|--------|------|
| {block:ShopTwitterId} | Twitter IDがある |
| {block:ShopFacebookId} | Facebook IDがある |
| {block:ShopAmebaId} | Ameba IDがある |
| {block:ShopInstagramId} | Instagram IDがある |
| {block:NoShopTwitterId} | Twitter IDがない |
| {block:NoShopFacebookId} | Facebook IDがない |
| {block:NoShopAmebaId} | Ameba IDがない |
| {block:NoShopInstagramId} | Instagram IDがない |
| {block:ShopPublic} | ショップが公開されている |
| {block:NotShopPublic} | ショップが公開されていない |

### if デザインオプション

| タグ名 | 説明 |
|--------|------|
| {block:NavColor} | ナビゲーションカラーが設定されている |
| {block:TextColor} | テキストカラーが設定されている |
| {block:LinkColor} | リンクカラーが設定されている |

### if 商品

| タグ名 | 説明 |
|--------|------|
| {block:HasItems} | 商品がある |
| {block:NoItems} | 商品がない |
| {block:HasItemStock} | 商品の在庫がある |
| {block:NoItemStock} | 商品の在庫がない |
| {block:ItemDigitalContent} | デジタルコンテンツの商品 (デジタルコンテンツAppsのインストールが必要) |
| {block:ItemImage1} | 商品画像1がある |
| {block:ItemImage2} | 商品画像2がある |
| {block:ItemImage3} | 商品画像3がある |
| {block:ItemImage4} | 商品画像4がある |
| {block:ItemImage5} | 商品画像5がある |
| {block:NoItemImage1} | 商品画像1がない |
| {block:NoItemImage2} | 商品画像2がない |
| {block:NoItemImage3} | 商品画像3がない |
| {block:NoItemImage4} | 商品画像4がない |
| {block:NoItemImage5} | 商品画像5がない |

### if Apps

| タグ名 | 説明 |
|--------|------|
| {block:AppsItemCategory} | カテゴリーAppsをインストールしている |
| {block:AppsBlog} | Blog Appsをインストールしている |
| {block:AppsI18n} | 海外対応Appsをインストールしている |
| {block:AppsDownload} | デジタルコンテンツAppsをインストールしている |
| {block:AppsItemLabel} | ラベルAppsをインストールしている |

### BASE

| タグ名 | 説明 |
|--------|------|
| {BASEURL} | BASEのURL `https://thebase.in` |
| {BASEDomain} | BASEのドメイン `thebase.in` |

### ページ

| タグ名 | 説明 |
|--------|------|
| {IndexPageURL} | トップページのURL |
| {ItemPageURL} | 商品ページのURL |
| {AboutPageURL} | aboutページのURL |
| {BlogPageURL} | blogページのURL (Apps) |
| {ContactPageURL} | *[必須]* contactページのURL |
| {PrivacyPageURL} | *[必須]* プライバシーポリシーページのURL |
| {LawPageURL} | *[必須]* 特商法ページのURL |
| {LoadItemsPageURL} | 商品ロードページのURL。ページングのajaxで使用する。 `例) url: "{LoadItemsPageURL}" + next_page + "{LoadItemsPageURLParams}",` |
| {LoadItemsPageURLParams} | 商品ロードページのURLのパラメーター。ページングのajaxで使用する。 `例) url: "{LoadItemsPageURL}" + next_page + "{LoadItemsPageURLParams}",` |
| {IndexPageCategory} | トップページのカテゴリー。 `例) {block:IndexPageCategory}{IndexPageCategory}{/block:IndexPageCategory}` |

### HTMLヘッダー

| タグ名 | 説明 |
|--------|------|
| {PageTitle} | ページのタイトル |
| {FaviconTag} | *[必須]* ファビコンのタグ |
| {JQueryTag} | *[必須]* JQueryライブラリのタグ |
| {HeadLinkNextPrevTag} | クローラー向けの前のページ、次のページのリンクのタグ `例) <head>... {block:IndexPage}{HeadLinkNextPrevTag}{/block:IndexPage} ...</head>` |
| {MetaItemInfoTag} | 商品のメタ情報のタグ `例) <head>... {block:ItemPage}{MetaItemInfoTag}{/block:ItemPage} ...</head>` |
| {MetaShopInfoTag} | ショップのメタ情報のタグ `例) <head>... {block:NotItemPage}{MetaShopInfoTag}{/block:NotItemPage} ...</head>` |
| {GoogleAnalyticsTag} | *[必須]* Google Analyticsのタグ。Google Analytics Appsで設定したタグがここに表示されます。自分で直接Google Analyticsタグを貼らないでください。 |

### テンプレート

| タグ名 | 説明 |
|--------|------|
| {UpdateTime} | ファイルの更新時間 |
| {Counter} | 表示されるごとに1から順に数字が表示される特殊な変数です |
| {MaxPageNumber} | 最大ページ数。ページングのajaxで使用する。 |
| {NextPageNumber} | 次のページ。ページングのajaxで使用する。 |
| {IllegalReportMessageTag} | 「違反通報ありがとうございます」のメッセージ。セッションを使って表示しているのでthebase.inドメインのショップでしか表示されません。 |
| {ItemSelectTag} | 商品ページのselectのタグ |
| {EmbedWidgetTag} | 商品ページの外部サイトに貼るのタグ |
| {BASEMenuTag} | *[必須]* BASEメニューのタグ |
| {ContactContentsTag} | *[必須]* contactページのコンテンツのタグ |
| {PrivacyContentsTag} | *[必須]* プライバシーポリシーページのコンテンツのタグ |
| {LawContentsTag} | *[必須]* 特商法ページのコンテンツのタグ |
| {BlogContentsTag} | blogページのコンテンツのタグ (Apps) |
| {ItemAttentionTag} | *[必須]* 商品ページの注意文のタグ |
| {IllegalReportTag} | *[必須]* 商品ページの通報するのタグ |
| {AddToCartURL} | カートに入れるのURL。POSTのパラメーターが必要です。 |

### ショップ

| タグ名 | 説明 |
|--------|------|
| {ShopId} | ショップのID |
| {ShopDomain} | ショップのドメイン `例) shop.thebase.in` |
| {ShopURL} | ショップのURL `例) http://shop.thebase.in` |
| {ShopName} | ショップの名前 |
| {ShopIntroduction} | ショップの説明 |
| {ShopTwitterId} | ショップのTwitter ID |
| {ShopFacebookId} | ショップのFacebook ID |
| {ShopAmebaId} | ショップのAmeba ID |
| {ShopInstagramId} | ショップのInstagram ID |

### デザインオプション

| タグ名 | 説明 |
|--------|------|
| {NavColor} | ナビゲーションのカラー |
| {TextColor} | テキストのカラー |
| {LinkColor} | リンクのカラー |
| {LogoTag} | *[必須]* ロゴのタグ |
| {BackgroundTag} | *[必須]* バックグラウンドのタグ |

### 商品

| タグ名 | 説明 |
|--------|------|
| {ItemId} | 商品のID |
| {ItemTitle} | 商品の名前 |
| {ItemPrice} | 商品の価格 |
| {ItemStock} | 商品の在庫数 |
| {ItemDetail} | 商品の説明 (改行がbrタグになっている) |
| {ItemDetailNoBr} | 商品の説明 (改行がbrタグになっていない) |
| {ItemDigitalContent} | 商品のデジタルコンテンツのファイル名 (デジタルコンテンツAppsのインストールが必要) |
| {ItemImage[1-5]URL-origin} | 商品画像のオリジナルサイズ。商品ページのみ使用可。 `例) <img src="{ItemImage2URL-origin}">` |
| {ItemImage[1-5]URL-76} | 商品画像の76pxサイズ。取得できなかった場合は近いサイズ。2~5は商品ページのみ使用可。 |
| {ItemImage[1-5]URL-146} | 商品画像の146pxサイズ。取得できなかった場合は近いサイズ。2~5は商品ページのみ使用可。 |
| {ItemImage[1-5]URL-300} | 商品画像の300pxサイズ。取得できなかった場合は近いサイズ。2~5は商品ページのみ使用可。 |
| {ItemImage[1-5]URL-500} | 商品画像の500pxサイズ。取得できなかった場合は近いサイズ。2~5は商品ページのみ使用可。 |
| {ItemImage[1-5]URL-640} | 商品画像の640pxサイズ。取得できなかった場合は近いサイズ。2~5は商品ページのみ使用可。 |
| {ItemNoImageURL} | no imageの画像 |

### Apps

| タグ名 | 説明 |
|--------|------|
| {AppsItemCategoryTag} | 商品カテゴリーのタグ (カテゴリーAppsのインストールが必要) |
| {AppsI18nTag} | 言語切替のタグ (海外対応Appsのインストールが必要) |
| {AppsItemLabelTag} | 商品ラベルのタグ (ラベルAppsのインストールが必要) |
| {AppsItemCategoryCategoryName} | 商品カテゴリーの名前 (カテゴリーAppsのインストールが必要) `例) {block:AppsItemCategoryCategories}{AppsItemCategoryCategoryName}{/block:AppsItemCategoryCategories}` |
| {AppsItemCategoryCategoryCount} | 商品カテゴリーの商品数 (カテゴリーAppsのインストールが必要) `例) {block:AppsItemCategoryCategories}{AppsItemCategoryCategoryName} ({AppsItemCategoryCategoryCount}){/block:AppsItemCategoryCategories}` |
| {AppsItemCategoryCategoryPageURL} | 商品カテゴリーのページのURL (カテゴリーAppsのインストールが必要) `例) {block:AppsItemCategoryCategories}<a href="{AppsItemCategoryCategoryPageURL}">{AppsItemCategoryCategoryName}</a>{/block:AppsItemCategoryCategories}` |

### ローカライズテキスト

| タグ名 | 説明 |
|--------|------|
| {lang:Privacy} | プライバシーポリシー |
| {lang:Law} | 特定商取引法に基づく表記 |
| {lang:AddToCart} | カートに入れる |
| {lang:NoItemsMessage} | 出品されている商品がありません。 |
| {lang:NotShopPublicMessage} | [ショップ名]は、現在準備中です。 |
| {lang:SeeDetails} | 詳細を見る |
| {lang:Tweet} | ツイート |

## デザインオプションの独自設定

デザインオプションの独自設定をすることで、デザイン編集が簡単にできるようになります。独自設定はtext、image、color、select、ifの5種類があります。

### text

ヘッダーに特殊なmeta textタグを記述することで設定することができます。textの値があるかチェックするブロックも設定されます。

*例)*

```
<html>
	<head>
		<meta name="text:Youtube Username" content="" label="Youtubeのアカウント">
	</head>
	<body>
		{block:text-Youtube_Username}
		<div>Youtubeのアカウント {text:Youtube Username}</div>
		{/block:text-Youtube_Username}
		{block:not_text-Youtube_Username}
		<div>Youtubeのアカウントはありません</div>
		{/block:not_text-Youtube_Username}
	</body>
</html>
```

### image

ヘッダーに特殊なmeta imageタグを記述することで設定することができます。imageの値があるかチェックするブロックも設定されます。値がない場合は1pxの透過の画像を返します。

*例)*

```
<html>
	<head>
		<meta name="image:Header" content="http://thebase.in/img/header.jpg" label="ヘッダー画像">
		<meta name="image:Footer" content="" label="フッター画像">
	</head>
	<body>
		<img src="{image:Header}">
		<img src="{image:Footer}">
	</body>
</html>
```

### color

ヘッダーに特殊なmeta colorタグを記述することで設定することができます。colorの値があるかチェックするブロックも設定されます。

*例)*

```
<html>
	<head>
		<meta name="color:Contents Text" content="#ffffff" label="コンテンツテキスト色">
		<style type="text/css">
			#contents {
				color: {color:Contents Text}
			}
		</style>
	</head>
	<body>
		<div id="contents">
			...
		</div>
	</body>
</html>
```

### select

ヘッダーに特殊なmeta selectタグを記述することで設定することができます。selectの値があるかチェックするブロックも設定されます。selectの一番上のcontentの値がデフォルト値になります。

*例)*

```
<html>
	<head>
		<meta name="select:Layout" content="cool" title="Cool" label="レイアウトタイプ">
		<meta name="select:Layout" content="cute" title="Cute" label="レイアウトタイプ">
		<meta name="select:Layout" content="sharp" title="Sharp" label="レイアウトタイプ">
	</head>
	<body>
		<div class="{select:Layout}">
			...
		</div>
	</body>
</html>
```

### if

ヘッダーに特殊なmeta ifタグを記述することで設定することができます。nameの値のコロン(:)をハイフン(-)に、スペース( )をアンダーバー(\_)に変換した値がブロック名になります。falseのチェックの場合は頭にnot\_をつけます。

*例)*

```
<html>
	<head>
		<meta name="if:Show Detail" content="1" label="説明を表示">
	</head>
	<body>
		{block:if-Show_Detail}
		<div>説明を表示します。</div>
		{/block:if-Show_Detail}
		{block:not_if-Show_Detail}
		<div>説明を表示しません。</div>
		{/block:not_if-Show_Detail}
	</body>
</html>
```

