.class public Lcom/playhaven/src/publishersdk/content/PHContentWebView;
.super Landroid/webkit/WebView;
.source "PHContentWebView.java"


# instance fields
.field private bounceInCallback:Ljava/lang/Runnable;

.field private bounceOutCallback:Ljava/lang/Runnable;

.field private isAnimating:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/playhaven/src/publishersdk/content/PHContentWebView;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->finishBounceIn()V

    return-void
.end method

.method static synthetic access$100(Lcom/playhaven/src/publishersdk/content/PHContentWebView;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->finishBounceOut()V

    return-void
.end method

.method private finishBounceIn()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->isAnimating:Z

    .line 77
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->bounceInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 78
    return-void
.end method

.method private finishBounceOut()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->isAnimating:Z

    .line 132
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->bounceOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 133
    return-void
.end method


# virtual methods
.method public bounceIn(Ljava/lang/Runnable;)V
    .locals 8

    .prologue
    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v7, 0x3f800000    # 1.0f

    const-wide/16 v5, 0x7d

    const v4, 0x3f8ccccd    # 1.1f

    .line 29
    iget-boolean v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->isAnimating:Z

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->isAnimating:Z

    .line 31
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->bounceInCallback:Ljava/lang/Runnable;

    .line 33
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 36
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 37
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 38
    invoke-virtual {v1, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 42
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v2, v3, v4, v3, v4}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 44
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 45
    invoke-virtual {v2, v5, v6}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 49
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v1, v4, v7, v4, v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 51
    invoke-virtual {v1, v5, v6}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 52
    invoke-virtual {v1, v5, v6}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 53
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 55
    new-instance v2, Lcom/playhaven/src/publishersdk/content/PHContentWebView$1;

    invoke-direct {v2, p0}, Lcom/playhaven/src/publishersdk/content/PHContentWebView$1;-><init>(Lcom/playhaven/src/publishersdk/content/PHContentWebView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 71
    invoke-virtual {p0, v0}, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 73
    :cond_0
    return-void
.end method

.method public bounceOut(Ljava/lang/Runnable;)V
    .locals 8

    .prologue
    const v7, 0x3f4ccccd    # 0.8f

    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3f8ccccd    # 1.1f

    const-wide/16 v3, 0x7d

    .line 82
    iget-boolean v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->isAnimating:Z

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->isAnimating:Z

    .line 84
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->bounceOutCallback:Ljava/lang/Runnable;

    .line 86
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 87
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v1, v6, v5, v6, v5}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 88
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 89
    invoke-virtual {v0, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 92
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v1, v6, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 93
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 94
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 95
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 97
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v1, v5, v7, v5, v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 98
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 99
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 102
    new-instance v2, Lcom/playhaven/src/publishersdk/content/PHContentWebView$2;

    invoke-direct {v2, p0}, Lcom/playhaven/src/publishersdk/content/PHContentWebView$2;-><init>(Lcom/playhaven/src/publishersdk/content/PHContentWebView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 118
    invoke-virtual {p0, v0}, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 123
    :cond_0
    return-void
.end method

.method public clearContent()V
    .locals 1

    .prologue
    .line 128
    const-string v0, "javascript:document.open();document.close();"

    invoke-virtual {p0, v0}, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->loadUrl(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public updateOrientation(I)V
    .locals 4

    .prologue
    .line 140
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string v0, "PH_LANDSCAPE"

    .line 142
    :goto_0
    const-string v1, "PlayHaven.updateOrientation(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->loadUrl(Ljava/lang/String;)V

    .line 145
    return-void

    .line 140
    :cond_0
    const-string v0, "PH_PORTRAIT"

    goto :goto_0
.end method
