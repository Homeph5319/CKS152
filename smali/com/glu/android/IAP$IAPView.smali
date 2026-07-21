.class public Lcom/glu/android/IAP$IAPView;
.super Landroid/view/View;
.source "IAP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/IAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IAPView"
.end annotation


# static fields
.field private static final DIALOG_OPEN_TIME:I = 0x1f4

.field public static final DIALOG_TYPE_ALERT:I = 0x2

.field public static final DIALOG_TYPE_YES_NO:I = 0x1

.field private static final TRANSPARENCY_MASK:I = -0x40000000

.field private static final g1_BUTTON_BOTTOM_MARGIN:I = 0xc

.field private static final g1_BUTTON_CENTER_MARGIN:I = 0x18

.field private static final g1_BUTTON_HEIGHT:I = 0x28

.field private static final g1_BUTTON_WIDTH:I = 0x3c

.field private static final g1_DIALOG_HEIGHT_LANDSCAPE:I = 0x96

.field private static final g1_DIALOG_WIDTH_LANDSCAPE:I = 0x118

.field private static final g1_FONT_SIZE:I = 0x12

.field private static final g1_ROUND_RECT_STROKE_WIDTH:I = 0x6


# instance fields
.field private BUTTON_BOTTOM_MARGIN:I

.field private BUTTON_CENTER_MARGIN:I

.field private BUTTON_HEIGHT:I

.field private BUTTON_WIDTH:I

.field private DIALOG_HEIGHT:I

.field private DIALOG_WIDTH:I

.field private FONT_SIZE:I

.field private ROUND_RECT_STROKE_WIDTH:I

.field private m_buttonNegativeRectBounds:Landroid/graphics/Rect;

.field private m_buttonNeutralRectBounds:Landroid/graphics/Rect;

.field private m_buttonPositiveRectBounds:Landroid/graphics/Rect;

.field private m_dialogTimer:I

.field private m_dialogType:I

.field private m_innerRectBounds:Landroid/graphics/RectF;

.field private m_lastTickTime:J

.field private m_outerRectBounds:Landroid/graphics/RectF;

.field private m_roundRectInnerPaint:Landroid/graphics/Paint;

.field private m_roundRectOuterPaint:Landroid/graphics/Paint;

.field private m_subviewMask:I

.field private m_subviewRects:[Landroid/graphics/Rect;

.field private m_textPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 506
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 417
    const/16 v1, 0x12

    iput v1, p0, Lcom/glu/android/IAP$IAPView;->FONT_SIZE:I

    .line 418
    const/4 v1, 0x6

    iput v1, p0, Lcom/glu/android/IAP$IAPView;->ROUND_RECT_STROKE_WIDTH:I

    .line 419
    const/16 v1, 0x118

    iput v1, p0, Lcom/glu/android/IAP$IAPView;->DIALOG_WIDTH:I

    .line 420
    const/16 v1, 0x96

    iput v1, p0, Lcom/glu/android/IAP$IAPView;->DIALOG_HEIGHT:I

    .line 421
    const/16 v1, 0x3c

    iput v1, p0, Lcom/glu/android/IAP$IAPView;->BUTTON_WIDTH:I

    .line 422
    const/16 v1, 0x28

    iput v1, p0, Lcom/glu/android/IAP$IAPView;->BUTTON_HEIGHT:I

    .line 423
    const/16 v1, 0xc

    iput v1, p0, Lcom/glu/android/IAP$IAPView;->BUTTON_BOTTOM_MARGIN:I

    .line 424
    const/16 v1, 0x18

    iput v1, p0, Lcom/glu/android/IAP$IAPView;->BUTTON_CENTER_MARGIN:I

    .line 426
    iput-object v2, p0, Lcom/glu/android/IAP$IAPView;->m_textPaint:Landroid/graphics/Paint;

    .line 427
    iput-object v2, p0, Lcom/glu/android/IAP$IAPView;->m_roundRectOuterPaint:Landroid/graphics/Paint;

    .line 428
    iput-object v2, p0, Lcom/glu/android/IAP$IAPView;->m_roundRectInnerPaint:Landroid/graphics/Paint;

    .line 432
    iput v5, p0, Lcom/glu/android/IAP$IAPView;->m_dialogTimer:I

    .line 433
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/glu/android/IAP$IAPView;->m_lastTickTime:J

    .line 436
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/glu/android/IAP$IAPView;->m_innerRectBounds:Landroid/graphics/RectF;

    .line 437
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/glu/android/IAP$IAPView;->m_outerRectBounds:Landroid/graphics/RectF;

    .line 438
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/glu/android/IAP$IAPView;->m_buttonPositiveRectBounds:Landroid/graphics/Rect;

    .line 439
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/glu/android/IAP$IAPView;->m_buttonNegativeRectBounds:Landroid/graphics/Rect;

    .line 440
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/glu/android/IAP$IAPView;->m_buttonNeutralRectBounds:Landroid/graphics/Rect;

    .line 444
    iput v5, p0, Lcom/glu/android/IAP$IAPView;->m_dialogType:I

    .line 447
    iput v5, p0, Lcom/glu/android/IAP$IAPView;->m_subviewMask:I

    .line 448
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/glu/android/IAP$IAPView;->m_subviewRects:[Landroid/graphics/Rect;

    .line 508
    invoke-direct {p0}, Lcom/glu/android/IAP$IAPView;->scaleLayoutConstants()V

    .line 509
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/glu/android/IAP$IAPView;->m_subviewRects:[Landroid/graphics/Rect;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/glu/android/IAP$IAPView;->m_subviewRects:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v2, v1, v0

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/glu/android/IAP$IAPView;->m_textPaint:Landroid/graphics/Paint;

    .line 513
    iget-object v1, p0, Lcom/glu/android/IAP$IAPView;->m_textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 514
    iget-object v1, p0, Lcom/glu/android/IAP$IAPView;->m_textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 515
    iget-object v1, p0, Lcom/glu/android/IAP$IAPView;->m_textPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/glu/android/IAP$IAPView;->FONT_SIZE:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 516
    iget-object v1, p0, Lcom/glu/android/IAP$IAPView;->m_textPaint:Landroid/graphics/Paint;

    const v2, -0x3f000001    # -7.9999995f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 517
    iget-object v1, p0, Lcom/glu/android/IAP$IAPView;->m_textPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 518
    iget-object v1, p0, Lcom/glu/android/IAP$IAPView;->m_textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 522
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/glu/android/IAP$IAPView;->m_roundRectOuterPaint:Landroid/graphics/Paint;

    .line 523
    iget-object v1, p0, Lcom/glu/android/IAP$IAPView;->m_roundRectOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 524
    iget-object v1, p0, Lcom/glu/android/IAP$IAPView;->m_roundRectOuterPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/glu/android/IAP$IAPView;->ROUND_RECT_STROKE_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 525
    iget-object v1, p0, Lcom/glu/android/IAP$IAPView;->m_roundRectOuterPaint:Landroid/graphics/Paint;

    const v2, -0x3fe45fc8

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 527
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/glu/android/IAP$IAPView;->m_roundRectInnerPaint:Landroid/graphics/Paint;

    .line 528
    iget-object v1, p0, Lcom/glu/android/IAP$IAPView;->m_roundRectInnerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 529
    iget-object v1, p0, Lcom/glu/android/IAP$IAPView;->m_roundRectInnerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/glu/android/IAP$IAPView;->ROUND_RECT_STROKE_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 530
    iget-object v1, p0, Lcom/glu/android/IAP$IAPView;->m_roundRectInnerPaint:Landroid/graphics/Paint;

    const v2, -0x3fd400a7

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 531
    return-void
.end method

.method private recalculateIAPViewBounds()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 477
    const/4 v1, 0x0

    .line 478
    .local v1, "viewVisible":Z
    const v2, 0xffff

    .line 479
    .local v2, "x1":I
    const v4, 0xffff

    .line 480
    .local v4, "y1":I
    const v3, -0xffff

    .line 481
    .local v3, "x2":I
    const v5, -0xffff

    .line 482
    .local v5, "y2":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/glu/android/IAP$IAPView;->m_subviewRects:[Landroid/graphics/Rect;

    array-length v6, v6

    if-ge v0, v6, :cond_2

    .line 484
    iget-object v6, p0, Lcom/glu/android/IAP$IAPView;->m_subviewRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v0

    iget v6, v6, Landroid/graphics/Rect;->left:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 482
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 486
    :cond_1
    invoke-virtual {p0, v0}, Lcom/glu/android/IAP$IAPView;->isSubviewVisible(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 489
    const/4 v1, 0x1

    .line 490
    iget-object v6, p0, Lcom/glu/android/IAP$IAPView;->m_subviewRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v0

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 491
    iget-object v6, p0, Lcom/glu/android/IAP$IAPView;->m_subviewRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v0

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 492
    iget-object v6, p0, Lcom/glu/android/IAP$IAPView;->m_subviewRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v0

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 493
    iget-object v6, p0, Lcom/glu/android/IAP$IAPView;->m_subviewRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v0

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 496
    :cond_2
    sget-object v6, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    invoke-virtual {v6, v9, v1}, Lcom/glu/android/GluCanvasOverlayGroup;->setViewVisibility(IZ)V

    .line 497
    if-eqz v1, :cond_3

    .line 499
    sget-object v6, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    invoke-virtual {v6, v9, v2, v4}, Lcom/glu/android/GluCanvasOverlayGroup;->setViewXY(III)V

    .line 500
    sget-object v6, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    sub-int v7, v3, v2

    sub-int v8, v5, v4

    invoke-virtual {v6, v9, v7, v8}, Lcom/glu/android/GluCanvasOverlayGroup;->setViewWH(III)V

    .line 502
    :cond_3
    return-void
.end method

.method private scaleLayoutConstants()V
    .locals 2

    .prologue
    .line 535
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    iput v0, p0, Lcom/glu/android/IAP$IAPView;->FONT_SIZE:I

    .line 536
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    iput v0, p0, Lcom/glu/android/IAP$IAPView;->ROUND_RECT_STROKE_WIDTH:I

    .line 537
    const/16 v0, 0x3c

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    iput v0, p0, Lcom/glu/android/IAP$IAPView;->BUTTON_WIDTH:I

    .line 538
    const/16 v0, 0x28

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    iput v0, p0, Lcom/glu/android/IAP$IAPView;->BUTTON_HEIGHT:I

    .line 539
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    iput v0, p0, Lcom/glu/android/IAP$IAPView;->BUTTON_BOTTOM_MARGIN:I

    .line 540
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    iput v0, p0, Lcom/glu/android/IAP$IAPView;->BUTTON_CENTER_MARGIN:I

    .line 543
    const/16 v0, 0x118

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    iput v0, p0, Lcom/glu/android/IAP$IAPView;->DIALOG_WIDTH:I

    .line 544
    const/16 v0, 0x96

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    iput v0, p0, Lcom/glu/android/IAP$IAPView;->DIALOG_HEIGHT:I

    .line 545
    invoke-static {}, Lcom/glu/android/GluUtil;->isPortraitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iget v0, p0, Lcom/glu/android/IAP$IAPView;->DIALOG_WIDTH:I

    iget v1, p0, Lcom/glu/android/IAP$IAPView;->DIALOG_HEIGHT:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/glu/android/IAP$IAPView;->DIALOG_WIDTH:I

    .line 548
    iget v0, p0, Lcom/glu/android/IAP$IAPView;->DIALOG_HEIGHT:I

    iget v1, p0, Lcom/glu/android/IAP$IAPView;->DIALOG_WIDTH:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/glu/android/IAP$IAPView;->DIALOG_HEIGHT:I

    .line 549
    iget v0, p0, Lcom/glu/android/IAP$IAPView;->DIALOG_WIDTH:I

    iget v1, p0, Lcom/glu/android/IAP$IAPView;->DIALOG_HEIGHT:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/glu/android/IAP$IAPView;->DIALOG_WIDTH:I

    .line 551
    :cond_0
    return-void
.end method


# virtual methods
.method public isSubviewVisible(I)Z
    .locals 3
    .param p1, "subview"    # I

    .prologue
    const/4 v0, 0x1

    .line 450
    iget v1, p0, Lcom/glu/android/IAP$IAPView;->m_subviewMask:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "g"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v11, 0x1f4

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 566
    sget-object v7, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    iget-object v7, v7, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v7, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    iget-object v2, v7, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    .line 570
    .local v2, "parentRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v9}, Lcom/glu/android/IAP$IAPView;->isSubviewVisible(I)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/glu/android/GluPaypal;->instance:Lcom/glu/android/GluPaypal;

    if-eqz v7, :cond_0

    .line 572
    iget-object v7, p0, Lcom/glu/android/IAP$IAPView;->m_subviewRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v9

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->left:I

    sub-int v3, v7, v8

    .line 573
    .local v3, "transX":I
    iget-object v7, p0, Lcom/glu/android/IAP$IAPView;->m_subviewRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v9

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int v4, v7, v8

    .line 574
    .local v4, "transY":I
    int-to-float v7, v3

    int-to-float v8, v4

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 576
    neg-int v7, v3

    int-to-float v7, v7

    neg-int v8, v4

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 580
    .end local v3    # "transX":I
    .end local v4    # "transY":I
    :cond_0
    invoke-virtual {p0, v10}, Lcom/glu/android/IAP$IAPView;->isSubviewVisible(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 582
    iget-object v7, p0, Lcom/glu/android/IAP$IAPView;->m_subviewRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v10

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->left:I

    sub-int v3, v7, v8

    .line 583
    .restart local v3    # "transX":I
    iget-object v7, p0, Lcom/glu/android/IAP$IAPView;->m_subviewRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v10

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int v4, v7, v8

    .line 584
    .restart local v4    # "transY":I
    int-to-float v7, v3

    int-to-float v8, v4

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 586
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 587
    .local v0, "curTickTime":J
    iget v7, p0, Lcom/glu/android/IAP$IAPView;->m_dialogTimer:I

    iget-wide v8, p0, Lcom/glu/android/IAP$IAPView;->m_lastTickTime:J

    sub-long v8, v0, v8

    long-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Lcom/glu/android/IAP$IAPView;->m_dialogTimer:I

    .line 588
    iput-wide v0, p0, Lcom/glu/android/IAP$IAPView;->m_lastTickTime:J

    .line 591
    iget v7, p0, Lcom/glu/android/IAP$IAPView;->m_dialogTimer:I

    if-lez v7, :cond_2

    .line 593
    iget v7, p0, Lcom/glu/android/IAP$IAPView;->DIALOG_WIDTH:I

    iget v8, p0, Lcom/glu/android/IAP$IAPView;->m_dialogTimer:I

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    mul-int/2addr v7, v8

    div-int/lit16 v6, v7, 0x1f4

    .line 594
    .local v6, "trueDialogWidth":I
    iget v7, p0, Lcom/glu/android/IAP$IAPView;->DIALOG_HEIGHT:I

    iget v8, p0, Lcom/glu/android/IAP$IAPView;->m_dialogTimer:I

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    mul-int/2addr v7, v8

    div-int/lit16 v5, v7, 0x1f4

    .line 595
    .local v5, "trueDialogHeight":I
    if-lez v6, :cond_2

    if-lez v5, :cond_2

    .line 598
    iget-object v7, p0, Lcom/glu/android/IAP$IAPView;->m_outerRectBounds:Landroid/graphics/RectF;

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v8

    sub-int/2addr v8, v6

    shr-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    iput v8, v7, Landroid/graphics/RectF;->left:F

    .line 599
    iget-object v7, p0, Lcom/glu/android/IAP$IAPView;->m_outerRectBounds:Landroid/graphics/RectF;

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v8

    sub-int/2addr v8, v5

    shr-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    iput v8, v7, Landroid/graphics/RectF;->top:F

    .line 600
    iget-object v7, p0, Lcom/glu/android/IAP$IAPView;->m_outerRectBounds:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/glu/android/IAP$IAPView;->m_outerRectBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    int-to-float v9, v6

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 601
    iget-object v7, p0, Lcom/glu/android/IAP$IAPView;->m_outerRectBounds:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/glu/android/IAP$IAPView;->m_outerRectBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    int-to-float v9, v5

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->bottom:F

    .line 603
    iget-object v7, p0, Lcom/glu/android/IAP$IAPView;->m_innerRectBounds:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/glu/android/IAP$IAPView;->m_outerRectBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget v9, p0, Lcom/glu/android/IAP$IAPView;->ROUND_RECT_STROKE_WIDTH:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->left:F

    .line 604
    iget-object v7, p0, Lcom/glu/android/IAP$IAPView;->m_innerRectBounds:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/glu/android/IAP$IAPView;->m_outerRectBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    iget v9, p0, Lcom/glu/android/IAP$IAPView;->ROUND_RECT_STROKE_WIDTH:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->top:F

    .line 605
    iget-object v7, p0, Lcom/glu/android/IAP$IAPView;->m_innerRectBounds:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/glu/android/IAP$IAPView;->m_outerRectBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    iget v9, p0, Lcom/glu/android/IAP$IAPView;->ROUND_RECT_STROKE_WIDTH:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 606
    iget-object v7, p0, Lcom/glu/android/IAP$IAPView;->m_innerRectBounds:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/glu/android/IAP$IAPView;->m_outerRectBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    iget v9, p0, Lcom/glu/android/IAP$IAPView;->ROUND_RECT_STROKE_WIDTH:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->bottom:F

    .line 609
    iget-object v7, p0, Lcom/glu/android/IAP$IAPView;->m_innerRectBounds:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcom/glu/android/IAP$IAPView;->m_innerRectBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    iget-object v7, p0, Lcom/glu/android/IAP$IAPView;->m_innerRectBounds:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/glu/android/IAP$IAPView;->m_innerRectBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    .line 610
    iget-object v7, p0, Lcom/glu/android/IAP$IAPView;->m_innerRectBounds:Landroid/graphics/RectF;

    iget v8, p0, Lcom/glu/android/IAP$IAPView;->ROUND_RECT_STROKE_WIDTH:I

    int-to-float v8, v8

    iget v9, p0, Lcom/glu/android/IAP$IAPView;->ROUND_RECT_STROKE_WIDTH:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/glu/android/IAP$IAPView;->m_roundRectInnerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 612
    :cond_1
    iget-object v7, p0, Lcom/glu/android/IAP$IAPView;->m_outerRectBounds:Landroid/graphics/RectF;

    iget v8, p0, Lcom/glu/android/IAP$IAPView;->ROUND_RECT_STROKE_WIDTH:I

    int-to-float v8, v8

    iget v9, p0, Lcom/glu/android/IAP$IAPView;->ROUND_RECT_STROKE_WIDTH:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/glu/android/IAP$IAPView;->m_roundRectOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 615
    iget v7, p0, Lcom/glu/android/IAP$IAPView;->m_dialogTimer:I

    if-lt v7, v11, :cond_2

    .line 617
    iget-object v7, p0, Lcom/glu/android/IAP$IAPView;->m_buttonPositiveRectBounds:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/glu/android/IAP$IAPView;->m_outerRectBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    iget v9, p0, Lcom/glu/android/IAP$IAPView;->BUTTON_BOTTOM_MARGIN:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 618
    iget-object v7, p0, Lcom/glu/android/IAP$IAPView;->m_buttonPositiveRectBounds:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/glu/android/IAP$IAPView;->m_buttonPositiveRectBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Lcom/glu/android/IAP$IAPView;->BUTTON_HEIGHT:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 619
    iget-object v7, p0, Lcom/glu/android/IAP$IAPView;->m_buttonPositiveRectBounds:Landroid/graphics/Rect;

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v8

    iget v9, p0, Lcom/glu/android/IAP$IAPView;->BUTTON_CENTER_MARGIN:I

    sub-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x1

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 620
    iget-object v7, p0, Lcom/glu/android/IAP$IAPView;->m_buttonPositiveRectBounds:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/glu/android/IAP$IAPView;->m_buttonPositiveRectBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget v9, p0, Lcom/glu/android/IAP$IAPView;->BUTTON_WIDTH:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 622
    iget-object v7, p0, Lcom/glu/android/IAP$IAPView;->m_buttonNegativeRectBounds:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/glu/android/IAP$IAPView;->m_buttonPositiveRectBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 623
    iget-object v7, p0, Lcom/glu/android/IAP$IAPView;->m_buttonNegativeRectBounds:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/glu/android/IAP$IAPView;->m_buttonPositiveRectBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 624
    iget-object v7, p0, Lcom/glu/android/IAP$IAPView;->m_buttonNegativeRectBounds:Landroid/graphics/Rect;

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v8

    iget v9, p0, Lcom/glu/android/IAP$IAPView;->BUTTON_CENTER_MARGIN:I

    add-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x1

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 625
    iget-object v7, p0, Lcom/glu/android/IAP$IAPView;->m_buttonNegativeRectBounds:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/glu/android/IAP$IAPView;->m_buttonNegativeRectBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lcom/glu/android/IAP$IAPView;->BUTTON_WIDTH:I

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 627
    iget-object v7, p0, Lcom/glu/android/IAP$IAPView;->m_buttonNeutralRectBounds:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/glu/android/IAP$IAPView;->m_buttonPositiveRectBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 628
    iget-object v7, p0, Lcom/glu/android/IAP$IAPView;->m_buttonNeutralRectBounds:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/glu/android/IAP$IAPView;->m_buttonPositiveRectBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 629
    iget-object v7, p0, Lcom/glu/android/IAP$IAPView;->m_buttonNeutralRectBounds:Landroid/graphics/Rect;

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v8

    iget v9, p0, Lcom/glu/android/IAP$IAPView;->BUTTON_WIDTH:I

    sub-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x1

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 630
    iget-object v7, p0, Lcom/glu/android/IAP$IAPView;->m_buttonNeutralRectBounds:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/glu/android/IAP$IAPView;->m_buttonNeutralRectBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lcom/glu/android/IAP$IAPView;->BUTTON_WIDTH:I

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 635
    .end local v5    # "trueDialogHeight":I
    .end local v6    # "trueDialogWidth":I
    :cond_2
    neg-int v7, v3

    int-to-float v7, v7

    neg-int v8, v4

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 638
    .end local v0    # "curTickTime":J
    .end local v3    # "transX":I
    .end local v4    # "transY":I
    :cond_3
    invoke-virtual {p0}, Lcom/glu/android/IAP$IAPView;->invalidate()V

    .line 639
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 644
    sget-object v3, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    iget-object v3, v3, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v3, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    iget-object v0, v3, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    .line 647
    .local v0, "parentRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v4}, Lcom/glu/android/IAP$IAPView;->isSubviewVisible(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 650
    iget v3, p0, Lcom/glu/android/IAP$IAPView;->m_dialogTimer:I

    const/16 v5, 0x1f4

    if-lt v3, v5, :cond_0

    .line 652
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 653
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 655
    .local v2, "y":I
    iget v3, p0, Lcom/glu/android/IAP$IAPView;->m_dialogType:I

    if-ne v3, v4, :cond_2

    .line 657
    iget-object v3, p0, Lcom/glu/android/IAP$IAPView;->m_buttonPositiveRectBounds:Landroid/graphics/Rect;

    invoke-static {v3, v1, v2}, Lcom/glu/android/GluUtil;->isInRect(Landroid/graphics/Rect;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_0
    :goto_0
    move v3, v4

    .line 680
    :goto_1
    return v3

    .line 659
    .restart local v1    # "x":I
    .restart local v2    # "y":I
    :cond_1
    iget-object v3, p0, Lcom/glu/android/IAP$IAPView;->m_buttonNegativeRectBounds:Landroid/graphics/Rect;

    invoke-static {v3, v1, v2}, Lcom/glu/android/GluUtil;->isInRect(Landroid/graphics/Rect;II)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 662
    :cond_2
    iget v3, p0, Lcom/glu/android/IAP$IAPView;->m_dialogType:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 664
    iget-object v3, p0, Lcom/glu/android/IAP$IAPView;->m_buttonNeutralRectBounds:Landroid/graphics/Rect;

    invoke-static {v3, v1, v2}, Lcom/glu/android/GluUtil;->isInRect(Landroid/graphics/Rect;II)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 674
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_3
    invoke-virtual {p0, v5}, Lcom/glu/android/IAP$IAPView;->isSubviewVisible(I)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/glu/android/GluPaypal;->instance:Lcom/glu/android/GluPaypal;

    if-eqz v3, :cond_4

    :cond_4
    move v3, v5

    .line 680
    goto :goto_1
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 555
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 557
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 558
    const/4 v0, 0x0

    iput v0, p0, Lcom/glu/android/IAP$IAPView;->m_dialogTimer:I

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    if-nez p1, :cond_0

    .line 560
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/glu/android/IAP$IAPView;->m_lastTickTime:J

    goto :goto_0
.end method

.method public setSubviewBounds(IIIII)V
    .locals 1
    .param p1, "subview"    # I
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I

    .prologue
    .line 467
    iget-object v0, p0, Lcom/glu/android/IAP$IAPView;->m_subviewRects:[Landroid/graphics/Rect;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 468
    iget-object v0, p0, Lcom/glu/android/IAP$IAPView;->m_subviewRects:[Landroid/graphics/Rect;

    aget-object v0, v0, p1

    iput p3, v0, Landroid/graphics/Rect;->top:I

    .line 469
    iget-object v0, p0, Lcom/glu/android/IAP$IAPView;->m_subviewRects:[Landroid/graphics/Rect;

    aget-object v0, v0, p1

    iput p4, v0, Landroid/graphics/Rect;->right:I

    .line 470
    iget-object v0, p0, Lcom/glu/android/IAP$IAPView;->m_subviewRects:[Landroid/graphics/Rect;

    aget-object v0, v0, p1

    iput p5, v0, Landroid/graphics/Rect;->bottom:I

    .line 472
    invoke-direct {p0}, Lcom/glu/android/IAP$IAPView;->recalculateIAPViewBounds()V

    .line 473
    return-void
.end method

.method public setSubviewVisible(IZ)V
    .locals 6
    .param p1, "subview"    # I
    .param p2, "visible"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 453
    if-eqz p2, :cond_0

    .line 455
    iget v0, p0, Lcom/glu/android/IAP$IAPView;->m_subviewMask:I

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/glu/android/IAP$IAPView;->m_subviewMask:I

    .line 456
    invoke-direct {p0}, Lcom/glu/android/IAP$IAPView;->recalculateIAPViewBounds()V

    .line 463
    :goto_0
    return-void

    .line 460
    :cond_0
    iget v0, p0, Lcom/glu/android/IAP$IAPView;->m_subviewMask:I

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/glu/android/IAP$IAPView;->m_subviewMask:I

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    .line 461
    invoke-virtual/range {v0 .. v5}, Lcom/glu/android/IAP$IAPView;->setSubviewBounds(IIIII)V

    goto :goto_0
.end method
