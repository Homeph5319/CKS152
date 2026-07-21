.class public Lcom/tapjoy/TJCOffersWebView;
.super Landroid/app/Activity;
.source "TJCOffersWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJCOffersWebView$1;,
        Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;
    }
.end annotation


# instance fields
.field final TAPJOY_OFFERS:Ljava/lang/String;

.field private clickURL:Ljava/lang/String;

.field private clientPackage:Ljava/lang/String;

.field private dialog:Landroid/app/Dialog;

.field private progressBar:Landroid/widget/ProgressBar;

.field private tapjoyURL:Ljava/lang/String;

.field private urlParams:Ljava/lang/String;

.field private userID:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->webView:Landroid/webkit/WebView;

    .line 24
    iput-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->clickURL:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->dialog:Landroid/app/Dialog;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->clientPackage:Ljava/lang/String;

    .line 30
    const-string v0, "https://ws.tapjoyads.com/get_offers/webpage?"

    iput-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->tapjoyURL:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->urlParams:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->userID:Ljava/lang/String;

    .line 34
    const-string v0, "Offers"

    iput-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->TAPJOY_OFFERS:Ljava/lang/String;

    .line 87
    return-void
.end method

.method static synthetic access$100(Lcom/tapjoy/TJCOffersWebView;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJCOffersWebView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tapjoy/TJCOffersWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJCOffersWebView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->clientPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tapjoy/TJCOffersWebView;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJCOffersWebView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/tapjoy/TJCOffersWebView;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCOffersWebView;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/tapjoy/TJCOffersWebView;->dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method private initMetaData(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 178
    if-eqz p1, :cond_0

    .line 180
    const-string v0, "URL_PARAMS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->urlParams:Ljava/lang/String;

    .line 181
    const-string v0, "CLIENT_PACKAGE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->clientPackage:Ljava/lang/String;

    .line 182
    const-string v0, "USER_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->userID:Ljava/lang/String;

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TJCOffersWebView;->urlParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&publisher_user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJCOffersWebView;->userID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->urlParams:Ljava/lang/String;

    .line 187
    const-string v0, "Offers"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "urlParams: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TJCOffersWebView;->urlParams:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v0, "Offers"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientPackage: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TJCOffersWebView;->clientPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    const-string v0, "Offers"

    const-string v1, "Tapjoy offers meta data initialization fail."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 40
    invoke-virtual {p0}, Lcom/tapjoy/TJCOffersWebView;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 41
    .local v0, "extras":Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/tapjoy/TJCOffersWebView;->initMetaData(Landroid/os/Bundle;)V

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tapjoy/TJCOffersWebView;->tapjoyURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/TJCOffersWebView;->urlParams:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/TJCOffersWebView;->clickURL:Ljava/lang/String;

    .line 46
    iget-object v2, p0, Lcom/tapjoy/TJCOffersWebView;->clickURL:Ljava/lang/String;

    const-string v3, " "

    const-string v4, "%20"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/TJCOffersWebView;->clickURL:Ljava/lang/String;

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0, v6}, Lcom/tapjoy/TJCOffersWebView;->requestWindowFeature(I)Z

    .line 50
    invoke-virtual {p0}, Lcom/tapjoy/TJCOffersWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "tapjoy_offers_web_view"

    const-string v4, "layout"

    iget-object v5, p0, Lcom/tapjoy/TJCOffersWebView;->clientPackage:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/tapjoy/TJCOffersWebView;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/tapjoy/TJCOffersWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "offersWebView"

    const-string v4, "id"

    iget-object v5, p0, Lcom/tapjoy/TJCOffersWebView;->clientPackage:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/tapjoy/TJCOffersWebView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/tapjoy/TJCOffersWebView;->webView:Landroid/webkit/WebView;

    .line 54
    iget-object v2, p0, Lcom/tapjoy/TJCOffersWebView;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;-><init>(Lcom/tapjoy/TJCOffersWebView;Lcom/tapjoy/TJCOffersWebView$1;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 56
    iget-object v2, p0, Lcom/tapjoy/TJCOffersWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 57
    .local v1, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/tapjoy/TJCOffersWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "OfferProgressBar"

    const-string v4, "id"

    iget-object v5, p0, Lcom/tapjoy/TJCOffersWebView;->clientPackage:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/tapjoy/TJCOffersWebView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/tapjoy/TJCOffersWebView;->progressBar:Landroid/widget/ProgressBar;

    .line 61
    iget-object v2, p0, Lcom/tapjoy/TJCOffersWebView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 65
    iget-object v2, p0, Lcom/tapjoy/TJCOffersWebView;->webView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/tapjoy/TJCOffersWebView;->clickURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 67
    const-string v2, "Offers"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening URL = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TJCOffersWebView;->clickURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 163
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 166
    const/4 v0, 0x1

    .line 168
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 79
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->clickURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tapjoy/TJCOffersWebView;->clickURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 81
    :cond_0
    return-void
.end method
