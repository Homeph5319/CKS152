.class Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "TJCOffersWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCOffersWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TapjoyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJCOffersWebView;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TJCOffersWebView;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TJCOffersWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TJCOffersWebView;Lcom/tapjoy/TJCOffersWebView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tapjoy/TJCOffersWebView;
    .param p2, "x1"    # Lcom/tapjoy/TJCOffersWebView$1;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;-><init>(Lcom/tapjoy/TJCOffersWebView;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TJCOffersWebView;

    invoke-static {v0}, Lcom/tapjoy/TJCOffersWebView;->access$100(Lcom/tapjoy/TJCOffersWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 95
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 102
    const-string v5, "Offers"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "URL = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v5, "market"

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-le v5, v6, :cond_0

    .line 106
    const-string v5, "Offers"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Market URL = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :try_start_0
    const-string v5, "q="

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, "str":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://market.android.com/search?q=pname:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&referrer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TJCOffersWebView;

    invoke-static {v6}, Lcom/tapjoy/TJCOffersWebView;->access$200(Lcom/tapjoy/TJCOffersWebView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "composeedURL":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 113
    .local v3, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TJCOffersWebView;

    invoke-virtual {v5, v3}, Lcom/tapjoy/TJCOffersWebView;->startActivity(Landroid/content/Intent;)V

    .line 114
    const-string v5, "Offers"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Open URL of application = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v0    # "composeedURL":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "str":[Ljava/lang/String;
    :goto_0
    return v9

    .line 116
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TJCOffersWebView;

    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TJCOffersWebView;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const-string v7, "Android market is unavailable at this device. To view this link install market."

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const-string v7, "OK"

    new-instance v8, Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient$1;

    invoke-direct {v8, p0}, Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient$1;-><init>(Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TJCOffersWebView;->access$302(Lcom/tapjoy/TJCOffersWebView;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 129
    :try_start_1
    iget-object v5, p0, Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TJCOffersWebView;

    invoke-static {v5}, Lcom/tapjoy/TJCOffersWebView;->access$300(Lcom/tapjoy/TJCOffersWebView;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    :goto_1
    const-string v5, "Offers"

    const-string v6, "Android market is unavailable at this device. To view this link install market."

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :catch_1
    move-exception v2

    .line 133
    .local v2, "exp":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 141
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "exp":Ljava/lang/Exception;
    :cond_0
    const-string v5, "ws.tapjoyads.com"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 143
    const-string v5, "Offers"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Open redirecting URL = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_1
    const-string v5, "Offers"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Opening URL in new browser = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 151
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TJCOffersWebView;

    invoke-virtual {v5, v3}, Lcom/tapjoy/TJCOffersWebView;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
