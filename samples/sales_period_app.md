# 販売期間設定Appの対応

※ こちらの機能は開発中のものになります。

商品に販売期間を設定し、販売期間前の商品を販売予告ページとして公開できるAppです。

## 販売期間設定App利用時の商品のステータスについて

販売期間設定Appでは、商品の販売期間を設定できます。

販売期間が設定されると、商品のステータスは以下のように遷移します。

<img src="https://raw.githubusercontent.com/baseinc/template-docs/images/sales_period_status.png" width="600">

上記の図のように、販売期間設定された商品については、以下の3つのステータスがあります。

| ステータス | 説明 |
|-----|-----|
| 販売予告 | 商品が販売期間前のとき |
| 販売中 | 商品が販売期間中のとき |
| 販売終了 | 商品が販売期間終了後のとき |

これを前提として、以下の説明にお進みください。


## 関連するテンプレート変数

### 販売期間設定された商品のステータスを表す変数

| 変数 | 説明 |
|-----|-----|
| {block:ItemWatingForSale} | 販売期間設定された商品のステータスが `販売予告` のとき |
| {block:ItemNowOnSale} | 商品のステータスが `販売中` のとき（販売期間設定されてない通常の商品も対象） |
| {block:ItemEndOfSale} | 販売期間設定された商品のステータスが `販売終了` のとき |

### 販売期間設定された商品のステータスに応じたテキストを出力する変数

| 変数 | 説明 |
|-----|-----|
| {ItemSaleStatusTag} | 販売期間設定された商品の状態に応じて `COMING SOON` 、 `SOLD OUT` のテキストを表示します。 |

### 購入ボタンの制御に関する変数

| 変数 | 説明 |
|-----|-----|
| {block:PurchaseForm} | カートに入れるform。内部に`{PurchaseButton}`が必要です。 |
| {PurchaseButton} | カートに入れるボタンを表示します。 ボタンのテキストや動作が、商品の状態（売り切れかどうか、販売期間かどうか、など）によって自動的に変わります。 |
| {ItemWatingForSaleButtonTag} | 販売期間が設定されている商品に対し、商品の状態に応じて `販売開始のお知らせを希望する` `販売開始までお待ち下さい` `この商品についてお問い合わせする` のいずれかのボタンを表示します。 |


各タグの詳細、利用方法は以下の「対応が必要なページ」をご覧ください。


# 対応が必要な箇所

- [トップページ（商品一覧）](#トップページ商品一覧)
- [商品ページ（商品のステータス）](#商品ページ商品のステータス)
- [商品ページ（購入ボタンの制御）](#商品ページ購入ボタンの制御)
- [商品ページ（販売開始のお知らせを希望するモーダル）](#商品ページ販売開始のお知らせを希望するモーダル)

## トップページ（商品一覧）

商品一覧の表示で、販売期間設定済みの商品の状態に応じてステータスを表す文言を入れてください。

<img src="https://raw.githubusercontent.com/baseinc/template-docs/images/sales_period_top.png" width="600">

### 実装例1

`{ItemSaleStatusTag}` を利用すれば、 販売期間の設定された商品の状態に応じて、自動的に `COMING SOON` `SOLD OUT` を表示させることができます。

（販売予告の商品がCOMING SOON、販売終了の商品がSOLD OUT）

```
<li class="item">
・・・
{block:HasItemStock}
  ・・・
  <p>{ItemSaleStatusTag}</p>
  ・・・
{/block:HasItemStock}
・・・
</li>
```

### 実装例2

実装例1の　`ItemSaleStatusTag` では、自動的に `COMING SOON` `SOLD OUT` のテキストを表示することができますが、それぞれの場合でスタイルを変えたい場合には次の例のように販売期間設定商品のステータスによって分岐をしてください。

```
<li class="item">
・・・
{block:HasItemStock}
  ・・・
  {block:ItemWatingForSale}
    <p class="waitingForSale">COMING SOON</p>
  {/block:ItemWatingForSale}

  {block:ItemEndOfSale}
    <p class="endOfSale">SOLD OUT</p>
  {/block:ItemEndOfSale}
  ・・・
{/block:HasItemStock}
・・・
</li>
```

## 商品ページ（商品のステータス）

商品一覧と同様の方法で、販売期間設定の状態に応じて `COMING SOON` や `SOLD OUT` の表示をしてください。

<img src="https://raw.githubusercontent.com/baseinc/template-docs/images/sales_period_item.png" width="600">

### 販売開始日時の情報

サンプルの画面イメージ内の、緑枠で囲まれた `xxxx年xx月xx日 00:00から販売`　の部分は、従来の `ItemAttentionTag` で自動的に表示されます。

この部分については、テーマのデザインに応じてスタイルを当ててください。htmlの構造は以下の通りです。

```
販売前で開始日あり、終了日ありの場合
<p class="attention salesPeriod salesPeriod--term">販売期間<br>2019年1月1日 00:00 ~ 2019年1月31日 23:59</p>

販売前で開始日あり、終了日なしの場合
<p class="attention salesPeriod salesPeriod--willStart">2019年1月1日 00:00 から販売</p>

販売終了後の場合
<p class="attention salesPeriod salesPeriod--finish">2019年1月31日 23:59 に販売終了</p>
```


## 商品ページ（購入ボタンの制御）

販売期間設定がされた商品の場合、商品のステータスによって購入ボタンの文言・動きが以下のように変わります。

| 商品のステータス | ボタンのテキスト | ボタンの動作 |
|-----|-----|-----|
| 販売予告 | `販売期間のお知らせを希望する` | メールアドレスを入力するモーダルが開きます |
| 販売開始直前（販売予告かつ、販売開始まで1時間以内） | `販売開始までお待ち下さい` | disabled |
| 販売中 | `カートに入れる` | 通常の動作。カート画面へ遷移 |
| 販売終了 | `この商品についてお問い合わせする` | コンタクトフォームへ遷移 |

このようなボタンの制御について、デザインテーマ側の対応が最小限で済むように、今回新たに購入フォームも含めたタグのセットを用意しました。
`{block:PurchaseForm}` と、 `{PurchaseButton}` になります。　

これまでは `{AddToCartURL}` を利用してformタグを独自で書く仕様でしたが、この新しいタグを利用することによって以下のようにformタグを書かずにシンプルに実装することができます。

### 実装例1

```
{block:PurchaseForm}
  {ItemSelectTag}
  {PurchaseButton}
{/block:PurchaseForm}
```

今後、新たに別のAppsでカートボタンの制御が必要になった場合にも、上記の書き方であれば特に対応の必要がなくなります。

販売期間設定に対応するタイミングで、可能であればこちらのタグをご利用いただくようにお願いいたします。

テーマの構造上、既存の「カートに入れる」ボタンを丸ごと入れ替えることが難しい場合は、既存のカートボタンは残しつつ、販売期間設定用に以下のように書くこともできます。

### 実装例2

```
<form id="purchase_form" name="menu" action="{AddToCartURL}" method="post">
    <!-- 販売開始前 -->
    {block:ItemWatingForSale}
        {ItemWatingForSaleButtonTag}
    {/block:ItemWatingForSale}

    <!-- 販売中 中身が従来の書き方 -->
    {block:ItemNowOnSale}
        {ItemSelectTag}
        {block:HasItemStock}
            <input type="submit" value="{lang:AddToCart}" class="buttonHover">
        {/block:HasItemStock}
        {block:NoItemStock}
            <a href="{ContactPageURL}/items/{ItemId}" class="buttonHover buttonHover--noItem">{lang:NoItemInquiry}</a>
        {/block:NoItemStock}
    {/block:ItemNowOnSale}

    <!-- 販売終了 -->
    {block:ItemEndOfSale}
        {ItemWatingForSaleButtonTag}
    {/block:ItemEndOfSale}
</form>
```

`PurchaseButton` , `ItemWatingForSaleButtonTag` が生成するボタンのパターン（ボタンテキスト、クラス）を以下にまとめます。

ボタンの状態によってスタイルを調整する場合など、参考にしてください。

#### PurchaseButton のパターン

| ボタンのテキスト | クラス |
|-----|-----|
| カートに入れる | `.purchaseButton__btn` `.purchaseButton__btn--addToCart` |
| 再入荷についてお問い合わせをする | `.purchaseButton__btn` `.purchaseButton__btn--noItem` |
| 販売開始のお知らせを希望する | `.purchaseButton__btn` `.purchaseButton__btn--comingSoon` |
| 販売開始までお待ち下さい | `.purchaseButton__btn` `.purchaseButton__btn--comingSoonStay` |
| この商品についてお問い合わせする | `.purchaseButton__btn` `.purchaseButton__btn--endOfSale` |

#### ItemWatingForSaleButtonTag のパターン

| ボタンのテキスト | クラス |
|-----|-----|
| 販売開始のお知らせを希望する | `.purchaseButton__btn` `.purchaseButton__btn--comingSoon` |
| 販売開始までお待ち下さい | `.purchaseButton__btn` `.purchaseButton__btn--comingSoonStay` |
| この商品についてお問い合わせする | `.purchaseButton__btn` `.purchaseButton__btn--endOfSale` |


## 商品ページ（販売開始のお知らせを希望するモーダル）

商品が販売予告ステータスの場合、「販売期間のお知らせを希望する」ボタンをクリックするとメールアドレス入力のモーダルが開きます。

<img src="https://raw.githubusercontent.com/baseinc/template-docs/images/sales_period_modal.png" width="600">

テーマのデザインに応じて、モーダルのスタイルを調整してください。htmlの構造は以下の通りです。

```
<div id="salesPeriodModal" class="x_salesPeriodModal">
	<div id="x_salesPeriodModalInner" class="salesPeriodModal__container">
		<div class="salesPeriodModal__submit">
			<p class="salesPeriodModal__title">販売開始のお知らせを希望する</p>
			<div class="salesPeriodModal__inner">
				<p class="salesPeriodModal__text">メールアドレスを登録すると販売開始の前日にメールでお知らせします。</p>
				<p class="salesPeriodModal__subText">※ @thebase.inからのメール受信許可設定をお願いします。</p>
				<p class="salesPeriodModal__label">メールアドレス</p>
				<input type="text" id="x_salesPeriodModalInput" class="salesPeriodModal__input" placeholder="メールアドレス">
				<p class="salesPeriodModal__error" id="x_salesPeriodModalError"><img class="salesPeriodModal__errorIcon" src="/img/apps/sales-period/attentionTriangle.svg"><span class="salesPeriodModal__errorText" id="x_salesPeriodModalErrorText"></span></p>
				<button type="button" id="x_salesPeriodModalSubmit" class="salesPeriodModal__btn salesPeriodModal__btn--submit">登録する</button>
			</div>
		</div>
		<div class="salesPeriodModal__result">
			<p class="salesPeriodModal__title">登録完了</p>
			<div class="salesPeriodModal__inner">
				<p class="salesPeriodModal__text">メールアドレスの登録が完了しました。</p>
				<p class="salesPeriodModal__subText">※ @thebase.inからのメール受信許可設定をお願いします。</p>
				<button type="button" class="salesPeriodModal__btn salesPeriodModal__btn--close x_salesPeriodModalClose">閉じる</button>
			</div>
		</div>
		<button type="button" class="salesPeriodModal__closeIcon x_salesPeriodModalClose"></button>
	</div>
</div>
```

## テストパターン

テーマ申請の際に下記のテストパターンを確認してください。

<img width="1409" alt="testpattern" src="https://user-images.githubusercontent.com/38424240/52385479-20e03800-2ac5-11e9-9355-ab15e778f797.png">
