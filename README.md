# BASE Templateドキュメント
BASE Templateのドキュメントです。BASE Templateを使うにはHTML、CSS、JavaScriptの基本的な知識が必須です。

## はじめに
BASE Templateとは、BASEのショップのテンプレートを編集できる機能のことです。テンプレートを自由に編集して、自分のオリジナルのテーマを作りましょう。

## 利用開始
1. テンプレート編集Appをインストール。
2. メニューのデザイン編集をクリック。
3. HTMLを編集するをクリック。

BASE Templateは独自タグを使って編集します。独自タグには変数とブロックの2種類があります。

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

## 独自タグの説明

### ループ

| タグ名 | 説明 |
|--------|------|
| {block:Items} | 商品 |
| {block:AppsItemCategoryCategories} |  |

### if 非表示

| タグ名 | 説明 |
|--------|------|
| {block:Hidden} |  |

### if イテレータ

| タグ名 | 説明 |
|--------|------|
| {block:Item[1-24]} |  |
| {block:NotItem[1-24]} |  |
| {block:Odd} |  |
| {block:Even} |  |

### if ページ

| タグ名 | 説明 |
|--------|------|
| {block:IndexPage} |  |
| {block:ItemPage} |  |
| {block:AboutPage} |  |
| {block:ContactPage} |  |
| {block:PrivacyPage} |  |
| {block:LawPage} |  |
| {block:BlogPage} |  |
| {block:NotIndexPage} |  |
| {block:NotItemPage} |  |
| {block:NotAboutPage} |  |
| {block:NotContactPage} |  |
| {block:NotPrivacyPage} |  |
| {block:NotLawPage} |  |
| {block:NotBlogPage} |  |
| {block:LoadItemsPage} |  |
| {block:NotLoadItemsPage} |  |
| {block:IndexPageCategory} |  |
| {block:NotIndexPageCategory} |  |

### if ショップ

| タグ名 | 説明 |
|--------|------|
| {block:ShopTwitterId} |  |
| {block:ShopFacebookId} |  |
| {block:ShopAmebaId} |  |
| {block:ShopInstagramId} |  |
| {block:NoShopTwitterId} |  |
| {block:NoShopFacebookId} |  |
| {block:NoShopAmebaId} |  |
| {block:NoShopInstagramId} |  |
| {block:ShopPublic} |  |
| {block:NotShopPublic} |  |

### if デザインオプション

| タグ名 | 説明 |
|--------|------|
| {block:NavColor} |  |
| {block:TextColor} |  |
| {block:LinkColor} |  |

### if 商品

| タグ名 | 説明 |
|--------|------|
| {block:HasItems} |  |
| {block:NoItems} |  |
| {block:HasItemStock} |  |
| {block:NoItemStock} |  |
| {block:ItemDigitalContent} |  |
| {block:ItemImage1} |  |
| {block:ItemImage2} |  |
| {block:ItemImage3} |  |
| {block:ItemImage4} |  |
| {block:ItemImage5} |  |
| {block:NoItemImage1} |  |
| {block:NoItemImage2} |  |
| {block:NoItemImage3} |  |
| {block:NoItemImage4} |  |
| {block:NoItemImage5} |  |

### if Apps

| タグ名 | 説明 |
|--------|------|
| {block:AppsItemCategory} |  |
| {block:AppsBlog} |  |
| {block:AppsI18n} |  |
| {block:AppsDownload} |  |
| {block:AppsItemLabel} |  |

### BASE

| タグ名 | 説明 |
|--------|------|
| {BASEURL} |  |
| {BASEDomain} |  |

### ページ

| タグ名 | 説明 |
|--------|------|
| {IndexPageURL} |  |
| {ItemPageURL} |  |
| {AboutPageURL} |  |
| {BlogPageURL} |  |
| {ContactPageURL} |  |
| {PrivacyPageURL} |  |
| {LawPageURL} |  |
| {LoadItemsPageURL} |  |
| {LoadItemsPageURLParams} |  |

### HTMLヘッダー

| タグ名 | 説明 |
|--------|------|
| {PageTitle} |  |
| {HeadLinkNextPrevTag} |  |
| {MetaItemInfoTag} |  |
| {MetaShopInfoTag} |  |
| {GoogleAnalyticsTag} | 必須 |

### テンプレート

| タグ名 | 説明 |
|--------|------|
| {Counter} |  |
| {MaxPageNumber} |  |
| {NextPageNumber} |  |
| {IndexPageCategory} |  |
| {URLEncodedIndexPageCategory} |  |
| {IllegalReportMessageTag} |  |
| {ItemSelectTag} |  |
| {EmbedWidgetTag} |  |
| {BASEMenuTag} | 必須 |
| {ContactContentsTag} | 必須 |
| {PrivacyContentsTag} | 必須 |
| {LawContentsTag} | 必須 |
| {BlogContentsTag} |  |
| {ItemAttentionTag} | 必須 |
| {IllegalReportTag} | 必須 |

### ショップ

| タグ名 | 説明 |
|--------|------|
| {ShopId} |  |
| {ShopDomain} |  |
| {ShopURL} |  |
| {URLEncodedShopURL} |  |
| {ShopName} |  |
| {URLEncodedShopName} |  |
| {ShopIntroduction} |  |
| {ShopTwitterId} |  |
| {ShopFacebookId} |  |
| {ShopAmebaId} |  |
| {ShopInstagramId} |  |

### デザインオプション

| タグ名 | 説明 |
|--------|------|
| {NavColor} |  |
| {TextColor} |  |
| {LinkColor} |  |
| {LogoTag} | 必須 |
| {BackgroundTag} | 必須 |

### 商品

| タグ名 | 説明 |
|--------|------|
| {ItemId} |  |
| {ItemTitle} |  |
| {ItemPrice} |  |
| {ItemStock} |  |
| {ItemDetail} |  |
| {ItemDetailNoBr} |  |
| {ItemDigitalContent} |  |
| {ItemImage1URL-origin} |  |
| {ItemImage2URL-origin} |  |
| {ItemImage3URL-origin} |  |
| {ItemImage4URL-origin} |  |
| {ItemImage5URL-origin} |  |
| {ItemImage1URL-76} |  |
| {ItemImage2URL-76} |  |
| {ItemImage3URL-76} |  |
| {ItemImage4URL-76} |  |
| {ItemImage5URL-76} |  |
| {ItemImage1URL-146} |  |
| {ItemImage2URL-146} |  |
| {ItemImage3URL-146} |  |
| {ItemImage4URL-146} |  |
| {ItemImage5URL-146} |  |
| {ItemImage1URL-300} |  |
| {ItemImage2URL-300} |  |
| {ItemImage3URL-300} |  |
| {ItemImage4URL-300} |  |
| {ItemImage5URL-300} |  |
| {ItemImage1URL-500} |  |
| {ItemImage2URL-500} |  |
| {ItemImage3URL-500} |  |
| {ItemImage4URL-500} |  |
| {ItemImage5URL-500} |  |
| {ItemImage1URL-640} |  |
| {ItemImage2URL-640} |  |
| {ItemImage3URL-640} |  |
| {ItemImage4URL-640} |  |
| {ItemImage5URL-640} |  |
| {ItemNoImageURL} |  |

### Apps

| タグ名 | 説明 |
|--------|------|
| {AppsItemCategoryTag} |  |
| {AppsI18nTag} |  |
| {AppsItemLabelTag} |  |
| {AppsItemCategoryCategoryName} |  |
| {AppsItemCategoryCategoryCount} |  |
| {AppsItemCategoryCategoryPageURL} |  |

### ローカライズテキスト

| タグ名 | 説明 |
|--------|------|
| {lang:Privacy} |  |
| {lang:Law} |  |
| {lang:AddToCart} |  |
| {lang:NoItemsMessage} |  |
| {lang:NotShopPublicMessage} |  |
| {lang:SeeDetails} |  |
| {lang:Tweet} |  |

## デザインオプションの独自設定


