# 関連商品の対応

商品ページに関連商品を表示することができます。関連商品を表示することで回遊率が上がります。

## 関連商品の表示

*例)*

```
{block:HasRelatedItems}
<div>関連商品</div>
{block:RelatedItems}
    <div><a href="{RelatedItemPageURL}"><img src="{RelatedItemImageURL-640}"></a></div>
    <div>{RelatedItemTitle} / {RelatedItemPrice}<div>
{/block:RelatedItems}
{/block:HasRelatedItems}
```
