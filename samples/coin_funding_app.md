# ショップコインAppの対応

ショップコインページへのリンクを表示します。

## 関連するテンプレート変数

### if Apps

| 変数 | 説明 |
|-----|-----|
| {block:AppsCoinFunding} | ショップコインAppをインストールしている |

### ページ

| 変数 | 説明 |
|-----|-----|
| {CoinFundingPageURL} | ショップコインページのURL |

## ショップコインページへのリンクを表示

*例)*

```
{block:AppsCoinFunding}
<div><a href="{CoinFundingPageURL}">coin</a></div>
{/block:AppsCoinFunding}
```

