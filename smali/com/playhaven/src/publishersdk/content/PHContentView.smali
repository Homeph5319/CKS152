.class public Lcom/playhaven/src/publishersdk/content/PHContentView;
.super Landroid/app/Dialog;
.source "PHContentView.java"

# interfaces
.implements Lcom/playhaven/src/common/PHURLLoader$PHURLLoaderDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playhaven/src/publishersdk/content/PHContentView$1;,
        Lcom/playhaven/src/publishersdk/content/PHContentView$PHContentViewDelegate;,
        Lcom/playhaven/src/publishersdk/content/PHContentView$PHWebViewClient;,
        Lcom/playhaven/src/publishersdk/content/PHContentView$PHWebViewChrome;
    }
.end annotation


# static fields
.field public static final IPAD_SCREEN_LANDSCAPE:Landroid/graphics/RectF;

.field public static final IPAD_SCREEN_PORTRAIT:Landroid/graphics/RectF;

.field public static allContentViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/playhaven/src/publishersdk/content/PHContentView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public content:Lcom/playhaven/src/publishersdk/content/PHContent;

.field public creator:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public delegate:Lcom/playhaven/src/publishersdk/content/PHContentView$PHContentViewDelegate;

.field public isAnimated:Z

.field private overlayView:Landroid/view/View;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private redirects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/playhaven/src/common/jsbridge/PHInvocation;",
            ">;"
        }
    .end annotation
.end field

.field private rootView:Landroid/widget/RelativeLayout;

.field public showsOverlayImmediately:Z

.field targetView:Landroid/view/View;

.field private webview:Lcom/playhaven/src/publishersdk/content/PHContentWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x44400000    # 768.0f

    const/high16 v2, 0x447b0000    # 1004.0f

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView;->IPAD_SCREEN_PORTRAIT:Landroid/graphics/RectF;

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x44800000    # 1024.0f

    const/high16 v2, 0x443b0000    # 748.0f

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView;->IPAD_SCREEN_LANDSCAPE:Landroid/graphics/RectF;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView;->allContentViews:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/playhaven/src/publishersdk/content/PHContent;Lcom/playhaven/src/publishersdk/content/PHContentView$PHContentViewDelegate;)V
    .locals 1

    .prologue
    .line 179
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->redirects:Ljava/util/HashMap;

    .line 180
    iput-object p3, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->delegate:Lcom/playhaven/src/publishersdk/content/PHContentView$PHContentViewDelegate;

    .line 181
    iput-object p2, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    .line 182
    return-void
.end method

.method static synthetic access$000(Lcom/playhaven/src/publishersdk/content/PHContentView;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->redirects:Ljava/util/HashMap;

    return-object v0
.end method

.method public static addContentView(Lcom/playhaven/src/publishersdk/content/PHContentView;)V
    .locals 2

    .prologue
    .line 195
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView;->allContentViews:Ljava/util/ArrayList;

    monitor-enter v1

    .line 196
    :try_start_0
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView;->allContentViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    monitor-exit v1

    .line 198
    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static clearContentView(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 206
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView;->allContentViews:Ljava/util/ArrayList;

    monitor-enter v1

    .line 208
    :try_start_0
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView;->allContentViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/playhaven/src/publishersdk/content/PHContentView;

    .line 210
    iget-object v3, v0, Lcom/playhaven/src/publishersdk/content/PHContentView;->creator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 211
    sget-object v3, Lcom/playhaven/src/publishersdk/content/PHContentView;->allContentViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    return-void
.end method

.method public static clearContentViews()V
    .locals 2

    .prologue
    .line 200
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView;->allContentViews:Ljava/util/ArrayList;

    monitor-enter v1

    .line 201
    :try_start_0
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView;->allContentViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 202
    monitor-exit v1

    .line 203
    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private closeView(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 500
    iput-boolean p1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->isAnimated:Z

    .line 502
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Lcom/playhaven/src/publishersdk/content/PHContentWebView;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Lcom/playhaven/src/publishersdk/content/PHContentWebView;

    invoke-virtual {v0, v1}, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 504
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Lcom/playhaven/src/publishersdk/content/PHContentWebView;

    invoke-virtual {v0, v1}, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 506
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Lcom/playhaven/src/publishersdk/content/PHContentWebView;

    invoke-virtual {v0}, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->stopLoading()V

    .line 515
    :cond_0
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->finalDismiss()V

    .line 518
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 519
    return-void
.end method

.method public static dequeueContentView()Lcom/playhaven/src/publishersdk/content/PHContentView;
    .locals 3

    .prologue
    .line 217
    invoke-static {}, Lcom/playhaven/src/common/PHConstants;->shouldRecycleContentViews()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView;->allContentViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 221
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView;->allContentViews:Ljava/util/ArrayList;

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView;->allContentViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/playhaven/src/publishersdk/content/PHContentView;

    .line 223
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView;->allContentViews:Ljava/util/ArrayList;

    sget-object v2, Lcom/playhaven/src/publishersdk/content/PHContentView;->allContentViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 228
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static enqueueContentView(Lcom/playhaven/src/publishersdk/content/PHContentView;)V
    .locals 1

    .prologue
    .line 233
    invoke-static {}, Lcom/playhaven/src/common/PHConstants;->shouldRecycleContentViews()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView;->allContentViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_0
    return-void
.end method

.method private finalDismiss()V
    .locals 1

    .prologue
    .line 522
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->prepareForReuse()V

    .line 524
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->delegate:Lcom/playhaven/src/publishersdk/content/PHContentView$PHContentViewDelegate;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->delegate:Lcom/playhaven/src/publishersdk/content/PHContentView$PHContentViewDelegate;

    invoke-interface {v0, p0}, Lcom/playhaven/src/publishersdk/content/PHContentView$PHContentViewDelegate;->didDismiss(Lcom/playhaven/src/publishersdk/content/PHContentView;)V

    .line 526
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->delegate:Lcom/playhaven/src/publishersdk/content/PHContentView$PHContentViewDelegate;

    .line 530
    :cond_0
    return-void
.end method

.method public static getAllContentViews()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/playhaven/src/publishersdk/content/PHContentView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView;->allContentViews:Ljava/util/ArrayList;

    monitor-enter v1

    .line 190
    :try_start_0
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView;->allContentViews:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private hackEnableScaling()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 409
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Lcom/playhaven/src/publishersdk/content/PHContentWebView;

    invoke-virtual {v0}, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 410
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Lcom/playhaven/src/publishersdk/content/PHContentWebView;

    invoke-virtual {v0}, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 411
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Lcom/playhaven/src/publishersdk/content/PHContentWebView;

    invoke-virtual {v0}, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 412
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Lcom/playhaven/src/publishersdk/content/PHContentWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->setInitialScale(I)V

    .line 413
    return-void
.end method

.method private hasOrientationFrame()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    .line 419
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    if-nez v1, :cond_1

    .line 426
    :cond_0
    :goto_0
    return v0

    .line 421
    :cond_1
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/playhaven/src/common/PHConstants;->getDeviceOrientation(Landroid/content/Context;)I

    move-result v1

    .line 423
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    invoke-virtual {v2, v1}, Lcom/playhaven/src/publishersdk/content/PHContent;->getFrame(I)Landroid/graphics/RectF;

    move-result-object v1

    .line 426
    iget v2, v1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v1, v1

    cmpl-double v1, v1, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadTemplate()V
    .locals 3

    .prologue
    .line 469
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Lcom/playhaven/src/publishersdk/content/PHContentWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->clearCache(Z)V

    .line 470
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Lcom/playhaven/src/publishersdk/content/PHContentWebView;

    invoke-virtual {v0}, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->stopLoading()V

    .line 472
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    invoke-static {v0}, Lcom/playhaven/src/common/PHConstants;->getTemplateURL(Lcom/playhaven/src/publishersdk/content/PHContent;)Landroid/net/Uri;

    move-result-object v0

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading url in intial webview load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 475
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Lcom/playhaven/src/publishersdk/content/PHContentWebView;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->loadUrl(Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method private prepareForReuse()V
    .locals 1

    .prologue
    .line 543
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    .line 544
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->resetRedirects()V

    .line 545
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Lcom/playhaven/src/publishersdk/content/PHContentWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Lcom/playhaven/src/publishersdk/content/PHContentWebView;

    invoke-virtual {v0}, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->clearContent()V

    .line 548
    :cond_0
    invoke-static {p0}, Lcom/playhaven/src/common/PHURLLoader;->invalidateLoaders(Lcom/playhaven/src/common/PHURLLoader$PHURLLoaderDelegate;)V

    .line 550
    return-void
.end method

.method private progressDialog()Landroid/app/ProgressDialog;
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 460
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->progressDialog:Landroid/app/ProgressDialog;

    .line 461
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private resetRedirects()V
    .locals 3

    .prologue
    .line 533
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->redirects:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 534
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->redirects:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/playhaven/src/common/jsbridge/PHInvocation;

    .line 535
    iget-object v2, v0, Lcom/playhaven/src/common/jsbridge/PHInvocation;->instance:Ljava/lang/Object;

    if-ne v2, p0, :cond_0

    .line 536
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->redirects:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 540
    :cond_1
    return-void
.end method

.method private setup()V
    .locals 7

    .prologue
    .line 281
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 283
    :try_start_0
    const-string v1, "handleDismiss"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lorg/json/JSONObject;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 284
    const-string v2, "handleLaunch"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/json/JSONObject;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 285
    const-string v3, "handleLoadContext"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lorg/json/JSONObject;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 287
    iget-object v3, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->redirects:Ljava/util/HashMap;

    const-string v4, "ph://dismiss"

    new-instance v5, Lcom/playhaven/src/common/jsbridge/PHInvocation;

    invoke-direct {v5, p0, v1}, Lcom/playhaven/src/common/jsbridge/PHInvocation;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->redirects:Ljava/util/HashMap;

    const-string v3, "ph://launch"

    new-instance v4, Lcom/playhaven/src/common/jsbridge/PHInvocation;

    invoke-direct {v4, p0, v2}, Lcom/playhaven/src/common/jsbridge/PHInvocation;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->redirects:Ljava/util/HashMap;

    const-string v2, "ph://loadContext"

    new-instance v3, Lcom/playhaven/src/common/jsbridge/PHInvocation;

    invoke-direct {v3, p0, v0}, Lcom/playhaven/src/common/jsbridge/PHInvocation;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private sizeToOrientation()V
    .locals 7

    .prologue
    const/16 v6, 0x800

    const/high16 v5, 0x4f000000

    const/4 v4, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v2, 0x400

    .line 433
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/common/PHConstants;->getDeviceOrientation(Landroid/content/Context;)I

    move-result v0

    .line 438
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    invoke-virtual {v1, v0}, Lcom/playhaven/src/publishersdk/content/PHContent;->getFrame(I)Landroid/graphics/RectF;

    move-result-object v0

    .line 440
    iget v1, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_0

    .line 441
    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 442
    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 443
    iput v4, v0, Landroid/graphics/RectF;->top:F

    .line 444
    iput v4, v0, Landroid/graphics/RectF;->left:F

    .line 446
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 447
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 455
    :goto_0
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setLayout(II)V

    .line 456
    return-void

    .line 449
    :cond_0
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 450
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method private testJSBridge(Landroid/webkit/WebView;)V
    .locals 4

    .prologue
    .line 334
    new-instance v0, Lcom/playhaven/src/common/jsbridge/PHJavascriptBridge;

    invoke-direct {v0, p1}, Lcom/playhaven/src/common/jsbridge/PHJavascriptBridge;-><init>(Landroid/webkit/WebView;)V

    .line 340
    new-instance v1, Lcom/playhaven/src/publishersdk/content/PHContentView$1PlayhavenCallback;

    invoke-direct {v1, p0}, Lcom/playhaven/src/publishersdk/content/PHContentView$1PlayhavenCallback;-><init>(Lcom/playhaven/src/publishersdk/content/PHContentView;)V

    .line 341
    const-string v2, "Playhaven.native"

    invoke-virtual {v0, v2, v1}, Lcom/playhaven/src/common/jsbridge/PHJavascriptBridge;->addJavascriptStub(Ljava/lang/String;Lcom/playhaven/src/common/jsbridge/PHJavascriptStub;)V

    .line 343
    const-string v0, "hi!"

    const-string v2, "test"

    const-string v3, "test"

    invoke-virtual {v1, v0, v2, v3}, Lcom/playhaven/src/publishersdk/content/PHContentView$1PlayhavenCallback;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    return-void
.end method


# virtual methods
.method public dismiss(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->delegate:Lcom/playhaven/src/publishersdk/content/PHContentView$PHContentViewDelegate;

    if-nez v0, :cond_0

    .line 497
    :goto_0
    return-void

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->delegate:Lcom/playhaven/src/publishersdk/content/PHContentView$PHContentViewDelegate;

    .line 491
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->delegate:Lcom/playhaven/src/publishersdk/content/PHContentView$PHContentViewDelegate;

    .line 493
    iget-boolean v1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->isAnimated:Z

    invoke-direct {p0, v1}, Lcom/playhaven/src/publishersdk/content/PHContentView;->closeView(Z)V

    .line 495
    invoke-interface {v0, p0, p1}, Lcom/playhaven/src/publishersdk/content/PHContentView$PHContentViewDelegate;->didFail(Lcom/playhaven/src/publishersdk/content/PHContentView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dismiss(Z)V
    .locals 0

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lcom/playhaven/src/publishersdk/content/PHContentView;->closeView(Z)V

    .line 484
    return-void
.end method

.method public getContent()Lcom/playhaven/src/publishersdk/content/PHContent;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    return-object v0
.end method

.method public getOverlayView()Landroid/view/View;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->overlayView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->overlayView:Landroid/view/View;

    return-object v0
.end method

.method public getRootView()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public handleDismiss(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 556
    const-string v0, "ping"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 558
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 559
    new-instance v1, Lcom/playhaven/src/common/PHURLLoader;

    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/playhaven/src/common/PHURLLoader;-><init>(Landroid/content/Context;)V

    .line 560
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/playhaven/src/common/PHURLLoader;->opensFinalURLOnDevice:Z

    .line 561
    iput-object v0, v1, Lcom/playhaven/src/common/PHURLLoader;->targetURI:Ljava/lang/String;

    .line 563
    invoke-virtual {v1}, Lcom/playhaven/src/common/PHURLLoader;->open()V

    .line 565
    :cond_0
    iget-boolean v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->isAnimated:Z

    invoke-virtual {p0, v0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->dismiss(Z)V

    .line 567
    return-void
.end method

.method public handleLaunch(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 571
    const-string v0, "url"

    invoke-static {p1, v0}, Lcom/playhaven/src/additions/ObjectExtensions$JSONExtensions;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 573
    if-eqz v0, :cond_0

    .line 574
    new-instance v1, Lcom/playhaven/src/common/PHURLLoaderView;

    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/playhaven/src/common/PHURLLoaderView;-><init>(Lcom/playhaven/src/common/PHURLLoader$PHURLLoaderDelegate;Landroid/content/Context;)V

    .line 575
    iput-object p0, v1, Lcom/playhaven/src/common/PHURLLoaderView;->delegate:Lcom/playhaven/src/common/PHURLLoader$PHURLLoaderDelegate;

    .line 576
    invoke-virtual {v1, v0}, Lcom/playhaven/src/common/PHURLLoaderView;->setTargetURL(Ljava/lang/String;)V

    .line 578
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 579
    const-string v2, "callback"

    invoke-static {v0, v2, p2}, Lcom/playhaven/src/additions/ObjectExtensions$JSONExtensions;->setJSONString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-virtual {v1, v0}, Lcom/playhaven/src/common/PHURLLoaderView;->setJSONContext(Lorg/json/JSONObject;)V

    .line 583
    invoke-virtual {v1}, Lcom/playhaven/src/common/PHURLLoaderView;->show()V

    .line 585
    :cond_0
    return-void
.end method

.method public handleLoadContext(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PHLoadContext has called: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Query "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    iget-object v0, v0, Lcom/playhaven/src/publishersdk/content/PHContent;->context:Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/playhaven/src/publishersdk/content/PHContentView;->sendCallback(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 591
    return-void
.end method

.method public loaderFailed(Lcom/playhaven/src/common/PHURLLoader;)V
    .locals 5

    .prologue
    .line 621
    invoke-virtual {p1}, Lcom/playhaven/src/common/PHURLLoader;->getJSONContext()Lorg/json/JSONObject;

    move-result-object v0

    .line 622
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 623
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 625
    const-string v3, "error"

    const-string v4, "1"

    invoke-static {v2, v3, v4}, Lcom/playhaven/src/additions/ObjectExtensions$JSONExtensions;->setJSONString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string v3, "url"

    iget-object v4, p1, Lcom/playhaven/src/common/PHURLLoader;->targetURI:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/playhaven/src/additions/ObjectExtensions$JSONExtensions;->setJSONString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v3, "callback"

    invoke-static {v0, v3}, Lcom/playhaven/src/additions/ObjectExtensions$JSONExtensions;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView;->sendCallback(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 630
    return-void
.end method

.method public loaderFinished(Lcom/playhaven/src/common/PHURLLoader;)V
    .locals 4

    .prologue
    .line 611
    invoke-virtual {p1}, Lcom/playhaven/src/common/PHURLLoader;->getJSONContext()Lorg/json/JSONObject;

    move-result-object v0

    .line 612
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 614
    const-string v2, "url"

    iget-object v3, p1, Lcom/playhaven/src/common/PHURLLoader;->targetURI:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/playhaven/src/additions/ObjectExtensions$JSONExtensions;->setJSONString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string v2, "callback"

    invoke-static {v0, v2}, Lcom/playhaven/src/additions/ObjectExtensions$JSONExtensions;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView;->sendCallback(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 618
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 349
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 352
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->hasOrientationFrame()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    const-string v0, "The content you requested was not able to be shown because it is missing required orientation data."

    invoke-virtual {p0, v0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->dismiss(Ljava/lang/String;)V

    .line 356
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 244
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 247
    invoke-virtual {p0, v0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->setCancelable(Z)V

    .line 248
    invoke-virtual {p0, v0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->setCanceledOnTouchOutside(Z)V

    .line 250
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 252
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->setup()V

    .line 254
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 361
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 363
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->rootView:Landroid/widget/RelativeLayout;

    .line 365
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->rootView:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/playhaven/src/publishersdk/content/PHContentView;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->sizeToOrientation()V

    .line 372
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentWebView;

    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/playhaven/src/publishersdk/content/PHContentWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Lcom/playhaven/src/publishersdk/content/PHContentWebView;

    .line 377
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Lcom/playhaven/src/publishersdk/content/PHContentWebView;

    const v1, -0x83996

    invoke-virtual {v0, v1}, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->setBackgroundColor(I)V

    .line 379
    invoke-static {}, Lcom/playhaven/src/common/PHConstants;->shouldCacheWebView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Lcom/playhaven/src/publishersdk/content/PHContentWebView;

    invoke-virtual {v0}, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 383
    :cond_0
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->hackEnableScaling()V

    .line 387
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 390
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Lcom/playhaven/src/publishersdk/content/PHContentWebView;

    new-instance v2, Lcom/playhaven/src/publishersdk/content/PHContentView$PHWebViewClient;

    invoke-direct {v2, p0, v3}, Lcom/playhaven/src/publishersdk/content/PHContentView$PHWebViewClient;-><init>(Lcom/playhaven/src/publishersdk/content/PHContentView;Lcom/playhaven/src/publishersdk/content/PHContentView$1;)V

    invoke-virtual {v1, v2}, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 391
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Lcom/playhaven/src/publishersdk/content/PHContentWebView;

    new-instance v2, Lcom/playhaven/src/publishersdk/content/PHContentView$PHWebViewChrome;

    invoke-direct {v2, p0, v3}, Lcom/playhaven/src/publishersdk/content/PHContentView$PHWebViewChrome;-><init>(Lcom/playhaven/src/publishersdk/content/PHContentView;Lcom/playhaven/src/publishersdk/content/PHContentView$1;)V

    invoke-virtual {v1, v2}, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 392
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Lcom/playhaven/src/publishersdk/content/PHContentWebView;

    invoke-virtual {v1, v0}, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Lcom/playhaven/src/publishersdk/content/PHContentWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->setScrollBarStyle(I)V

    .line 395
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->rootView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Lcom/playhaven/src/publishersdk/content/PHContentWebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 397
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->hasOrientationFrame()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 398
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->delegate:Lcom/playhaven/src/publishersdk/content/PHContentView$PHContentViewDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->delegate:Lcom/playhaven/src/publishersdk/content/PHContentView$PHContentViewDelegate;

    invoke-interface {v0, p0}, Lcom/playhaven/src/publishersdk/content/PHContentView$PHContentViewDelegate;->didShow(Lcom/playhaven/src/publishersdk/content/PHContentView;)V

    .line 400
    :cond_1
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->loadTemplate()V

    .line 404
    :cond_2
    return-void
.end method

.method public redirectRequest(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 297
    if-eqz p2, :cond_2

    .line 299
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 304
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 305
    aget-object v2, v1, v0

    .line 306
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 308
    new-instance v0, Lcom/playhaven/src/common/jsbridge/PHInvocation;

    invoke-direct {v0, p2, v2}, Lcom/playhaven/src/common/jsbridge/PHInvocation;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    .line 309
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->redirects:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_0
    :goto_1
    return-void

    .line 304
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->redirects:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public sendCallback(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 594
    const-string v2, "null"

    .line 595
    const-string v1, "null"

    .line 596
    const-string v0, "null"

    .line 598
    if-eqz p1, :cond_2

    .line 599
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 600
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 602
    :cond_1
    const-string v2, "javascript:PlayHaven.nativeAPI.callback(\"%s\",%s,%s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Callback command being called on webview: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 604
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Lcom/playhaven/src/publishersdk/content/PHContentWebView;

    invoke-virtual {v1, v0}, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->loadUrl(Ljava/lang/String;)V

    .line 606
    return-void

    :cond_2
    move-object p1, v2

    goto :goto_0
.end method

.method public setContent(Lcom/playhaven/src/publishersdk/content/PHContent;)V
    .locals 0

    .prologue
    .line 271
    if-eqz p1, :cond_0

    .line 272
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    .line 274
    :cond_0
    return-void
.end method

.method public setCreator(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 267
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->creator:Ljava/lang/ref/WeakReference;

    .line 268
    return-void
.end method

.method public setIsAnimated(Z)V
    .locals 0

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->isAnimated:Z

    .line 277
    return-void
.end method

.method public setOverlayView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->overlayView:Landroid/view/View;

    .line 330
    return-void
.end method
