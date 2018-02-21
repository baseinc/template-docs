# セールAppの対応

セール価格が表示できるAppsです。

## 関連するテンプレート変数

### if 商品

| 変数 | 説明 |
|-----|-----|
| {block:HasItemProperPrice} | 通常価格がある |
| {block:NoItemProperPrice} | 通常価格がない |

### if Apps

| 変数 | 説明 |
|-----|-----|
| {block:AppsSale} | セールAppをインストールしている |

### 商品

| 変数 | 説明 |
|-----|-----|
| {ItemProperPrice} | 商品の通常価格(セール中の商品のみ設定される) |
| {ItemDiscountRate} | 商品の割引率(セール中の商品のみ設定される) |

## セール価格の表示

{ItemProperPrice}(通常価格)が設定されている商品がセール中の商品です。通常価格が設定されているかどうかで価格の部分の表示を変えてください。

*例)*

```
{block:NoItemProperPrice}
<div>{ItemPrice}</div>
{/block:NoItemProperPrice}
{block:HasItemProperPrice}
<div>{ItemDiscountRate}</div>
<div>{ItemProperPrice}</div>
<div>{ItemPrice}</div>
{/block:HasItemProperPrice}
```

## 動作のチェック
- 通常価格が設定されている場合にセール価格が表示されるか
