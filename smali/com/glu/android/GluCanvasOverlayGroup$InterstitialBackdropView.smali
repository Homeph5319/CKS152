.class public Lcom/glu/android/GluCanvasOverlayGroup$InterstitialBackdropView;
.super Landroid/view/View;
.source "GluCanvasOverlayGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GluCanvasOverlayGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterstitialBackdropView"
.end annotation


# instance fields
.field public m_bgPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialBackdropView;->m_bgPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialBackdropView;->m_bgPaint:Landroid/graphics/Paint;

    .line 62
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialBackdropView;->m_bgPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialBackdropView;->m_bgPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialBackdropView;->m_bgPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "g"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialBackdropView;->m_bgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 70
    invoke-virtual {p0}, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialBackdropView;->invalidate()V

    .line 71
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method
