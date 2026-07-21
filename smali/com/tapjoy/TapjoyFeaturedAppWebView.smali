.class public Lcom/tapjoy/TapjoyFeaturedAppWebView;
.super Landroid/app/Activity;
.source "TapjoyFeaturedAppWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TapjoyFeaturedAppWebView$1;,
        Lcom/tapjoy/TapjoyFeaturedAppWebView$TapjoyWebViewClient;,
        Lcom/tapjoy/TapjoyFeaturedAppWebView$RefreshTask;
    }
.end annotation


# instance fields
.field final TAPJOY_FEATURED_APP:Ljava/lang/String;

.field private clientPackage:Ljava/lang/String;

.field private fullScreenAdURL:Ljava/lang/String;

.field private progressBar:Landroid/widget/ProgressBar;

.field private userID:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->webView:Landroid/webkit/WebView;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->clientPackage:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->fullScreenAdURL:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->userID:Ljava/lang/String;

    .line 25
    const-string v0, "Featured App"

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->TAPJOY_FEATURED_APP:Ljava/lang/String;

    .line 119
    return-void
.end method

.method static synthetic access$200(Lcom/tapjoy/TapjoyFeaturedAppWebView;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyFeaturedAppWebView;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tapjoy/TapjoyFeaturedAppWebView;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyFeaturedAppWebView;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tapjoy/TapjoyFeaturedAppWebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TapjoyFeaturedAppWebView;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->showOffers()V

    return-void
.end method

.method static synthetic access$500(Lcom/tapjoy/TapjoyFeaturedAppWebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TapjoyFeaturedAppWebView;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->finishActivity()V

    return-void
.end method

.method static synthetic access$600(Lcom/tapjoy/TapjoyFeaturedAppWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyFeaturedAppWebView;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->clientPackage:Ljava/lang/String;

    return-object v0
.end method

.method private finishActivity()V
    .locals 0

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->finish()V

    .line 200
    return-void
.end method

.method private showOffers()V
    .locals 2

    .prologue
    .line 190
    invoke-static {p0}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance(Landroid/content/Context;)Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->userID:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/tapjoy/TapjoyConnect;->showOffers(Landroid/content/Context;Ljava/lang/String;)V

    .line 191
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 70
    iget-object v1, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->webView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 74
    new-instance v0, Lcom/tapjoy/TapjoyFeaturedAppWebView$RefreshTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/TapjoyFeaturedAppWebView$RefreshTask;-><init>(Lcom/tapjoy/TapjoyFeaturedAppWebView;Lcom/tapjoy/TapjoyFeaturedAppWebView$1;)V

    .line 75
    .local v0, "refreshTask":Lcom/tapjoy/TapjoyFeaturedAppWebView$RefreshTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyFeaturedAppWebView$RefreshTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 77
    .end local v0    # "refreshTask":Lcom/tapjoy/TapjoyFeaturedAppWebView$RefreshTask;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 32
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 34
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "USER_ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->userID:Ljava/lang/String;

    .line 35
    const-string v2, "CLIENT_PACKAGE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->clientPackage:Ljava/lang/String;

    .line 36
    const-string v2, "FULLSCREEN_AD_URL"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->fullScreenAdURL:Ljava/lang/String;

    .line 37
    iget-object v2, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->fullScreenAdURL:Ljava/lang/String;

    const-string v3, " "

    const-string v4, "%20"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->fullScreenAdURL:Ljava/lang/String;

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0, v6}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->requestWindowFeature(I)Z

    .line 42
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "tapjoy_featured_app_web_view"

    const-string v4, "layout"

    iget-object v5, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->clientPackage:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "FeaturedAppWebView"

    const-string v4, "id"

    iget-object v5, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->clientPackage:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->webView:Landroid/webkit/WebView;

    .line 46
    iget-object v2, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/tapjoy/TapjoyFeaturedAppWebView$TapjoyWebViewClient;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/tapjoy/TapjoyFeaturedAppWebView$TapjoyWebViewClient;-><init>(Lcom/tapjoy/TapjoyFeaturedAppWebView;Lcom/tapjoy/TapjoyFeaturedAppWebView$1;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 48
    iget-object v2, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 49
    .local v1, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "FeaturedAppProgressBar"

    const-string v4, "id"

    iget-object v5, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->clientPackage:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->progressBar:Landroid/widget/ProgressBar;

    .line 53
    iget-object v2, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 57
    iget-object v2, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->webView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->fullScreenAdURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 59
    const-string v2, "Featured App"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening Full Screen AD URL = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->fullScreenAdURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method
