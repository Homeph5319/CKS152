.class public Lcom/glu/android/GluCanvasOverlayGroup$TestView;
.super Landroid/view/View;
.source "GluCanvasOverlayGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GluCanvasOverlayGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TestView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 33
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {p0, v0}, Lcom/glu/android/GluCanvasOverlayGroup$TestView;->setFocusable(Z)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/glu/android/GluCanvasOverlayGroup$TestView;->setFocusableInTouchMode(Z)V

    .line 37
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "g"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0xfa

    const/16 v2, 0x6e

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v1, Lcom/glu/android/GluUtil;->CF_BUTTON_SELECTED:Landroid/graphics/LightingColorFilter;

    const-string v2, "blah blah"

    sget-object v3, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget-object v3, v3, Lcom/glu/android/ResFileDownloadView;->m_buttonPaint:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/glu/android/GluUtil;->paintButton(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/ColorFilter;Ljava/lang/String;Landroid/graphics/Paint;)V

    .line 42
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 46
    const-string v0, "I\'m touched by the sentiment."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    return v0
.end method
