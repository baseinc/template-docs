{block:NotLoadItemsPage}
<!DOCTYPE html>
<head>
<meta charset="utf-8">
{FaviconTag}
<title>{PageTitle}</title>
{JQueryTag}
<script src="/js/jquery.bottom-1.0.js"></script>

{block:Hidden}
<!-- デザイン設定 ここから -->
<meta name="if:iconCircle" content="1"><!-- ロゴを丸くするか -->
<meta name="color:mainColor" content="#fff"><!-- メインカラーの設定 -->
<meta name="select:mainFont" content="YuGothic" title="YuGothic">
<meta name="select:mainFont" content="AXIS Std" title="AXIS Std">
<meta name="select:mainFont" content="Hiragino Kaku Gothic Pro" title="Hiragino Kaku Gothic Pro">
<meta name="select:mainFont" content="Meiryo" title="Meiryo">

<meta name="text:sampleText" content="サンプルテキスト">
<meta name="image:Piyo image" content="">
<!-- デザイン設定 ここまで -->
{/block:Hidden}

{BackgroundTag}
<style type="text/css">
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}
body{
    color: #444;
    font-family: {select:mainFont},'MSP ゴシック',sans-serif;
    position: relative;
}
li{
    list-style: none;
}

/*
 * .headerFixed 
 */
.headerFixed{
    background-color:  {color:mainColor};
    height: 45px;
    left: 0;
    line-height: 45px;
    position: fixed;
    right: 0;
    top: 0;
    z-index: 2;
}
#baseMenu{
    position: absolute;
    top: 0;
    right: 10px;
}
#baseMenu a{
    line-height: 45px;
}
#baseMenu img{
    height: 45px;
    padding: 11px;
}
#baseMenu ul{
    display: table;
}
#baseMenu ul li{
    display: table-cell;
    height: 45px;
}
#baseMenu .base{}

/*
 * mainContent 
 */
.mainContent{
    margin-left: auto;
    margin-right: auto;
    max-width: 640px;
}

/*
 * header 
 */
.header{
    margin-top: 45px;
}
.headerWrapper{
    margin: 0 10px;
}
.logoImage{
    {block:if-iconCircle}
    border-radius: 50%;
    {/block:if-iconCircle}
}

/*
 * header 
 */
.header{
    color: #444;
    text-align: center;
}
.headerWrapper{
    margin: 0 10px;
}
.header__title{
    font-size: 42px;
    line-height: 1.2;
    padding: 20px;
}
.header__title a{
    color: #444;
    text-decoration: none;
}
.header__description{
    font-size: 14px;
    font-weight: normal;
}

/*
 * footer 
 */
.footer{
    margin-top: 15px;
    text-align: center;
}

/*
 * main 
 */
.main{
    margin-top: 15px;
}
.mainWrapper{
    margin: 0 10px;
}

/*
 * navigation 
 */
.navigation{}
.navigation a{
    color: #444;
    font-weight: bold;
}

/*
 * item 
 */
.item{
    background-color: #fff;
    border-radius: 3px;
    margin-bottom: 15px;
    padding: 15px;
    position: relative;
}
.item__image{
    width:100%;
}
.item__title{}
.item__price{}


.cover{
    bottom:0;
    left:0;
    right:0;
    top:0;
}
.cover--absolute{
    position: absolute;
}

</style>
</head>
<body>
<div class="headerFixed">
    {text:sampleText}
    {BASEMenuTag}
</div>


<!-- 公開ここから -->
{block:ShopPublic}

    <div class="mainContent">
        <!-- 共通ヘッダー ここから -->
        <header class="header">
            <div class="headerWrapper">
                <h1 class="header__title"><a href="{IndexPageURL}">
                    {LogoTag}
    <!---
                    {block:ItemPage}
                    {ItemPageURL} - 
                    {/block:ItemPage}
                    {PageTitle}
    -->
                </a></h1>
                <nav class="navigation">
        			<ul>
        				<li><a href="{IndexPageURL}">HOME</a></li>
        				<li><a href="{AboutPageURL}">ABOUT</a></li>
        				{block:AppsBlog}
        				<li><a href="{BlogPageURL}">BLOG</a></li>
        				{/block:AppsBlog}
        				<li><a href="{ContactPageURL}">CONTACT</a></li>
        			</ul>
                </nav>
                <h2 class="header__description">{ShopIntroduction}</h2>
            </div><!-- /.headerWrapper -->
        </header><!-- /.header -->
        <!-- 共通ヘッダー ここまで -->
    
        <!-- ページ別 ここから -->
        <main class="main">
            <div class="mainWrapper">
                <!-- トップページ ここから -->
                {block:IndexPage}
                    <div id="itemIndex" data-max-page="{MaxPageNumber}" data-next-page="{NextPageNumber}">
                    {block:Items}
                        <div class="item">
                            <a href="{ItemPageURL}" class="cover cover--absolute"></a>
                            {block:ItemImage1}
                            <img class="item__image" src="{ItemImage1URL-origin}">
                            {/block:ItemImage1}
                            {block:NoItemImage1}
                            <img class="item__image" src="{ItemNoImageURL}">
                            {/block:NoItemImage1}

                            <span class="item__title">{ItemTitle}</span>
                             ⁄ 
                            <span class="item__price">{ItemPrice}</span>
                        </div>
                    {/block:Items}
            		<div id="loading" style="display: none;width: 100%;text-align:center;"><img src="/img/loading.gif" style="width: 220px;" /></div>
                    </div><!-- /#itemIndex -->


<script type="text/javascript">
	var process_flg = false;
	var end_flg = false;
	$(window).bottom({proximity: 0});
	$(window).on('bottom', function() {
		if (process_flg == false && end_flg == false) {
			var max_page = $("#itemIndex").attr('data-max-page');
			var next_page = $("#itemIndex").attr('data-next-page');
			if (eval(max_page) >= eval(next_page)) {
				$.ajax({
					url: "{LoadItemsPageURL}" + next_page + "{LoadItemsPageURLParams}",
					dataType: 'html',
					beforeSend: function () {
						process_flg = true;
						$('#loading').css('display', 'block');
					},
					success: function (data) {
						$('#itemIndex').append(data);
						next_page = eval(next_page) + 1;
						$("#itemIndex").attr('data-next-page', next_page);
					},
					complete: function () {
						process_flg = false;
						$('#loading').css('display', 'none');
					}
				});
			} else {
				end_flg = true;
			}
		}
	});
</script>
                {/block:IndexPage}
                <!-- トップページ ここまで -->
                <!-- 商品ページ ここから -->
                {block:ItemPage}
                    <div class="item">
                        {block:ItemImage1}
                        <img class="item__image" src="{ItemImage1URL-origin}">
                        {/block:ItemImage1}
                        {block:NoItemImage1}
                        <img class="item__image" src="{ItemNoImageURL}">
                        {/block:NoItemImage1}
                        
    					<form id="purchase_form" name="menu" action="{AddToCartURL}" method="post">
						{ItemSelectTag}
						{block:HasItemStock}
						<input type="submit" value="{lang:AddToCart}" class="buttonHover">
						{/block:HasItemStock}
    					</form>

                        <span class="item__title">{ItemTitle}</span>
                         ⁄ 
                        <span class="item__price">{ItemPrice}</span>
                    </div>

                    {ItemAttentionTag}
                    {IllegalReportTag}
                {/block:ItemPage}
                <!-- 商品ページ ここまで -->
                
                <!-- aboutページ ここから -->
                {block:AboutPage}
                {/block:AboutPage}
                <!-- aboutページ ここまで -->
                
                <!-- お問い合わせページ ここから -->
                {block:ContactPage}
                {ContactContentsTag}
                {/block:ContactPage}
                <!-- お問い合わせページ ここまで -->
                
                <!-- ページ ここから -->
                {block:PrivacyPage}
                {PrivacyContentsTag}
                {/block:PrivacyPage}
                <!-- ページ ここまで -->
                
                <!-- 特商法ページ ここから -->
                {block:LawPage}
                {LawContentsTag}
                {/block:LawPage}
                <!-- 特商法ページ ここまで -->
                
                <!-- blogページ ここから -->
                {block:BlogPage}
                {BlogContentsTag}
                {/block:BlogPage}
                <!-- blogページ ここまで -->
            </div><!-- /.mainWrapper -->
        </main><!-- /.main -->
        <!-- ページ別 ここまで -->
    </div><!-- /.mainContent -->

    <footer class="footer">
        <div><a href="{PrivacyPageURL}">プライバシーポリシー</a></div>
        <div><a href="{LawPageURL}">特定商取引法に基づく表記</a></div>
    </footer>
<!-- 公開ここまで -->
{/block:ShopPublic}

<!-- 全ページ必須 -->
{GoogleAnalyticsTag}
</body>
</html>
{/block:NotLoadItemsPage}
<!-- ajax商品ロード用 ここから -->
{block:LoadItemsPage}
{block:Items}
<div class="item">
    <a href="{ItemPageURL}" class="cover cover--absolute"></a>
    {block:ItemImage1}
    <img class="item__image" src="{ItemImage1URL-origin}">
    {/block:ItemImage1}
    {block:NoItemImage1}
    <img class="item__image" src="{ItemNoImageURL}">
    {/block:NoItemImage1}

    <span class="item__title">{ItemTitle}</span>
     ⁄ 
    <span class="item__price">{ItemPrice}</span>
</div>
{/block:Items}
{/block:LoadItemsPage}
<!-- ajax商品ロード用 ここまで -->


