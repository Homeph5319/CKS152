.class public Lcom/glu/android/GluWebView;
.super Lcom/glu/android/BaseWebView;
.source "GluWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/glu/android/GluWebView$InternalWebViewClient;
    }
.end annotation


# static fields
.field public static instance:Lcom/glu/android/GluWebView;


# instance fields
.field public m_bgPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GluWebView;->instance:Lcom/glu/android/GluWebView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/glu/android/BaseWebView;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/GluWebView;->m_bgPaint:Landroid/graphics/Paint;

    .line 33
    sput-object p0, Lcom/glu/android/GluWebView;->instance:Lcom/glu/android/GluWebView;

    .line 34
    const-string v0, "Initializing web subview."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GluWebView;->m_bgPaint:Landroid/graphics/Paint;

    .line 36
    iget-object v0, p0, Lcom/glu/android/GluWebView;->m_bgPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    iget-object v0, p0, Lcom/glu/android/GluWebView;->m_bgPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 38
    iget-object v0, p0, Lcom/glu/android/GluWebView;->m_bgPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    new-instance v0, Lcom/glu/android/GluWebView$InternalWebViewClient;

    invoke-direct {v0, p0}, Lcom/glu/android/GluWebView$InternalWebViewClient;-><init>(Lcom/glu/android/GluWebView;)V

    invoke-virtual {p0, v0}, Lcom/glu/android/GluWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected handleBackWithEmptyHistory()V
    .locals 3

    .prologue
    .line 45
    const-string v0, "back pressed with empty history"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/glu/android/GluCanvasOverlayGroup;->setViewVisibility(IZ)V

    .line 48
    return-void
.end method

.method public final isShowing()Z
    .locals 2

    .prologue
    .line 77
    sget-object v0, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/glu/android/GluCanvasOverlayGroup;->isViewVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "g"    # Landroid/graphics/Canvas;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/glu/android/BaseWebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/glu/android/GluWebView;->drawProgressBar(Landroid/graphics/Canvas;Z)V

    .line 72
    invoke-virtual {p0}, Lcom/glu/android/GluWebView;->invalidate()V

    .line 73
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "web view pressed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 83
    invoke-super {p0, p1, p2}, Lcom/glu/android/BaseWebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "web view released="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 89
    invoke-super {p0, p1, p2}, Lcom/glu/android/BaseWebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 94
    const-string v0, "web view "

    invoke-static {v0, p1}, Lcom/glu/android/Debug;->printTouch(Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 95
    invoke-super {p0, p1}, Lcom/glu/android/BaseWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
