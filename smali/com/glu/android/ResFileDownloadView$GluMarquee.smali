.class public Lcom/glu/android/ResFileDownloadView$GluMarquee;
.super Lcom/glu/android/ResFileDownloadView$GluWidget;
.source "ResFileDownloadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/ResFileDownloadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GluMarquee"
.end annotation


# static fields
.field public static final REPEAT_DELAY:I = 0x3e8


# instance fields
.field public PIXELS_BETWEEN_REPEAT:I

.field public PIXELS_PER_SECOND:I

.field public final g1_PIXELS_BETWEEN_REPEAT:I

.field public final g1_PIXELS_PER_SECOND:I

.field public m_cycleTimeElapsed:I

.field public m_delayTimer:I

.field public m_offset:I

.field public m_paint:Landroid/graphics/Paint;

.field public m_paintNonMarquee:Landroid/graphics/Paint;

.field public m_text:Ljava/lang/String;

.field public m_textWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x64

    const/16 v3, 0x1e

    const/4 v2, 0x0

    .line 356
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/glu/android/ResFileDownloadView$GluWidget;-><init>(Lcom/glu/android/ResFileDownloadView;I)V

    .line 345
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_delayTimer:I

    .line 346
    iput v2, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_offset:I

    .line 347
    iput v2, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_cycleTimeElapsed:I

    .line 348
    iput v3, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->g1_PIXELS_PER_SECOND:I

    .line 349
    iput v4, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->g1_PIXELS_BETWEEN_REPEAT:I

    .line 350
    iput v2, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->PIXELS_PER_SECOND:I

    .line 351
    iput v2, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->PIXELS_BETWEEN_REPEAT:I

    .line 357
    invoke-virtual {p0, v3}, Lcom/glu/android/ResFileDownloadView$GluMarquee;->setPixelsPerSecond(I)V

    .line 358
    invoke-virtual {p0, v4}, Lcom/glu/android/ResFileDownloadView$GluMarquee;->setPixelsBetweenRepeat(I)V

    .line 360
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget-object v0, v0, Lcom/glu/android/ResFileDownloadView;->m_marqueePaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_paint:Landroid/graphics/Paint;

    .line 361
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget-object v0, v0, Lcom/glu/android/ResFileDownloadView;->m_textAreaPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_paintNonMarquee:Landroid/graphics/Paint;

    .line 362
    invoke-virtual {p0, p1}, Lcom/glu/android/ResFileDownloadView$GluMarquee;->setText(Ljava/lang/String;)V

    .line 363
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "g"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 404
    iget v3, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_textWidth:I

    iget v4, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_dx:I

    iget v5, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_x:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_0

    const/4 v1, 0x1

    .line 406
    .local v1, "isMarquee":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 408
    iget-object v3, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 410
    .local v0, "height":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 411
    iget v3, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_x:I

    iget v4, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_dx:I

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v5

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 413
    iget-object v2, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_text:Ljava/lang/String;

    iget v3, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_x:I

    iget v4, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_offset:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_y:I

    int-to-float v4, v4

    div-float v5, v0, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 414
    iget-object v2, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_text:Ljava/lang/String;

    iget v3, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_x:I

    iget v4, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_offset:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_textWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->PIXELS_BETWEEN_REPEAT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_y:I

    int-to-float v4, v4

    div-float v5, v0, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 415
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 424
    :goto_1
    return-void

    .end local v0    # "height":F
    .end local v1    # "isMarquee":Z
    :cond_0
    move v1, v2

    .line 404
    goto :goto_0

    .line 419
    .restart local v1    # "isMarquee":Z
    :cond_1
    iget-object v2, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_paintNonMarquee:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 422
    .restart local v0    # "height":F
    iget-object v2, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_text:Ljava/lang/String;

    iget v3, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_dx:I

    iget v4, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_x:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_y:I

    int-to-float v4, v4

    div-float v5, v0, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_paintNonMarquee:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public setPixelsBetweenRepeat(I)V
    .locals 1
    .param p1, "g1_pbr"    # I

    .prologue
    .line 381
    invoke-static {p1}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    iput v0, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->PIXELS_BETWEEN_REPEAT:I

    .line 382
    return-void
.end method

.method public setPixelsPerSecond(I)V
    .locals 1
    .param p1, "g1_pps"    # I

    .prologue
    .line 375
    invoke-static {p1}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    iput v0, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->PIXELS_PER_SECOND:I

    .line 376
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_text:Ljava/lang/String;

    .line 369
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_paint:Landroid/graphics/Paint;

    invoke-static {p1, v0}, Lcom/glu/android/GluUtil;->getStringWidth(Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_textWidth:I

    .line 370
    return-void
.end method

.method public tick(I)V
    .locals 4
    .param p1, "elapseMS"    # I

    .prologue
    const/4 v3, 0x0

    .line 386
    iget v0, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_delayTimer:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_delayTimer:I

    .line 388
    iget v0, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_delayTimer:I

    if-gtz v0, :cond_0

    .line 390
    iget v0, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_cycleTimeElapsed:I

    iget v1, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->PIXELS_PER_SECOND:I

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_offset:I

    .line 391
    iget v0, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_cycleTimeElapsed:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_cycleTimeElapsed:I

    .line 393
    iget v0, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_offset:I

    iget v1, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_textWidth:I

    iget v2, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->PIXELS_BETWEEN_REPEAT:I

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 395
    iput v3, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_offset:I

    .line 396
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_delayTimer:I

    .line 397
    iput v3, p0, Lcom/glu/android/ResFileDownloadView$GluMarquee;->m_cycleTimeElapsed:I

    .line 400
    :cond_0
    return-void
.end method
