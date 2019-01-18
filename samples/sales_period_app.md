# 販売期間設定Appの対応

商品に販売期間を設定し、販売期間前の商品を販売予告ページとして公開できるAppです。

## 販売期間設定App利用時の商品のステータスについて

販売期間設定Appでは、商品の販売期間を設定できます。
販売期間が設定されると、商品のステータスは以下のように遷移します。

<img src="https://raw.githubusercontent.com/baseinc/template-docs/images/sales_period_status.png" width="100%">

## 関連するテンプレート変数

### 販売期間の状態を表す変数

販売期間設定されている商品のステータスに応じたテンプレート変数が用意されています。

| 変数 | 説明 |
|-----|-----|
| {block:ItemWatingForSale} | 販売予告：商品が販売期間前のとき |
| {block:ItemEndOfSale} | 販売中：商品が販売期間中のとき |
| {block:ItemNowOnSale} | 販売終了：商品が販売期間終了後のとき |


商品詳細ページでは、商品が販売予告の時に以下の変数で `COMING SOON` の表示をだすことができます。

| 変数 | 説明 |
|-----|-----|
| {ItemSaleStatusTag} | 商品ページで、販売期間設定された商品の状態に応じて `COMING SOON` の表示をします。 |


### 「カートに入れる」ボタンを表示するための新たな変数

商品ページが「販売予告」状態のとき、商品を購入することはできませんが、「販売期間のお知らせを希望する」のリンクを表示して、購入者がそこからメールアドレスを入力して販売開始時にメールを受け取ることができるようになります。
今回、新たに用意した以下の変数を利用すると、商品の状態に応じて自動的に「カートに入れる」ボタンがのテキスト・動画が自動的に変更されます。

| 変数 | 説明 |
|-----|-----|
| {block:PurchaseForm} | カートに入れるform。内部に`{PurchaseButton}`が必要です。 |
| {PurchaseButton} | カートに入れるボタンを表示します。 ボタンのテキストや動作が、商品の状態（売り切れかどうか、販売期間かどうか、など）によって自動的に変わります。 |

テーマの構造上、既存の「カートに入れる」ボタンを丸ごと入れ替えることが難しい場合は、販売期間設定時用に以下のタグを利用することもできます。

| 変数 | 説明 |
|-----|-----|
| {ItemWatingForSaleButtonTag} | カートに入れるボタンを表示します。 ボタンのテキストや動作が、販売期間設定された商品の状態に応じて自動的に変わります。 |

販売期間の状態に応じた「カートに入れる」ボタンのテキストは以下の通りとなります。

| 販売期間の状態 | ボタンのテキスト | ボタンの動作 |
|-----|-----|-----|
| 販売予告 | `販売期間のお知らせを希望する` | メールアドレスを入力するモーダルが開きます |
| 販売開始直前（販売開始まで25時間以内） | `販売開始までお待ち下さい` | disabled |
| 販売中 | `カートに入れる` | カート画面へ遷移 |
| 販売終了 | `この商品についてお問い合わせする` | コンタクトフォームへ遷移 |



## 対応が必要なページ

### トップページ（商品一覧）
商品一覧の表示で、販売期間前の商品に `COMING SOON` 、販売終了の商品に `SOLD OUT` などの表示を入れてください。

#### 例)
```
{block:HasItemStock}

  ・・・

  {block:ItemEndOfSale}
    <p>SOLD OUT</p>
  {/block:ItemEndOfSale}

  ・・・

  {block:ItemWatingForSale}
    <p>COMING SOON</p>
  {/block:ItemWatingForSale}

  ・・・

{/block:HasItemStock}
```


### 商品詳細ページ

販売期間前の商品に `COMING SOON` 、販売終了の商品に `SOLD OUT` などの表示を入れてください。
#### 例)
```
{block:HasItemStock}
  {block:ItemWatingForSale}
    <p>{ItemSaleStatusTag}</p>
  {/block:ItemWatingForSale}
  {block:ItemEndOfSale}
    <p>SOLD OUT</p>
  {/block:ItemEndOfSale}
{/block:HasItemStock}
```

販売期間の状態に応じて、「カートに入れる」ボタンのテキスト・動作が変わるように、新しい仕様のカートのタグを利用してください。

#### 例)
```
{block:PurchaseForm}
  {ItemSelectTag}
  {PurchaseButton}
{/block:PurchaseForm}
```
