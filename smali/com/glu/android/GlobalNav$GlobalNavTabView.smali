.class public Lcom/glu/android/GlobalNav$GlobalNavTabView;
.super Landroid/view/View;
.source "GlobalNav.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GlobalNav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GlobalNavTabView"
.end annotation


# instance fields
.field private m_iconPressedFiller:Landroid/graphics/LightingColorFilter;

.field private m_iconSelectedFiller:Landroid/graphics/LightingColorFilter;

.field private m_imagePaint:Landroid/graphics/Paint;

.field private m_linePaint:Landroid/graphics/Paint;

.field public m_pressedTab:I

.field public m_selectedTab:I

.field public m_tabIds:[I

.field private m_textPaint:Landroid/graphics/Paint;

.field public m_visibleTabs:[Z

.field final synthetic this$0:Lcom/glu/android/GlobalNav;


# direct methods
.method public constructor <init>(Lcom/glu/android/GlobalNav;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/high16 v3, -0x1000000

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 516
    iput-object p1, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->this$0:Lcom/glu/android/GlobalNav;

    .line 517
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 503
    iput-object v1, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_visibleTabs:[Z

    .line 504
    iput-object v1, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_tabIds:[I

    .line 505
    iput v4, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_pressedTab:I

    .line 506
    const/4 v0, 0x0

    iput v0, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_selectedTab:I

    .line 508
    iput-object v1, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_linePaint:Landroid/graphics/Paint;

    .line 509
    iput-object v1, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_imagePaint:Landroid/graphics/Paint;

    .line 510
    iput-object v1, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_textPaint:Landroid/graphics/Paint;

    .line 512
    iput-object v1, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_iconSelectedFiller:Landroid/graphics/LightingColorFilter;

    .line 513
    iput-object v1, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_iconPressedFiller:Landroid/graphics/LightingColorFilter;

    .line 519
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_linePaint:Landroid/graphics/Paint;

    .line 520
    iget-object v0, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 521
    iget-object v0, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_linePaint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 522
    iget-object v0, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_linePaint:Landroid/graphics/Paint;

    const v1, -0x3f3f40

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 524
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_imagePaint:Landroid/graphics/Paint;

    .line 525
    iget-object v0, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_imagePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 526
    iget-object v0, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_imagePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 527
    iget-object v0, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_imagePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 529
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_textPaint:Landroid/graphics/Paint;

    .line 530
    iget-object v0, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 531
    iget-object v0, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 532
    iget-object v0, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_textPaint:Landroid/graphics/Paint;

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 533
    iget-object v0, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 534
    iget-object v0, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 537
    new-instance v0, Landroid/graphics/LightingColorFilter;

    invoke-direct {v0, v3, v4}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v0, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_iconSelectedFiller:Landroid/graphics/LightingColorFilter;

    .line 538
    new-instance v0, Landroid/graphics/LightingColorFilter;

    invoke-direct {v0, v3, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v0, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_iconPressedFiller:Landroid/graphics/LightingColorFilter;

    .line 539
    return-void
.end method

.method private getPressedTab(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, -0x1

    .line 580
    iget-object v1, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_tabIds:[I

    if-nez v1, :cond_1

    .line 585
    :cond_0
    :goto_0
    return v0

    .line 582
    :cond_1
    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/glu/android/GlobalNav$GlobalNavTabView;->getHeight()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 585
    invoke-virtual {p0}, Lcom/glu/android/GlobalNav$GlobalNavTabView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_tabIds:[I

    array-length v1, v1

    div-int/2addr v0, v1

    div-int v0, p1, v0

    goto :goto_0
.end method

.method private numVisibleTabs()I
    .locals 3

    .prologue
    .line 568
    iget-object v2, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_visibleTabs:[Z

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 575
    :cond_0
    return v0

    .line 570
    :cond_1
    const/4 v0, 0x0

    .line 571
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_visibleTabs:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 572
    iget-object v2, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_visibleTabs:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_2

    .line 573
    add-int/lit8 v0, v0, 0x1

    .line 571
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getSelectedTab()I
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_selectedTab:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "g"    # Landroid/graphics/Canvas;

    .prologue
    .line 621
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_tabIds:[I

    if-nez v1, :cond_0

    .line 623
    const-string v1, "GlobalNavTabView warning: Attempted to draw before tabs determined."

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 664
    :goto_0
    return-void

    .line 630
    :cond_0
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_tabIds:[I

    array-length v1, v1

    if-ge v11, v1, :cond_3

    .line 632
    move-object/from16 v0, p0

    iget v1, v0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_selectedTab:I

    if-ne v11, v1, :cond_1

    sget-object v2, Lcom/glu/android/GlobalNav;->TAB_GRADIENT_ACTIVE:[I

    .line 633
    .local v2, "gradientSpec":[I
    :goto_2
    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/GlobalNav$GlobalNavTabView;->getWidth()I

    move-result v1

    mul-int/2addr v1, v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_tabIds:[I

    array-length v4, v4

    div-int v4, v1, v4

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/GlobalNav$GlobalNavTabView;->getWidth()I

    move-result v1

    add-int/lit8 v6, v11, 0x1

    mul-int/2addr v1, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_tabIds:[I

    array-length v6, v6

    div-int v6, v1, v6

    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/GlobalNav$GlobalNavTabView;->getHeight()I

    move-result v7

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lcom/glu/android/GluUtil;->drawGradientRect(Landroid/graphics/Canvas;[IZIIII)V

    .line 630
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 632
    .end local v2    # "gradientSpec":[I
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_pressedTab:I

    if-ne v11, v1, :cond_2

    sget-object v2, Lcom/glu/android/GlobalNav;->TAB_GRADIENT_PRESSED:[I

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/glu/android/GlobalNav;->TAB_GRADIENT_NORMAL:[I

    goto :goto_2

    .line 637
    :cond_3
    const/4 v11, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_tabIds:[I

    array-length v1, v1

    if-ge v11, v1, :cond_4

    .line 638
    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/GlobalNav$GlobalNavTabView;->getWidth()I

    move-result v1

    mul-int/2addr v1, v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_tabIds:[I

    array-length v3, v3

    div-int/2addr v1, v3

    int-to-float v4, v1

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/GlobalNav$GlobalNavTabView;->getWidth()I

    move-result v1

    mul-int/2addr v1, v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_tabIds:[I

    array-length v3, v3

    div-int/2addr v1, v3

    int-to-float v6, v1

    sget v1, Lcom/glu/android/GlobalNav;->TAB_HEIGHT:I

    int-to-float v7, v1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_linePaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 637
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 639
    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/GlobalNav$GlobalNavTabView;->getWidth()I

    move-result v1

    int-to-float v6, v1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_linePaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 642
    const/4 v11, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_tabIds:[I

    array-length v1, v1

    if-ge v11, v1, :cond_7

    .line 644
    move-object/from16 v0, p0

    iget v1, v0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_selectedTab:I

    if-ne v11, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_iconSelectedFiller:Landroid/graphics/LightingColorFilter;

    .line 645
    .local v10, "cf":Landroid/graphics/LightingColorFilter;
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->this$0:Lcom/glu/android/GlobalNav;

    iget-object v1, v1, Lcom/glu/android/GlobalNav;->GNS_TAB_IMAGES:[Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_tabIds:[I

    aget v3, v3, v11

    aget-object v12, v1, v3

    .line 646
    .local v12, "img":Landroid/graphics/drawable/Drawable;
    const/16 v9, 0x19

    .line 647
    .local v9, "OPTIMAL_ICON_HEIGHT_G1":I
    const/16 v1, 0x19

    invoke-static {v1}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v13

    .line 648
    .local v13, "imgHeight":I
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x19

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/2addr v1, v3

    invoke-static {v1}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v14

    .line 649
    .local v14, "imgWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/GlobalNav$GlobalNavTabView;->getWidth()I

    move-result v1

    mul-int/2addr v1, v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_tabIds:[I

    array-length v3, v3

    div-int/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/GlobalNav$GlobalNavTabView;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_tabIds:[I

    array-length v4, v4

    div-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    shr-int/lit8 v3, v14, 0x1

    sub-int v15, v1, v3

    .line 650
    .local v15, "x":I
    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/GlobalNav$GlobalNavTabView;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    sub-int v16, v1, v13

    .line 652
    .local v16, "y":I
    add-int v1, v15, v14

    add-int/lit8 v1, v1, -0x1

    add-int v3, v16, v13

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 653
    invoke-virtual {v12, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 654
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 656
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->this$0:Lcom/glu/android/GlobalNav;

    iget-object v1, v1, Lcom/glu/android/GlobalNav;->GNS_TAB_STRINGS:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_tabIds:[I

    aget v3, v3, v11

    aget-object v1, v1, v3

    shr-int/lit8 v3, v14, 0x1

    add-int/2addr v3, v15

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/GlobalNav$GlobalNavTabView;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0xf

    div-int/lit8 v4, v4, 0x10

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_textPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 642
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 644
    .end local v9    # "OPTIMAL_ICON_HEIGHT_G1":I
    .end local v10    # "cf":Landroid/graphics/LightingColorFilter;
    .end local v12    # "img":Landroid/graphics/drawable/Drawable;
    .end local v13    # "imgHeight":I
    .end local v14    # "imgWidth":I
    .end local v15    # "x":I
    .end local v16    # "y":I
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_pressedTab:I

    if-ne v11, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_iconPressedFiller:Landroid/graphics/LightingColorFilter;

    goto/16 :goto_5

    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 661
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/GlobalNav$GlobalNavTabView;->invalidate()V

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 590
    iget-object v3, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_tabIds:[I

    if-nez v3, :cond_0

    .line 592
    const-string v3, "GlobalNavTabView warning: Attempted to determine touch before tabs determined."

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 593
    const/4 v3, 0x0

    .line 616
    :goto_0
    return v3

    .line 596
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 597
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 599
    .local v2, "y":I
    invoke-direct {p0, v1, v2}, Lcom/glu/android/GlobalNav$GlobalNavTabView;->getPressedTab(II)I

    move-result v0

    .line 601
    .local v0, "curPressedTab":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 616
    :cond_1
    :goto_1
    :pswitch_0
    const/4 v3, 0x1

    goto :goto_0

    .line 606
    :pswitch_1
    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_tabIds:[I

    array-length v3, v3

    if-gt v0, v3, :cond_1

    .line 607
    iput v0, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_pressedTab:I

    goto :goto_1

    .line 610
    :pswitch_2
    iget v3, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_pressedTab:I

    if-ne v3, v0, :cond_2

    .line 611
    sget-object v3, Lcom/glu/android/GlobalNav;->instance:Lcom/glu/android/GlobalNav;

    iget v4, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_pressedTab:I

    invoke-virtual {v3, v4}, Lcom/glu/android/GlobalNav;->setTab(I)V

    .line 612
    :cond_2
    const/4 v3, -0x1

    iput v3, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_pressedTab:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setSelectedTab(I)V
    .locals 0
    .param p1, "tab"    # I

    .prologue
    .line 563
    iput p1, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_selectedTab:I

    .line 564
    return-void
.end method

.method public setVisibleTabs([Z)V
    .locals 3
    .param p1, "visibleTabs"    # [Z

    .prologue
    .line 543
    iput-object p1, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_visibleTabs:[Z

    .line 544
    const/4 v0, 0x0

    .line 545
    .local v0, "count":I
    invoke-direct {p0}, Lcom/glu/android/GlobalNav$GlobalNavTabView;->numVisibleTabs()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_tabIds:[I

    .line 546
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_visibleTabs:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 548
    iget-object v2, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_visibleTabs:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    .line 550
    iget-object v2, p0, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_tabIds:[I

    aput v1, v2, v0

    .line 551
    add-int/lit8 v0, v0, 0x1

    .line 546
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 554
    :cond_1
    return-void
.end method
