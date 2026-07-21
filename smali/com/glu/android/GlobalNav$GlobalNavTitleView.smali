.class public Lcom/glu/android/GlobalNav$GlobalNavTitleView;
.super Landroid/view/View;
.source "GlobalNav.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GlobalNav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GlobalNavTitleView"
.end annotation


# instance fields
.field private m_buttonAreaX:I

.field private m_buttonPressed:Z

.field private m_shinyButtonPressed:Z

.field private m_shinyButtonRect:Landroid/graphics/Rect;

.field private m_textPaint:Landroid/graphics/Paint;

.field private m_titleButtonRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/glu/android/GlobalNav;


# direct methods
.method public constructor <init>(Lcom/glu/android/GlobalNav;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 380
    iput-object p1, p0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->this$0:Lcom/glu/android/GlobalNav;

    .line 381
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 371
    iput-boolean v1, p0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_buttonPressed:Z

    .line 372
    iput-boolean v1, p0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_shinyButtonPressed:Z

    .line 373
    iput v1, p0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_buttonAreaX:I

    .line 374
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_textPaint:Landroid/graphics/Paint;

    .line 376
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_titleButtonRect:Landroid/graphics/Rect;

    .line 377
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_shinyButtonRect:Landroid/graphics/Rect;

    .line 383
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_textPaint:Landroid/graphics/Paint;

    .line 384
    iget-object v0, p0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 385
    iget-object v0, p0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 386
    iget-object v0, p0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_textPaint:Landroid/graphics/Paint;

    const/16 v1, 0x18

    invoke-static {v1}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 387
    iget-object v0, p0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_textPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 388
    iget-object v0, p0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 389
    iget-object v0, p0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 394
    const v0, 0x7f02000c

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 395
    const v0, 0x7f02000d

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 396
    const v0, 0x7f02000e

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 397
    const v0, 0x7f02000f

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 399
    return-void
.end method

.method private setButtonAreaX()V
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_buttonAreaX:I

    if-nez v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_buttonAreaX:I

    .line 405
    :cond_0
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "g"    # Landroid/graphics/Canvas;

    .prologue
    .line 448
    sget-object v12, Lcom/glu/android/GlobalNav;->instance:Lcom/glu/android/GlobalNav;

    .line 449
    .local v12, "savedInstance":Lcom/glu/android/GlobalNav;
    if-nez v12, :cond_0

    .line 498
    :goto_0
    return-void

    .line 452
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->setButtonAreaX()V

    .line 454
    sget-object v2, Lcom/glu/android/GlobalNav;->TITLE_GRADIENT_COLORS:[I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->getHeight()I

    move-result v7

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lcom/glu/android/GluUtil;->drawGradientRect(Landroid/graphics/Canvas;[IZIIII)V

    .line 457
    iget-object v1, v12, Lcom/glu/android/GlobalNav;->m_pushLink:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 459
    const v1, 0x7f02000c

    invoke-static {v1}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 460
    .local v2, "shinyButton":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v14, 0xe10

    rem-long/2addr v5, v14

    long-to-int v13, v5

    .line 461
    .local v13, "shinyTimer":I
    const/16 v1, 0xd48

    if-lt v13, v1, :cond_3

    .line 462
    const v1, 0x7f02000f

    invoke-static {v1}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 467
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_shinyButtonRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 468
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_shinyButtonRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->getHeight()I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 469
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_shinyButtonRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 470
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_shinyButtonRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->getHeight()I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 471
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_shinyButtonRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v1, v1, 0x9

    div-int/lit8 v11, v1, 0xa

    .line 472
    .local v11, "desiredButtonWH":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_shinyButtonRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_shinyButtonRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_shinyButtonRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v11

    shr-int/lit8 v5, v5, 0x1

    add-int v3, v1, v5

    .line 473
    .local v3, "shinyX":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_shinyButtonRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_shinyButtonRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_shinyButtonRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v11

    shr-int/lit8 v5, v5, 0x1

    add-int v4, v1, v5

    .line 474
    .local v4, "shinyY":I
    add-int v5, v3, v11

    add-int v6, v4, v11

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/glu/android/GluUtil;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 478
    .end local v2    # "shinyButton":Landroid/graphics/drawable/Drawable;
    .end local v3    # "shinyX":I
    .end local v4    # "shinyY":I
    .end local v11    # "desiredButtonWH":I
    .end local v13    # "shinyTimer":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v9, v1, 0x8

    .line 479
    .local v9, "buttonHeight":I
    move v10, v9

    .line 481
    .local v10, "buttonWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->getHeight()I

    move-result v1

    shr-int/lit8 v8, v1, 0x1

    .line 483
    .local v8, "buttonCenterY":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_titleButtonRect:Landroid/graphics/Rect;

    shr-int/lit8 v5, v9, 0x1

    sub-int v5, v8, v5

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 484
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_titleButtonRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_titleButtonRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v9

    add-int/lit8 v5, v5, -0x1

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 485
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_titleButtonRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_titleButtonRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 486
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_titleButtonRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_titleButtonRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v10

    add-int/lit8 v5, v5, -0x1

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 488
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_titleButtonRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_buttonPressed:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/glu/android/GluUtil;->CF_BUTTON_SELECTED:Landroid/graphics/LightingColorFilter;

    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->this$0:Lcom/glu/android/GlobalNav;

    iget-object v6, v6, Lcom/glu/android/GlobalNav;->GNS_IMAGES:[Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    move-object/from16 v0, p1

    invoke-static {v0, v5, v1, v6}, Lcom/glu/android/GluUtil;->paintButton(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/ColorFilter;Landroid/graphics/drawable/Drawable;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->this$0:Lcom/glu/android/GlobalNav;

    invoke-virtual {v1}, Lcom/glu/android/GlobalNav;->getCurrentTabString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->getWidth()I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->getHeight()I

    move-result v6

    shr-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_textPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->ascent()F

    move-result v7

    float-to-int v7, v7

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_textPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    float-to-int v7, v7

    shr-int/lit8 v7, v7, 0x1

    sub-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_textPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->invalidate()V

    goto/16 :goto_0

    .line 463
    .end local v8    # "buttonCenterY":I
    .end local v9    # "buttonHeight":I
    .end local v10    # "buttonWidth":I
    .restart local v2    # "shinyButton":Landroid/graphics/drawable/Drawable;
    .restart local v13    # "shinyTimer":I
    :cond_3
    const/16 v1, 0xc80

    if-lt v13, v1, :cond_4

    .line 464
    const v1, 0x7f02000e

    invoke-static {v1}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 465
    :cond_4
    const/16 v1, 0xbb8

    if-lt v13, v1, :cond_1

    .line 466
    const v1, 0x7f02000d

    invoke-static {v1}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 488
    .end local v2    # "shinyButton":Landroid/graphics/drawable/Drawable;
    .end local v13    # "shinyTimer":I
    .restart local v8    # "buttonCenterY":I
    .restart local v9    # "buttonHeight":I
    .restart local v10    # "buttonWidth":I
    :cond_5
    sget-object v1, Lcom/glu/android/GluUtil;->CF_BUTTON_DARK:Landroid/graphics/LightingColorFilter;

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 409
    invoke-direct {p0}, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->setButtonAreaX()V

    .line 411
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 412
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 414
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 442
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 418
    :pswitch_1
    iget v2, p0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_buttonAreaX:I

    if-le v0, v2, :cond_1

    .line 419
    iput-boolean v3, p0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_buttonPressed:Z

    goto :goto_0

    .line 420
    :cond_1
    invoke-virtual {p0}, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->getHeight()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 421
    iput-boolean v3, p0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_shinyButtonPressed:Z

    goto :goto_0

    .line 424
    :pswitch_2
    iget-boolean v2, p0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_buttonPressed:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_buttonAreaX:I

    if-le v0, v2, :cond_3

    if-ltz v1, :cond_3

    invoke-virtual {p0}, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 425
    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v2}, Lcom/glu/android/GameLet;->closeGNSDialog()V

    .line 437
    :cond_2
    :goto_1
    iput-boolean v4, p0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_shinyButtonPressed:Z

    .line 438
    iput-boolean v4, p0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_buttonPressed:Z

    goto :goto_0

    .line 426
    :cond_3
    iget-object v2, p0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->m_shinyButtonRect:Landroid/graphics/Rect;

    invoke-static {v2, v0, v1}, Lcom/glu/android/GluUtil;->isInRect(Landroid/graphics/Rect;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 428
    sget-object v2, Lcom/glu/android/GlobalNav;->instance:Lcom/glu/android/GlobalNav;

    iget-object v2, v2, Lcom/glu/android/GlobalNav;->m_pushLink:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 433
    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v2}, Lcom/glu/android/GameLet;->moreGamesLaunch()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
