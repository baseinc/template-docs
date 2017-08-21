# BASE Templateドキュメント

BASE Templateのドキュメントです。BASE Templateを使うにはHTML、CSS、JavaScriptの基本的な知識が必須です。事前に学習をお願いします。このリポジトリをwatchしておくと更新情報が届いて便利です。

## 更新情報

- 2017/07/25 画像20枚対応の変数を追加しました。(まだ画像登録はできませんが変数は使えます)
- 2017/07/18 レビューAppの変数を追加しました。

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

## BASE デザインマーケットについて

作成したテーマを[BASE デザインマーケット](https://design.thebase.in/)で販売することもできます。テーマの販売には審査があります。テーマの審査では基本的な動作のチェックとデザイン性のチェックを行います。**テーマを申請する際には、必ず下記のチェックリストに沿って動作確認を行った上で申請してください。**

- [テーマのチェックリスト](check_list.md)
- [テーマのデザインガイドライン](design_guideline.md)
- [デザインマーケット利用規約](https://thebase.in/pages/designmarket_term)

## テンプレート変数の説明

### ループ

| 変数 | 説明 |
|-----|-----|
| {block:Items} | 商品のループ |
| {block:AppsItemCategoryCategories} | 大カテゴリーのループ (カテゴリーAppのインストールが必要) |
| {block:AppsItemCategoryMediumCategories} | 大カテゴリーのループの中の中カテゴリーのループ (カテゴリーAppのインストールが必要) |
| {block:AppsItemCategoryChildCategories} | 今いるカテゴリーの子カテゴリーのループ (カテゴリーAppのインストールが必要) |

### if 非表示

| 変数 | 説明 |
|-----|-----|
| {block:Hidden} | このブロックで囲むと何も表示されない。デザインオプションのmetaタグはこれで囲む。 |

### if イテレータ

| 変数 | 説明 |
|-----|-----|
| {block:Item[1-24]} | 商品が何番目のループ `例) {block:Item2}2番目{/block:Item2}` |
| {block:NotItem[1-24]} | 商品が何番目のループではない `例) {block:NotItem3}3番目ではない{/block:NotItem3}` |
| {block:Odd} | 商品が奇数番目のループ |
| {block:Even} | 商品が偶数番目のループ |

### if ページ

| 変数 | 説明 |
|-----|-----|
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
| {block:IndexPageSearch} | トップページの検索キーワードがある |
| {block:NoIndexPageSearch} | トップページの検索キーワードがない |

### if テンプレート
| 変数 | 説明 |
|-----|-----|
| {block:BreadcrumbTag} | パンくずがある |

### if ショップ

| 変数 | 説明 |
|-----|-----|
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

| 変数 | 説明 |
|-----|-----|
| {block:NavColor} | ナビゲーションカラーが設定されている |
| {block:TextColor} | テキストカラーが設定されている |
| {block:LinkColor} | リンクカラーが設定されている |

### if 商品

| 変数 | 説明 |
|-----|-----|
| {block:HasItems} | 商品がある |
| {block:NoItems} | 商品がない |
| {block:HasItemStock} | 商品の在庫がある |
| {block:NoItemStock} | 商品の在庫がない |
| {block:ItemDigitalContent} | デジタルコンテンツの商品 (デジタルコンテンツAppのインストールが必要) |
| {block:ItemImage[1-20]} | 商品画像がある。 `例) {block:ItemImage2}画像2がある{/block:ItemImage2}` |
| {block:NoItemImage[1-20]} | 商品画像がない。 `例) {block:NotItemImage2}画像2がない{/block:NotItemImage2}` |

### if Apps

| 変数 | 説明 |
|-----|-----|
| {block:AppsItemCategory} | カテゴリーAppをインストールしている |
| {block:HasAppsItemCategoryMediumCategories} | 中カテゴリーがある |
| {block:HasAppsItemCategoryChildCategories} | 子カテゴリーがある |
| {block:AppsBlog} | Blog Appをインストールしている |
| {block:AppsI18n} | 海外対応Appをインストールしている |
| {block:AppsDownload} | デジタルコンテンツAppをインストールしている |
| {block:AppsItemLabel} | ラベルAppをインストールしている |
| {block:AppsBaseEraser} | BASEロゴ非表示Appをインストールしている |
| {block:NoAppsBaseEraser} | BASEロゴ非表示Appをインストールしていない |
| {block:AppsSearch} | 商品検索Appをインストールしている |
| {block:AppsReview} | レビューAppをインストールしている |

### BASE

| 変数 | 説明 |
|-----|-----|
| {BASEURL} | BASEのURL `https://thebase.in` |
| {BASEDomain} | BASEのドメイン `thebase.in` |

### ページ

| 変数 | 説明 |
|-----|-----|
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
| {SearchPageURL} | 検索フォームのURL。 GETパラメータ q=\*\*\*(検索キーワード) が必要です。|
| {IndexPageSearch} | 検索キーワード |

### HTMLヘッダー

| 変数 | 説明 |
|-----|-----|
| {PageTitle} | ページのタイトル |
| {FaviconTag} | *[必須]* ファビコンのタグ |
| {CanonicalTag} | canonical属性のタグ |
| {JQueryTag} | *[必須]* JQueryライブラリのタグ |
| {HeadLinkNextPrevTag} | クローラー向けの前のページ、次のページのリンクのタグ `例) <head>... {block:IndexPage}{HeadLinkNextPrevTag}{/block:IndexPage} ...</head>` |
| {MetaItemInfoTag} | 商品のメタ情報のタグ `例) <head>... {block:ItemPage}{MetaItemInfoTag}{/block:ItemPage} ...</head>` |
| {MetaShopInfoTag} | ショップのメタ情報のタグ `例) <head>... {block:NotItemPage}{MetaShopInfoTag}{/block:NotItemPage} ...</head>` |
| {GoogleAnalyticsTag} | *[必須]* Google Analyticsのタグ。Google Analytics Appsで設定したタグがここに表示されます。自分で直接Google Analyticsタグを貼らないでください。 |

### テンプレート

| 変数 | 説明 |
|-----|-----|
| {UpdateTime} | ファイルの更新時間 |
| {Counter} | 表示されるごとに1から順に数字が表示される特殊な変数です |
| {MaxPageNumber} | 最大ページ数。ページングのajaxで使用する。 |
| {NextPageNumber} | 次のページ。ページングのajaxで使用する。 |
| {IllegalReportMessageTag} | 「違反通報ありがとうございます」のメッセージ。セッションを使って表示しているのでthebase.inドメインのショップでしか表示されません。 |
| {ItemSelectTag} | 商品ページのselectのタグ |
| {EmbedWidgetTag} | 商品ページの外部サイトに貼るのタグ |
| {BASEMenuTag} | *[必須]* BASEメニューのタグ。BASEロゴ非表示Appをインストールしている場合、BASEのロゴが非表示になります (Apps) |
| {ContactContentsTag} | *[必須]* contactページのコンテンツのタグ |
| {PrivacyContentsTag} | *[必須]* プライバシーポリシーページのコンテンツのタグ |
| {LawContentsTag} | *[必須]* 特商法ページのコンテンツのタグ |
| {BlogContentsTag} | blogページのコンテンツのタグ (Apps) |
| {ItemAttentionTag} | *[必須]* 商品ページの注意文のタグ |
| {IllegalReportTag} | *[必須]* 商品ページの通報するのタグ |
| {AddToCartURL} | カートに入れるのURL。POSTのパラメーターが必要です。 |
| {BreadcrumbTag} | パンくずタグ。カテゴリーのページでのみ表示される。 `例)Home > メンズファッション > トップス > Tシャツ` |

### ショップ

| 変数 | 説明 |
|-----|-----|
| {ShopId} | ショップのID |
| {ShopDomain} | ショップのドメイン `例) shop.thebase.in` |
| {ShopURL} | ショップのURL `例) http://shop.thebase.in` |
| {ShopName} | ショップの名前 |
| {ShopIntroduction-origin} | ショップの説明のプレーンテキスト (特殊文字はHTML エンティティに変換される。改行はbrタグに変換される。) |
| {ShopIntroduction} | ショップの説明 (特殊文字はHTML エンティティに変換される。改行はbrタグに変換される。特定の条件をみたす場合、http://,https://から始まる文字列がリンクに変換される) |
| {ShopTwitterId} | ショップのTwitter ID |
| {ShopFacebookId} | ショップのFacebook ID |
| {ShopAmebaId} | ショップのAmeba ID |
| {ShopInstagramId} | ショップのInstagram ID |
| {ShopDeepLink} | ショップのディープリンク。アプリがない場合はウェブへリダイレクト。 |

### デザインオプション

| 変数 | 説明 |
|-----|-----|
| {NavColor} | ナビゲーションのカラー |
| {TextColor} | テキストのカラー |
| {LinkColor} | リンクのカラー |
| {LogoTag} | *[必須]* ロゴのタグ |
| {BackgroundTag} | *[必須]* バックグラウンドのタグ |

### 商品

| 変数 | 説明 |
|-----|-----|
| {ItemId} | 商品のID |
| {ItemTitle} | 商品の名前 |
| {ItemPrice} | 商品の価格 |
| {ItemStock} | 商品の在庫数 |
| {ItemDetail-origin} | 商品の説明のプレーンテキスト (特殊文字はHTML エンティティに変換される。改行はbrタグに変換される) |
| {ItemDetail} | 商品の説明 (特殊文字はHTML エンティティに変換される。改行はbrタグに変換される。特定の条件をみたす場合、http://,https://から始まる文字列がリンクに変換される) |
| {ItemDetailNoBr} | 商品の説明 (特殊文字はHTML エンティティに変換される。改行はbrタグに変換されない) |
| {ItemDigitalContent} | 商品のデジタルコンテンツのファイル名 (デジタルコンテンツAppのインストールが必要) |
| {ItemImage[1-20]URL-origin} | 商品画像のオリジナルサイズ。商品ページのみ使用可。 `例) <img src="{ItemImage2URL-origin}">` |
| {ItemImage[1-20]URL-76} | 商品画像の76pxサイズ。取得できなかった場合はオリジンサイズ。2~20は商品ページのみ使用可。 |
| {ItemImage[1-20]URL-146} | 商品画像の146pxサイズ。取得できなかった場合はオリジンサイズ。2~20は商品ページのみ使用可。 |
| {ItemImage[1-20]URL-300} | 商品画像の300pxサイズ。取得できなかった場合はオリジンサイズ。2~20は商品ページのみ使用可。 |
| {ItemImage[1-20]URL-500} | 商品画像の500pxサイズ。取得できなかった場合はオリジンサイズ。2~20は商品ページのみ使用可。 |
| {ItemImage[1-20]URL-640} | 商品画像の640pxサイズ。取得できなかった場合はオリジンサイズ。2~20は商品ページのみ使用可。 |
| {ItemImageCount} | 商品画像の枚数。商品ページのみ使用可。 |
| {ItemNoImageURL} | no imageの画像 |
| {ItemDeepLink} | 商品のディープリンク。アプリがない場合はウェブへリダイレクト。 |

### Apps

| 変数 | 説明 |
|-----|-----|
| {AppsItemCategoryTag} | *[非推奨]* カテゴリーのタグ。大カテゴリーだけ表示される。 (カテゴリーAppのインストールが必要) |
| {AppsItemCategoryCategoriesTag} | カテゴリーのタグ。大カテゴリーと中カテゴリーが表示される。 (カテゴリーAppのインストールが必要) |
| {AppsI18nTag} | 言語切替のタグ (海外対応Appのインストールが必要) |
| {AppsItemLabelTag} | 商品ラベルのタグ (ラベルAppのインストールが必要) |
| {AppsItemCategoryCategoryName} | カテゴリーの名前 (カテゴリーAppのインストールが必要) `例) {block:AppsItemCategoryCategories}{AppsItemCategoryCategoryName}{/block:AppsItemCategoryCategories}` |
| {AppsItemCategoryCategoryCount} | *[非推奨]* カテゴリーの商品数 (カテゴリーAppのインストールが必要) `例) {block:AppsItemCategoryCategories}{AppsItemCategoryCategoryName} ({AppsItemCategoryCategoryCount}){/block:AppsItemCategoryCategories}` |
| {AppsItemCategoryCategoryPageURL} | カテゴリーのページのURL (カテゴリーAppのインストールが必要) `例) {block:AppsItemCategoryCategories}<a href="{AppsItemCategoryCategoryPageURL}">{AppsItemCategoryCategoryName}</a>{/block:AppsItemCategoryCategories}` |
| {AppsItemCategoryMediumCategoryName} | 中カテゴリーの名前 (カテゴリーAppのインストールが必要) |
| {AppsItemCategoryMediumCategoryPageURL} | 中カテゴリーのページのURL (カテゴリーAppのインストールが必要) |
| {AppsItemCategoryChildCategoryName} | 子カテゴリーの名前 (カテゴリーAppのインストールが必要) |
| {AppsItemCategoryChildCategoryPageURL} | 子カテゴリーのページのURL (カテゴリーAppのインストールが必要) |
| {AppsReviewTag} | レビューのタグ。商品ページでのみ表示される。 (レビューAppのインストールが必要) |

### ローカライズテキスト

| 変数 | 説明 |
|-----|-----|
| {lang:Privacy} | プライバシーポリシー |
| {lang:Law} | 特定商取引法に基づく表記 |
| {lang:AddToCart} | カートに入れる |
| {lang:NoItemInquiry} | 再入荷についてお問い合わせをする |
| {lang:NoItemsMessage} | 出品されている商品がありません。 |
| {lang:NotShopPublicMessage} | [ショップ名]は、現在準備中です。 |
| {lang:SeeDetails} | 詳細を見る |
| {lang:Tweet} | ツイート |
| {lang:ItemSearchResult} | "[検索キーワード]"の検索結果 |

### ソーシャル

| 変数 | 説明 |
|-----|-----|
| {TwitterDataHashtags} | Twitterのハッシュタグ。BASEec。BASEロゴ非表示Appをインストールしている時は空文字。 |
| {TwitterDataVia} | Twitterのvia。ショップのTwitter ID。ショップのTwitter IDを設定していない時はBASEec。BASEロゴ非表示Appをインストールしている時は空文字。 |

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

ヘッダーに特殊なmeta imageタグを記述することで設定することができます。imageの値があるかチェックするブロックも設定されます。値がない場合は1pxの透過の画像を返します。登録できるimageは最大18個までです。

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

## Apps別対応方法の詳細

Appsごとの対応方法の詳細は以下の各ページをご確認ください。

- [カテゴリ管理App](apps/item_category.md)
- [商品検索App](apps/search.md)
- [レビューApp](apps/review.md)

## お問い合わせ

developers[at]thebase.in

BASE Developers [https://developers.thebase.in](https://developers.thebase.in)

Facebookグループ [https://www.facebook.com/groups/415137698681164/](https://www.facebook.com/groups/415137698681164/)
