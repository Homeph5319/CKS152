.class public Lcom/glu/android/GNSWidgetCollection$GNSSelector;
.super Lcom/glu/android/GNSWidgetCollection$GNSButton;
.source "GNSWidgetCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GNSWidgetCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GNSSelector"
.end annotation


# instance fields
.field private m_listOpen:Z

.field private m_nativeIds:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_options:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_pressedOption:I

.field private m_selectedOption:I

.field private m_selectorFullHeight:I

.field private m_selectorHasScroll:Z

.field private m_selectorPressed:Z

.field private m_selectorPressedX:I

.field private m_selectorPressedY:I

.field private m_selectorRect:Landroid/graphics/Rect;

.field private m_selectorScrollOffset:I

.field private m_selectorScrolling:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "y"    # I
    .param p3, "widgetId"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 409
    invoke-direct {p0, p1, p2, p3}, Lcom/glu/android/GNSWidgetCollection$GNSButton;-><init>(Ljava/lang/String;II)V

    .line 389
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_options:Ljava/util/Vector;

    .line 390
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_nativeIds:Ljava/util/Vector;

    .line 391
    iput v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectedOption:I

    .line 392
    iput-boolean v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_listOpen:Z

    .line 395
    iput-boolean v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorHasScroll:Z

    .line 396
    const/4 v0, 0x1

    iput v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorFullHeight:I

    .line 397
    iput v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorScrollOffset:I

    .line 400
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    .line 401
    iput v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_pressedOption:I

    .line 402
    iput-boolean v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorPressed:Z

    .line 403
    iput-boolean v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorScrolling:Z

    .line 404
    iput v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorPressedX:I

    .line 405
    iput v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorPressedY:I

    .line 410
    return-void
.end method

.method private closeSelectionDialog(Z)V
    .locals 3
    .param p1, "changed"    # Z

    .prologue
    const/4 v2, 0x0

    .line 534
    iput-boolean v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_listOpen:Z

    .line 536
    if-eqz p1, :cond_0

    .line 537
    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_nativeIds:Ljava/util/Vector;

    iget v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectedOption:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->triggerCallback(I)V

    .line 539
    :cond_0
    iput-boolean v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_touchFocusGrabbed:Z

    .line 540
    return-void
.end method

.method private handleSelectorScroll(I)V
    .locals 4
    .param p1, "y"    # I

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorHasScroll:Z

    if-nez v0, :cond_1

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    iget v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorScrollOffset:I

    iget v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorPressedY:I

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorScrollOffset:I

    .line 549
    iput p1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorPressedY:I

    .line 550
    iget v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorScrollOffset:I

    if-gez v0, :cond_2

    .line 551
    const/4 v0, 0x0

    iput v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorScrollOffset:I

    goto :goto_0

    .line 552
    :cond_2
    iget v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorScrollOffset:I

    iget v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorFullHeight:I

    iget-object v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 553
    iget v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorFullHeight:I

    iget-object v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorScrollOffset:I

    goto :goto_0
.end method

.method private openSelectionDialog()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 473
    iput-boolean v6, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_listOpen:Z

    .line 478
    iget-object v5, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_buttonRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_buttonRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v8

    iget-object v8, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_options:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    mul-int/2addr v5, v8

    iget-object v8, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_buttonRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_buttonRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0x37

    div-int/lit8 v8, v8, 0xa

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 482
    .local v4, "selectorHeight":I
    sget-object v5, Lcom/glu/android/GlobalNav;->instance:Lcom/glu/android/GlobalNav;

    iget-object v5, v5, Lcom/glu/android/GlobalNav;->m_mainView:Lcom/glu/android/GlobalNavMainView;

    iget v1, v5, Lcom/glu/android/GlobalNavMainView;->m_scrollOffset:I

    .line 483
    .local v1, "mainViewScroll":I
    add-int/lit8 v2, v1, 0x0

    .line 484
    .local v2, "mainViewStartY":I
    sget-object v5, Lcom/glu/android/GlobalNav;->instance:Lcom/glu/android/GlobalNav;

    iget-object v5, v5, Lcom/glu/android/GlobalNav;->m_mainView:Lcom/glu/android/GlobalNavMainView;

    invoke-virtual {v5}, Lcom/glu/android/GlobalNavMainView;->calculateSettingsViewHeight()I

    move-result v5

    add-int v0, v2, v5

    .line 485
    .local v0, "mainViewEndY":I
    iget-object v5, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_buttonRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_buttonRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_buttonRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x1

    add-int v3, v5, v8

    .line 491
    .local v3, "objectY":I
    iget-object v5, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    shr-int/lit8 v8, v4, 0x1

    sub-int v8, v3, v8

    iput v8, v5, Landroid/graphics/Rect;->top:I

    .line 492
    iget-object v5, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v4

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 493
    iget-object v5, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_buttonRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iput v8, v5, Landroid/graphics/Rect;->left:I

    .line 494
    iget-object v5, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_buttonRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iput v8, v5, Landroid/graphics/Rect;->right:I

    .line 497
    iget-object v5, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v5, v2, :cond_2

    .line 499
    iget-object v5, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    iput v2, v5, Landroid/graphics/Rect;->top:I

    .line 500
    iget-object v5, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v4

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 508
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_options:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    const/4 v8, 0x5

    if-le v5, v8, :cond_3

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorHasScroll:Z

    .line 509
    iget-boolean v5, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorHasScroll:Z

    if-eqz v5, :cond_1

    .line 511
    iget-object v5, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_buttonRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_buttonRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v8

    iget-object v8, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_options:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    mul-int/2addr v5, v8

    iput v5, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorFullHeight:I

    .line 512
    iget v5, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectedOption:I

    const/4 v8, 0x4

    if-le v5, v8, :cond_4

    .line 514
    iget-object v5, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_buttonRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_buttonRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v8

    iget v8, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectedOption:I

    add-int/lit8 v8, v8, -0x4

    mul-int/2addr v5, v8

    iput v5, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorScrollOffset:I

    .line 516
    iget v5, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorScrollOffset:I

    iget v8, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorFullHeight:I

    iget-object v9, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    if-lt v5, v8, :cond_1

    .line 517
    iget v5, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorFullHeight:I

    iget-object v8, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    sub-int/2addr v5, v8

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorScrollOffset:I

    .line 524
    :cond_1
    :goto_2
    const/4 v5, -0x1

    iput v5, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_pressedOption:I

    .line 525
    iput-boolean v7, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorPressed:Z

    .line 526
    iput-boolean v7, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorScrolling:Z

    .line 527
    iput-boolean v6, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_touchFocusGrabbed:Z

    .line 530
    return-void

    .line 502
    :cond_2
    iget-object v5, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-le v5, v0, :cond_0

    .line 504
    iget-object v5, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 505
    iget-object v5, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    iput v8, v5, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_3
    move v5, v7

    .line 508
    goto :goto_1

    .line 521
    :cond_4
    iput v7, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorScrollOffset:I

    goto :goto_2
.end method


# virtual methods
.method public addOption(ILjava/lang/String;)V
    .locals 3
    .param p1, "nativeId"    # I
    .param p2, "option"    # Ljava/lang/String;

    .prologue
    .line 451
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_options:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 453
    iget-object v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_options:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    :goto_1
    return-void

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_options:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 459
    iget-object v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_options:Ljava/util/Vector;

    invoke-virtual {v1, p2, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 460
    iget-object v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_nativeIds:Ljava/util/Vector;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_1

    .line 451
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 465
    :cond_2
    iget-object v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_options:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 466
    iget-object v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_nativeIds:Ljava/util/Vector;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getSelectedOptionText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_options:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectedOption:I

    if-gt v0, v1, :cond_0

    .line 444
    const-string v0, "null"

    .line 446
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_options:Ljava/util/Vector;

    iget v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectedOption:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public handleTouch(III)Z
    .locals 8
    .param p1, "event"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 597
    iget-boolean v3, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_listOpen:Z

    if-eqz v3, :cond_9

    .line 599
    iget-object v3, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    invoke-static {v3, p2, p3}, Lcom/glu/android/GluUtil;->isInRect(Landroid/graphics/Rect;II)Z

    move-result v0

    .line 600
    .local v0, "inArea":Z
    const/4 v1, -0x1

    .line 601
    .local v1, "pressedOption":I
    if-eqz v0, :cond_0

    .line 603
    iget-object v3, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, p3, v3

    iget v4, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorScrollOffset:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_buttonRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_buttonRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    div-int v1, v3, v4

    .line 604
    if-gez v1, :cond_2

    .line 605
    const/4 v1, 0x0

    .line 610
    :cond_0
    :goto_0
    if-nez p1, :cond_4

    .line 612
    if-nez v0, :cond_3

    .line 614
    invoke-direct {p0, v6}, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->closeSelectionDialog(Z)V

    .line 688
    .end local v1    # "pressedOption":I
    :cond_1
    :goto_1
    return v2

    .line 606
    .restart local v1    # "pressedOption":I
    :cond_2
    iget-object v3, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_options:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 607
    iget-object v3, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_options:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    goto :goto_0

    .line 618
    :cond_3
    iput-boolean v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorPressed:Z

    .line 619
    iput p2, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorPressedX:I

    .line 620
    iput p3, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorPressedY:I

    .line 621
    iput v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_pressedOption:I

    goto :goto_1

    .line 624
    :cond_4
    iget-boolean v3, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorPressed:Z

    if-eqz v3, :cond_6

    if-ne p1, v7, :cond_6

    .line 626
    iget-boolean v3, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorScrolling:Z

    if-eqz v3, :cond_5

    .line 628
    invoke-direct {p0, p3}, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->handleSelectorScroll(I)V

    goto :goto_1

    .line 632
    :cond_5
    iget v3, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorPressedY:I

    sub-int v3, p3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sget v4, Lcom/glu/android/GNSWidgetCollection;->SELECTOR_SCROLL_THRESHOLD:I

    if-lt v3, v4, :cond_1

    .line 634
    iput-boolean v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorScrolling:Z

    .line 635
    const/4 v3, -0x1

    iput v3, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_pressedOption:I

    .line 636
    invoke-direct {p0, p3}, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->handleSelectorScroll(I)V

    goto :goto_1

    .line 640
    :cond_6
    iget-boolean v3, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorPressed:Z

    if-eqz v3, :cond_1

    if-ne p1, v2, :cond_1

    .line 642
    iget-boolean v3, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorScrolling:Z

    if-eqz v3, :cond_8

    .line 644
    invoke-direct {p0, p3}, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->handleSelectorScroll(I)V

    .line 645
    iput-boolean v6, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorScrolling:Z

    .line 657
    :cond_7
    :goto_2
    iput-boolean v6, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorPressed:Z

    goto :goto_1

    .line 649
    :cond_8
    iget v3, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorPressedY:I

    sub-int v3, p3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sget v4, Lcom/glu/android/GNSWidgetCollection;->SELECTOR_SCROLL_THRESHOLD:I

    if-ge v3, v4, :cond_7

    iget v3, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorPressedX:I

    sub-int v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sget v4, Lcom/glu/android/GNSWidgetCollection;->SELECTOR_SCROLL_THRESHOLD:I

    if-ge v3, v4, :cond_7

    .line 652
    iget v3, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_pressedOption:I

    invoke-virtual {p0, v3}, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->setSelectedOption(I)V

    .line 653
    invoke-direct {p0, v2}, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->closeSelectionDialog(Z)V

    goto :goto_2

    .line 664
    .end local v0    # "inArea":Z
    .end local v1    # "pressedOption":I
    :cond_9
    iget-object v3, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_buttonRect:Landroid/graphics/Rect;

    invoke-static {v3, p2, p3}, Lcom/glu/android/GluUtil;->isInRect(Landroid/graphics/Rect;II)Z

    move-result v0

    .line 666
    .restart local v0    # "inArea":Z
    if-nez p1, :cond_a

    if-eqz v0, :cond_a

    .line 668
    iput-boolean v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selected:Z

    goto :goto_1

    .line 671
    :cond_a
    if-ne p1, v7, :cond_b

    iget-boolean v3, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selected:Z

    if-nez v3, :cond_1

    .line 675
    :cond_b
    if-ne p1, v2, :cond_d

    .line 677
    if-eqz v0, :cond_c

    iget-boolean v3, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selected:Z

    if-eqz v3, :cond_c

    .line 679
    sput-object p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_dialogActiveButton:Lcom/glu/android/GNSWidgetCollection$GNSButton;

    .line 680
    invoke-direct {p0}, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->openSelectionDialog()V

    .line 683
    :cond_c
    iput-boolean v6, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selected:Z

    goto/16 :goto_1

    .line 688
    :cond_d
    iget-boolean v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selected:Z

    goto/16 :goto_1
.end method

.method public nativeSetSelectedOption(I)V
    .locals 2
    .param p1, "option"    # I

    .prologue
    .line 431
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_nativeIds:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 433
    iget-object v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_nativeIds:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 435
    invoke-virtual {p0, v0}, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->setSelectedOption(I)V

    .line 439
    :cond_0
    return-void

    .line 431
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public paint(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "g"    # Landroid/graphics/Canvas;

    .prologue
    .line 558
    invoke-virtual/range {p0 .. p1}, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->drawStandardLabel(Landroid/graphics/Canvas;)V

    .line 560
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_listOpen:Z

    if-eqz v2, :cond_2

    .line 562
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_buttonRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_buttonRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v11, v2, v4

    .line 565
    .local v11, "optionHeight":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorScrollOffset:I

    div-int v13, v2, v11

    .line 566
    .local v13, "startOption":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_options:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v4, v13, 0x6

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 567
    .local v9, "endOption":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorScrollOffset:I

    sub-int v14, v2, v4

    .line 568
    .local v14, "startY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    .line 570
    .local v5, "x1":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v12, v2, v4

    .line 571
    .local v12, "optionWidth":I
    sget-object v2, Lcom/glu/android/GNSWidgetCollection;->instance:Lcom/glu/android/GNSWidgetCollection;

    iget-object v15, v2, Lcom/glu/android/GNSWidgetCollection;->m_buttonLabelPaint:Landroid/graphics/Paint;

    .line 572
    .local v15, "textPaint":Landroid/graphics/Paint;
    move v10, v13

    .local v10, "i":I
    :goto_0
    if-gt v10, v9, :cond_1

    .line 574
    mul-int v2, v10, v11

    add-int v6, v14, v2

    .line 575
    .local v6, "y1":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_pressedOption:I

    if-ne v10, v2, :cond_0

    sget-object v3, Lcom/glu/android/GNSWidgetCollection;->SELECTOR_GRADIENT_SELECTED:[I

    .line 576
    .local v3, "gradientToUse":[I
    :goto_1
    const/4 v4, 0x1

    add-int v7, v5, v12

    add-int v8, v6, v11

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/glu/android/GluUtil;->drawGradientRect(Landroid/graphics/Canvas;[IZIIII)V

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_options:Ljava/util/Vector;

    invoke-virtual {v2, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    shr-int/lit8 v4, v12, 0x1

    add-int/2addr v4, v5

    int-to-float v4, v4

    shr-int/lit8 v7, v11, 0x1

    add-int/2addr v7, v6

    int-to-float v7, v7

    invoke-virtual {v15}, Landroid/graphics/Paint;->getTextSize()F

    move-result v8

    const/high16 v16, 0x40000000    # 2.0f

    div-float v8, v8, v16

    add-float/2addr v7, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v7, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 572
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 575
    .end local v3    # "gradientToUse":[I
    :cond_0
    sget-object v3, Lcom/glu/android/GNSWidgetCollection;->SELECTOR_GRADIENT_NORMAL:[I

    goto :goto_1

    .line 579
    .end local v6    # "y1":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 583
    sget-object v2, Lcom/glu/android/GNSWidgetCollection;->sm_tmpRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sget v7, Lcom/glu/android/GNSWidgetCollection;->SELECTOR_ROUND_RECT_RADIUS:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v4, v7

    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 584
    sget-object v2, Lcom/glu/android/GNSWidgetCollection;->sm_tmpRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sget v7, Lcom/glu/android/GNSWidgetCollection;->SELECTOR_ROUND_RECT_RADIUS:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v4, v7

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 585
    sget-object v2, Lcom/glu/android/GNSWidgetCollection;->sm_tmpRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget v7, Lcom/glu/android/GNSWidgetCollection;->SELECTOR_ROUND_RECT_RADIUS:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v4, v7

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    .line 586
    sget-object v2, Lcom/glu/android/GNSWidgetCollection;->sm_tmpRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectorRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sget v7, Lcom/glu/android/GNSWidgetCollection;->SELECTOR_ROUND_RECT_RADIUS:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v4, v7

    iput v4, v2, Landroid/graphics/RectF;->right:F

    .line 587
    sget-object v2, Lcom/glu/android/GNSWidgetCollection;->sm_tmpRectF:Landroid/graphics/RectF;

    sget v4, Lcom/glu/android/GNSWidgetCollection;->SELECTOR_ROUND_RECT_RADIUS:I

    int-to-float v4, v4

    sget v7, Lcom/glu/android/GNSWidgetCollection;->SELECTOR_ROUND_RECT_RADIUS:I

    int-to-float v7, v7

    sget-object v8, Lcom/glu/android/GNSWidgetCollection;->instance:Lcom/glu/android/GNSWidgetCollection;

    iget-object v8, v8, Lcom/glu/android/GNSWidgetCollection;->m_selectorRoundRectPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 593
    .end local v5    # "x1":I
    .end local v9    # "endOption":I
    .end local v10    # "i":I
    .end local v11    # "optionHeight":I
    .end local v12    # "optionWidth":I
    .end local v13    # "startOption":I
    .end local v14    # "startY":I
    .end local v15    # "textPaint":Landroid/graphics/Paint;
    :goto_2
    return-void

    .line 591
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_options:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectedOption:I

    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->doPaint(Landroid/graphics/Canvas;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setSelectedOption(I)V
    .locals 0
    .param p1, "option"    # I

    .prologue
    .line 426
    iput p1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_selectedOption:I

    .line 427
    return-void
.end method

.method public setSelectedOption(Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 414
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_options:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->m_options:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    invoke-virtual {p0, v0}, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->setSelectedOption(I)V

    .line 422
    :cond_0
    return-void

    .line 414
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
