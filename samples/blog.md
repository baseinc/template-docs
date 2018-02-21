# Blog Appの対応

ブログを表示するAppsです。

## 関連するテンプレート変数

### if ページ

| 変数 | 説明 |
|-----|-----|
| {block:BlogPage} | blogページ (Apps) |
| {block:NotBlogPage} | blogページではない (Apps) |

### if Apps

| 変数 | 説明 |
|-----|-----|
| {block:AppsBlog} | Blog Appをインストールしている |
| {block:AppsBlogArticleIsPinned} | ブログ固定記事がある |

### ページ

| 変数 | 説明 |
|-----|-----|
| {BlogPageURL} | blogページのURL (Apps) |
| {BlogFeedPageURL} | blogのRSSページのURL (Apps) |

### テンプレート

| 変数 | 説明 |
|-----|-----|
| {BlogContentsTag} | blogページのコンテンツのタグ (Apps) |

### Apps

| 変数 | 説明 |
|-----|-----|
| {AppsBlogArticleTitle} | ブログ記事のタイトル |
| {AppsBlogArticlePageURL} | ブログ記事ページのURL |

## ブログ固定記事の表示

*例)*

```
{block:AppsBlogArticleIsPinned}
<div><a href="{AppsBlogArticlePageURL}">{AppsBlogArticleTitle}</a></div>
{/block:AppsBlogArticleIsPinned}
```

## ブログRSSで記事を取得して表示

*例)*

```
<script>
$(function(){
    $.ajax({
        url: '{BlogFeedPageURL}',
        type: 'GET',
        dataType: 'xml',
    })
    .done(function(data) {
        $('item', data).each(function() {
            var link = $('link', this).text();
            var title = $('title', this).text();
            var image = $('image', this).text();
            var blog_content = '<div><a href="' + link + '"><img src="' + image + '"><p>' + title + '</p></a></div>';
//alert(link + ' : ' + title + ' : ' + image);
            $('#container').append(blog_content);
        });
    });
});
</script>
```

