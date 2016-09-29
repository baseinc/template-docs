# カテゴリ管理Appの対応

商品をカテゴリ管理できるAppです。
2016/9/27の改修により、3階層までカテゴリを設定できるようになりました。

## カテゴリの各階層の名称について

３階層カテゴリの各階層について、上位階層の方から順に ***大カテゴリ > 中カテゴリ > 小カテゴリ*** という名称を用いています。

また、ある階層における一つ下の階層を***子カテゴリ***と呼びます。大カテゴリの子カテゴリは中カテゴリ、中カテゴリの子カテゴリは小カテゴリとなります。
```
大カテゴリ
┗ 中カテゴリ （大カテゴリの子カテゴリ）
    ┗ 小カテゴリ （中カテゴリの子カテゴリ）
```
*※カテゴリAppが3階層に対応する以前に作成されたカテゴリは、すべて大カテゴリとして扱われます。*

上記を踏まえた上で、以下のテンプレート変数の説明をご覧ください。

## 関連するテンプレート変数

### if ページ

| タグ名 | 説明 |
|--------|------|
| {block:IndexPageCategory} | トップページのカテゴリがある |
| {block:NoIndexPageCategory} | トップページのカテゴリがない |

### if Apps

| タグ名 | 説明 |
|--------|------|
| {block:AppsItemCategory} | カテゴリAppsをインストールしている |

### ページ

| タグ名 | 説明 |
|--------|------|
| {IndexPageCategory} | トップページのカテゴリ。 `例) {block:IndexPageCategory}{IndexPageCategory}{/block:IndexPageCategory}` |

### テンプレート

| タグ名 | 説明 |
|--------|------|
| {BreadcrumbTag} | パンくずタグ。カテゴリのページで表示される。 |

### Apps
| タグ名 | 説明 |
|--------|------|
| {AppsItemCategoryTag} | *[非推奨]* カテゴリのタグ。大カテゴリだけ表示される。 (カテゴリAppsのインストールが必要) |
| {AppsItemCategoryCategoriesTag} | カテゴリのタグ。大カテゴリと中カテゴリが表示される。 (カテゴリAppsのインストールが必要) |
| {AppsItemCategoryCategoryName} | カテゴリの名前 (カテゴリAppsのインストールが必要) `例) {block:AppsItemCategoryCategories}{AppsItemCategoryCategoryName}{/block:AppsItemCategoryCategories}` |
| {AppsItemCategoryCategoryCount} | *[非推奨]* カテゴリの商品数 (カテゴリAppsのインストールが必要) `例) {block:AppsItemCategoryCategories}{AppsItemCategoryCategoryName} ({AppsItemCategoryCategoryCount}){/block:AppsItemCategoryCategories}` |
| {AppsItemCategoryCategoryPageURL} | カテゴリのページのURL (カテゴリAppsのインストールが必要) `例) {block:AppsItemCategoryCategories}<a href="{AppsItemCategoryCategoryPageURL}">{AppsItemCategoryCategoryName}</a>{/block:AppsItemCategoryCategories}` |
| {AppsItemCategoryMediumCategoryName} | 中カテゴリの名前 (カテゴリAppsのインストールが必要) |
| {AppsItemCategoryMediumCategoryPageURL} | 中カテゴリのページのURL (カテゴリAppsのインストールが必要) |
| {AppsItemCategoryChildCategoryName} | 子カテゴリの名前 (カテゴリAppsのインストールが必要) |
| {AppsItemCategoryChildCategoryPageURL} | 子カテゴリのページのURL (カテゴリAppsのインストールが必要) |


## グローバルナビゲーションのカテゴリ

グローバルナビゲーションでカテゴリの一覧を表示する場合、最も簡単な方法は ***{AppsItemCategoryCategoriesTag}*** を利用する方法です。

BASEでは、グローバルナビゲーションでは第二階層（中カテゴリ）までしか表示させない前提の設計となっております。

*例)*

```
{block:AppsItemCategory}
	{AppsItemCategoryCategoriesTag}
{/block:AppsItemCategory}

↓
#以下のようにレンダリングされます。
↓

<ul id="appsItemCategoryTag">
	<li class="appsItemCategoryTag_child">
		<a href="{大カテゴリページへのリンク}" class="mainHeaderNavColor">{大カテゴリ名}</a>
		<ul class="appsItemCategoryTag_lowerchild">
			<li>
				<a href="{中カテゴリページへのリンク}" class="mainHeaderNavColor appsItemCategoryTag_lowerLink">{中カテゴリ名}</a>
			</li>
			<li>・・・</li>
			<li>・・・</li>
		</ul>
	</li>
	<li class="appsItemCategoryTag_child">・・・</li>
	<li class="appsItemCategoryTag_child">・・・</li>
</ul>
```

カテゴリのhtmlを細かく調整したい場合は、***{block:AppsItemCategoryCategories}*** を利用してください。

*例)*

```
{block:AppsItemCategory}
	<ul class="category">
	{block:AppsItemCategoryCategories}
		<!-- 大カテゴリのループ -->
		<li class="category__item"><a href="{AppsItemCategoryCategoryPageURL}">{AppsItemCategoryCategoryName}</a>
			<ul class="category category--medium">
			{block:AppsItemCategoryMediumCategories}
				<!-- 中カテゴリのループ -->
				<li class="category__item"><a href="{AppsItemCategoryMediumCategoryPageURL}">{AppsItemCategoryMediumCategoryName}</a></li>
			{/block:AppsItemCategoryMediumCategories}
			</ul>
		</li>
	{/block:AppsItemCategoryCategories}
	</ul>
{/block:AppsItemCategory}
```


## カテゴリページ

カテゴリのページでは、現在表示されているカテゴリ名や、子カテゴリの一覧の表示、パンくずの表示ができます。

*例) カテゴリ名と子カテゴリ一覧の表示
```
{block:AppsItemCategory}
{block:IndexPageCategory}

	<!-- カテゴリ名をページの見出しとして表示 -->
	<h2 class="categoryTitle01">{IndexPageCategory}</h2>
	
	{block:HasAppsItemCategoryChildCategories}
		<!-- 子カテゴリの一覧を表示 -->
		<ul>
			{block:AppsItemCategoryChildCategories}
				<li><a href="{AppsItemCategoryChildCategoryPageURL}">{AppsItemCategoryChildCategoryName}</a></li>
			{/block:AppsItemCategoryChildCategories}
		</ul>
	{/block:HasAppsItemCategoryChildCategories}

{/block:IndexPageCategory}
{/block:AppsItemCategory}
```

パンくずの表示には、***{BreadcrumbTag}*** を利用します。

パンくずの先頭は必ず「Home」となります。


*例)
```
{block:AppsItemCategory}
{block:IndexPageCategory}

・・・

	{BreadcrumbTag}

・・・
	
{/block:AppsItemCategory}
{/block:IndexPageCategory}

↓
# 例えば
# トップス（大カテゴリ）
# ┗ Tシャツ（中カテゴリ）
#    ┗ Vネック（小カテゴリ）
# というカテゴリ構造で「Vネック」のページにいる場合、以下のようにレンダリングされます。
↓

<ul class="breadcrumb">
	<li class="breadcrumb__child"><a href="{HOMEへのリンク}" class="breadcrumb__link">Home</a></li>
	<li class="breadcrumb__child"><a href="{カテゴリ「トップス」ページへのリンク}" class="breadcrumb__link">トップス</a></li>	
	<li class="breadcrumb__child"><a href="{カテゴリ「Tシャツ」ページへのリンク}" class="breadcrumb__link">Tシャツ</a></li>	
	<li class="breadcrumb__child"><a href="{カテゴリ「Vネック」ページへのリンク}" class="breadcrumb__link">Vネック</a></li>	
</ul>

```


## 動作のチェック
- グローバルナビゲーションでカテゴリの一覧が正しく表示でき、各カテゴリページへのリンクが機能しているか
- カテゴリページでカテゴリ名、子カテゴリのリストが正しく表示できるか
