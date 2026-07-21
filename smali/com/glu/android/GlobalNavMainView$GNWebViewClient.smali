.class Lcom/glu/android/GlobalNavMainView$GNWebViewClient;
.super Lcom/glu/android/BaseWebView$BaseWebViewClient;
.source "GlobalNavMainView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GlobalNavMainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GNWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/glu/android/GlobalNavMainView;


# direct methods
.method private constructor <init>(Lcom/glu/android/GlobalNavMainView;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/glu/android/GlobalNavMainView$GNWebViewClient;->this$0:Lcom/glu/android/GlobalNavMainView;

    invoke-direct {p0, p1}, Lcom/glu/android/BaseWebView$BaseWebViewClient;-><init>(Lcom/glu/android/BaseWebView;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/glu/android/GlobalNavMainView;Lcom/glu/android/GlobalNavMainView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/glu/android/GlobalNavMainView;
    .param p2, "x1"    # Lcom/glu/android/GlobalNavMainView$1;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/glu/android/GlobalNavMainView$GNWebViewClient;-><init>(Lcom/glu/android/GlobalNavMainView;)V

    return-void
.end method


# virtual methods
.method protected handlePageFinished()V
    .locals 2

    .prologue
    .line 140
    const-string v0, "~~ handlePageFinished (GlobalNav web view)"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 141
    sget-object v0, Lcom/glu/android/GlobalNav;->instance:Lcom/glu/android/GlobalNav;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/glu/android/GlobalNav;->instance:Lcom/glu/android/GlobalNav;

    iget-boolean v0, v0, Lcom/glu/android/GlobalNav;->m_destroyHistory:Z

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/glu/android/GlobalNavMainView$GNWebViewClient;->this$0:Lcom/glu/android/GlobalNavMainView;

    invoke-virtual {v0}, Lcom/glu/android/GlobalNavMainView;->clearHistory()V

    .line 144
    sget-object v0, Lcom/glu/android/GlobalNav;->instance:Lcom/glu/android/GlobalNav;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/glu/android/GlobalNav;->m_destroyHistory:Z

    .line 146
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 119
    const-string v2, "vnd.youtube"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "market.android.com"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 123
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 124
    .local v0, "i":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 125
    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v2, v0}, Lcom/glu/android/GameLet;->startActivity(Landroid/content/Intent;)V

    .line 127
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 135
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    const/4 v2, 0x0

    return v2

    :cond_1
    move-object v2, p1

    .line 131
    check-cast v2, Lcom/glu/android/GlobalNavMainView;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/glu/android/GlobalNavMainView;->m_pageLoading:Z

    .line 132
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
