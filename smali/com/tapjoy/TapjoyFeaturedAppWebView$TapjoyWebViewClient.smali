.class Lcom/tapjoy/TapjoyFeaturedAppWebView$TapjoyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "TapjoyFeaturedAppWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyFeaturedAppWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TapjoyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyFeaturedAppWebView;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TapjoyFeaturedAppWebView;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TapjoyFeaturedAppWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TapjoyFeaturedAppWebView;Lcom/tapjoy/TapjoyFeaturedAppWebView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tapjoy/TapjoyFeaturedAppWebView;
    .param p2, "x1"    # Lcom/tapjoy/TapjoyFeaturedAppWebView$1;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyFeaturedAppWebView$TapjoyWebViewClient;-><init>(Lcom/tapjoy/TapjoyFeaturedAppWebView;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TapjoyFeaturedAppWebView;

    invoke-static {v0}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->access$300(Lcom/tapjoy/TapjoyFeaturedAppWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 125
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 132
    const-string v4, "Featured App"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URL = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v4, "showOffers"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 137
    const-string v4, "Featured App"

    const-string v5, "show offers"

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v4, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TapjoyFeaturedAppWebView;

    invoke-static {v4}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->access$400(Lcom/tapjoy/TapjoyFeaturedAppWebView;)V

    .line 180
    :goto_0
    return v7

    .line 142
    :cond_0
    const-string v4, "dismiss"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 144
    const-string v4, "Featured App"

    const-string v5, "dismiss"

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v4, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TapjoyFeaturedAppWebView;

    invoke-static {v4}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->access$500(Lcom/tapjoy/TapjoyFeaturedAppWebView;)V

    goto :goto_0

    .line 148
    :cond_1
    const-string v4, "market"

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_2

    .line 150
    const-string v4, "Featured App"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Market URL = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :try_start_0
    const-string v4, "q="

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "str":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://market.android.com/search?q=pname:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&referrer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TapjoyFeaturedAppWebView;

    invoke-static {v5}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->access$600(Lcom/tapjoy/TapjoyFeaturedAppWebView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "composeedURL":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 157
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TapjoyFeaturedAppWebView;

    invoke-virtual {v4, v2}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->startActivity(Landroid/content/Intent;)V

    .line 158
    const-string v4, "Featured App"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Open URL of application = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 160
    .end local v0    # "composeedURL":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "str":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Featured App"

    const-string v5, "Android market is unavailable at this device. To view this link install market."

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v4, "ws.tapjoyads.com"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 169
    const-string v4, "Featured App"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Open redirecting URL = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 175
    :cond_3
    const-string v4, "Featured App"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Opening URL in new browser = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 177
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TapjoyFeaturedAppWebView;

    invoke-virtual {v4, v2}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
