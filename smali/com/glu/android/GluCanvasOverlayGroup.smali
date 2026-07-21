.class public Lcom/glu/android/GluCanvasOverlayGroup;
.super Landroid/view/ViewGroup;
.source "GluCanvasOverlayGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/glu/android/GluCanvasOverlayGroup$LayoutParams;,
        Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;,
        Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;,
        Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;,
        Lcom/glu/android/GluCanvasOverlayGroup$InterstitialBackdropView;,
        Lcom/glu/android/GluCanvasOverlayGroup$TestView;
    }
.end annotation


# static fields
.field private static final MESSAGE_REQUEST_LAYOUT:I = 0x1

.field private static final MESSAGE_SHOW_LARGE_AD:I = 0x3

.field private static final MESSAGE_SHOW_SMALL_AD:I = 0x2

.field private static final MESSAGE_SWAP_VIEWS_ROOT:I = 0x100

.field public static final VIEW_ALERT_VIEW:I = 0x7

.field public static final VIEW_BANNER_AD:I = 0x1

.field public static final VIEW_COUNT:I = 0xd

.field public static final VIEW_DEBUG_CONSOLE:I = 0x9

.field public static final VIEW_DEBUG_WATERMARK:I = 0x8

.field public static final VIEW_GLU_CURSOR:I = 0xc

.field public static final VIEW_HONEYCOMB_BACK_BUTTON:I = 0xb

.field public static final VIEW_HONEYCOMB_HOME_BUTTON:I = 0xa

.field public static final VIEW_IAP_VIEW:I = 0x0

.field public static final VIEW_INTERNAL_WEB_VIEW:I = 0x5

.field public static final VIEW_INTERSTITIAL_AD:I = 0x3

.field public static final VIEW_LARGE_AD_BACKGROUND:I = 0x2

.field public static final VIEW_LARGE_AD_CLOSE_BUTTON:I = 0x4

.field public static final VIEW_TEST_VIEW:I = 0x6

.field public static instance:Lcom/glu/android/GluCanvasOverlayGroup;


# instance fields
.field private m_layoutPending:Z

.field private m_viewManipulationHandler:Landroid/os/Handler;

.field public m_views:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 335
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 329
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    .line 521
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_layoutPending:Z

    .line 636
    new-instance v0, Lcom/glu/android/GluCanvasOverlayGroup$1;

    invoke-direct {v0, p0}, Lcom/glu/android/GluCanvasOverlayGroup$1;-><init>(Lcom/glu/android/GluCanvasOverlayGroup;)V

    iput-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_viewManipulationHandler:Landroid/os/Handler;

    .line 337
    invoke-static {p0}, Lcom/glu/android/GluUtil;->doStandardViewGroupConfiguration(Landroid/view/ViewGroup;)V

    .line 339
    sput-object p0, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    .line 340
    return-void
.end method

.method private handlerRequestLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 608
    iget-boolean v0, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_layoutPending:Z

    if-eqz v0, :cond_0

    .line 613
    :goto_0
    return-void

    .line 611
    :cond_0
    iput-boolean v1, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_layoutPending:Z

    .line 612
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_viewManipulationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private handlerSwapViews(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 627
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_viewManipulationHandler:Landroid/os/Handler;

    or-int/lit16 v1, p1, 0x100

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 628
    return-void
.end method


# virtual methods
.method public changeTrueView(ILandroid/view/View;)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 762
    iget-object v1, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    iget-object v1, v1, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_view:Landroid/view/View;

    if-eq v1, p2, :cond_0

    const/4 v0, 0x1

    .line 763
    .local v0, "changed":Z
    :goto_0
    iget-object v1, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    iput-object p2, v1, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_view:Landroid/view/View;

    .line 764
    if-eqz v0, :cond_1

    .line 765
    invoke-direct {p0, p1}, Lcom/glu/android/GluCanvasOverlayGroup;->handlerSwapViews(I)V

    .line 768
    :goto_1
    return-void

    .line 762
    .end local v0    # "changed":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 767
    .restart local v0    # "changed":Z
    :cond_1
    const-string v1, "changeTrueView called without any changes."

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 571
    instance-of v0, p1, Lcom/glu/android/GluCanvasOverlayGroup$LayoutParams;

    return v0
.end method

.method public findCursorClickableView(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 733
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 735
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 737
    :cond_0
    iget-object v1, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    iget-object v1, v1, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    invoke-static {v1, p1, p2}, Lcom/glu/android/GluUtil;->isInRect(Landroid/graphics/Rect;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 742
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 733
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 742
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 565
    new-instance v0, Lcom/glu/android/GluCanvasOverlayGroup$LayoutParams;

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v1

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v2

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/glu/android/GluCanvasOverlayGroup$LayoutParams;-><init>(IIII)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 576
    new-instance v0, Lcom/glu/android/GluCanvasOverlayGroup$LayoutParams;

    invoke-direct {v0, p1}, Lcom/glu/android/GluCanvasOverlayGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public handleButtonPressed(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 499
    if-ne p1, v2, :cond_0

    .line 501
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/glu/android/GluCanvasOverlayGroup;->setViewVisibility(IZ)V

    .line 502
    invoke-virtual {p0, v2, v1}, Lcom/glu/android/GluCanvasOverlayGroup;->setViewVisibility(IZ)V

    .line 503
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/glu/android/GluCanvasOverlayGroup;->setViewVisibility(IZ)V

    .line 504
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/glu/android/GluAds;->setAdState(I)V

    .line 506
    :cond_0
    return-void
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x1

    .line 660
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/glu/android/GluCanvasOverlayGroup;->isViewVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 670
    :goto_0
    return v0

    .line 664
    :cond_0
    invoke-virtual {p0, v2}, Lcom/glu/android/GluCanvasOverlayGroup;->isViewVisible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    iget-object v0, v0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_view:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move v0, v1

    .line 667
    goto :goto_0

    .line 670
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 675
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/glu/android/GluCanvasOverlayGroup;->isViewVisible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 678
    if-ne p1, v2, :cond_0

    .line 679
    invoke-virtual {p0, v2}, Lcom/glu/android/GluCanvasOverlayGroup;->handleButtonPressed(I)V

    :cond_0
    move v0, v1

    .line 688
    :goto_0
    return v0

    .line 682
    :cond_1
    invoke-virtual {p0, v3}, Lcom/glu/android/GluCanvasOverlayGroup;->isViewVisible(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 684
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    iget-object v0, v0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_view:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move v0, v1

    .line 685
    goto :goto_0

    .line 688
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handlerShowLargeAd()V
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_viewManipulationHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 623
    return-void
.end method

.method public handlerShowSmallAd()V
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_viewManipulationHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 618
    return-void
.end method

.method public init()V
    .locals 14

    .prologue
    const/16 v13, 0x1e

    const/4 v9, 0x0

    .line 344
    const-string v8, "initting GCOG"

    invoke-static {v8}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 346
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v8, 0xd

    if-ge v3, v8, :cond_2

    .line 348
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "view "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 350
    packed-switch v3, :pswitch_data_0

    .line 488
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "View "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " not configured for adding to the GluCanvasOverlayGroup view vector. Expect a crash to happen eventually."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 346
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 354
    :pswitch_0
    iget-object v8, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    new-instance v10, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    invoke-static {}, Lcom/glu/android/GluAds;->getSmallInGameAdView()Landroid/view/View;

    move-result-object v11

    invoke-direct {v10, v11, v3}, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;-><init>(Landroid/view/View;I)V

    invoke-virtual {v8, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 493
    :goto_2
    iget-object v8, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    iget-object v10, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    iget-object v8, v8, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_view:Landroid/view/View;

    invoke-virtual {p0, v8, v3}, Lcom/glu/android/GluCanvasOverlayGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 360
    :pswitch_1
    new-instance v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    new-instance v8, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialBackdropView;

    sget-object v10, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-direct {v8, v10}, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialBackdropView;-><init>(Landroid/content/Context;)V

    invoke-direct {v5, v8, v3}, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;-><init>(Landroid/view/View;I)V

    .line 361
    .local v5, "newView":Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;
    iget-object v8, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->right:I

    .line 362
    iget-object v8, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 363
    iget-object v8, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v8, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 369
    .end local v5    # "newView":Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;
    :pswitch_2
    iget-object v8, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    new-instance v10, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    invoke-static {}, Lcom/glu/android/GluAds;->getLargeInGameAdView()Landroid/view/View;

    move-result-object v11

    invoke-direct {v10, v11, v3}, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;-><init>(Landroid/view/View;I)V

    invoke-virtual {v8, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 375
    :pswitch_3
    new-instance v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    new-instance v8, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;

    sget-object v10, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    const v11, 0x7f070012

    invoke-static {v11}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v10, v11, v3}, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {v5, v8, v3}, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;-><init>(Landroid/view/View;I)V

    .line 376
    .restart local v5    # "newView":Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;
    const/16 v8, 0x64

    invoke-static {v8}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v1

    .line 377
    .local v1, "buttonW":I
    const/16 v8, 0x3c

    invoke-static {v8}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    .line 378
    .local v0, "buttonH":I
    iget-object v8, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    iput v10, v8, Landroid/graphics/Rect;->right:I

    .line 379
    iget-object v8, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 380
    iget-object v8, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v10

    sub-int/2addr v10, v1

    iput v10, v8, Landroid/graphics/Rect;->left:I

    .line 381
    iget-object v8, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v10

    sub-int/2addr v10, v0

    iput v10, v8, Landroid/graphics/Rect;->top:I

    .line 382
    iget-object v8, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v8, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 389
    .end local v0    # "buttonH":I
    .end local v1    # "buttonW":I
    .end local v5    # "newView":Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;
    :pswitch_4
    new-instance v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    new-instance v8, Lcom/glu/android/GluWebView;

    sget-object v10, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    const/4 v11, 0x0

    invoke-direct {v8, v10, v11}, Lcom/glu/android/GluWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {v5, v8, v3}, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;-><init>(Landroid/view/View;I)V

    .line 399
    .restart local v5    # "newView":Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;
    iget-object v8, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 400
    iget-object v8, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v10

    mul-int/lit8 v10, v10, 0x1

    div-int/lit8 v10, v10, 0x3

    iput v10, v8, Landroid/graphics/Rect;->top:I

    .line 401
    iget-object v8, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->right:I

    .line 402
    iget-object v8, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 404
    iget-object v8, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v8, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 409
    .end local v5    # "newView":Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;
    :pswitch_5
    iget-object v8, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    new-instance v10, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    new-instance v11, Lcom/glu/android/GluCanvasOverlayGroup$TestView;

    sget-object v12, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-direct {v11, v12}, Lcom/glu/android/GluCanvasOverlayGroup$TestView;-><init>(Landroid/content/Context;)V

    invoke-direct {v10, v11, v3}, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;-><init>(Landroid/view/View;I)V

    invoke-virtual {v8, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 414
    :pswitch_6
    new-instance v7, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    new-instance v8, Lcom/glu/android/NonModalAlertView;

    sget-object v10, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-direct {v8, v10}, Lcom/glu/android/NonModalAlertView;-><init>(Landroid/content/Context;)V

    invoke-direct {v7, v8, v3}, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;-><init>(Landroid/view/View;I)V

    .line 415
    .local v7, "view":Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;
    iget-object v8, v7, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v10

    invoke-static {}, Lcom/glu/android/NonModalAlertView;->getDesiredWidth()I

    move-result v11

    sub-int/2addr v10, v11

    shr-int/lit8 v10, v10, 0x1

    iput v10, v8, Landroid/graphics/Rect;->left:I

    .line 416
    iget-object v8, v7, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/glu/android/NonModalAlertView;->getDesiredWidth()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->right:I

    .line 418
    iget-object v8, v7, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    invoke-static {v13}, Lcom/glu/android/GluUtil;->scaleRelativeToDroid(I)I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->top:I

    .line 419
    iget-object v8, v7, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/glu/android/NonModalAlertView;->getDesiredHeight()I

    move-result v10

    invoke-static {v13}, Lcom/glu/android/GluUtil;->scaleRelativeToDroid(I)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 420
    invoke-static {}, Lcom/glu/android/NonModalAlertView;->alertsQueued()Z

    move-result v8

    iput-boolean v8, v7, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_visible:Z

    .line 421
    iget-object v8, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v8, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 428
    .end local v7    # "view":Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;
    :pswitch_7
    iget-object v8, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    new-instance v10, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    new-instance v11, Lcom/glu/android/IAP$IAPView;

    sget-object v12, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-direct {v11, v12}, Lcom/glu/android/IAP$IAPView;-><init>(Landroid/content/Context;)V

    invoke-direct {v10, v11, v3}, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;-><init>(Landroid/view/View;I)V

    invoke-virtual {v8, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 438
    :pswitch_8
    new-instance v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    new-instance v8, Lcom/glu/android/Debug$Watermark;

    sget-object v10, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-direct {v8, v10}, Lcom/glu/android/Debug$Watermark;-><init>(Landroid/content/Context;)V

    invoke-direct {v5, v8, v3}, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;-><init>(Landroid/view/View;I)V

    .line 439
    .restart local v5    # "newView":Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;
    iget-object v8, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/glu/android/Debug$Watermark;->getDesiredX()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->left:I

    .line 440
    iget-object v8, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget-object v10, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    invoke-static {}, Lcom/glu/android/Debug$Watermark;->getDesiredWidth()I

    move-result v11

    add-int/2addr v10, v11

    iput v10, v8, Landroid/graphics/Rect;->right:I

    .line 441
    iget-object v8, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/glu/android/Debug$Watermark;->getDesiredY()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->top:I

    .line 442
    iget-object v8, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget-object v10, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcom/glu/android/Debug$Watermark;->getDesiredHeight()I

    move-result v11

    add-int/2addr v10, v11

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 443
    iput-boolean v9, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_visible:Z

    .line 444
    iget-object v8, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v8, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 450
    .end local v5    # "newView":Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;
    :pswitch_9
    new-instance v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    new-instance v8, Lcom/glu/android/Debug$Console;

    sget-object v10, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-direct {v8, v10}, Lcom/glu/android/Debug$Console;-><init>(Landroid/content/Context;)V

    invoke-direct {v5, v8, v3}, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;-><init>(Landroid/view/View;I)V

    .line 451
    .restart local v5    # "newView":Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;
    iget-object v8, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/glu/android/Debug$Console;->getDesiredX()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->left:I

    .line 452
    iget-object v8, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget-object v10, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    invoke-static {}, Lcom/glu/android/Debug$Console;->getDesiredWidth()I

    move-result v11

    add-int/2addr v10, v11

    iput v10, v8, Landroid/graphics/Rect;->right:I

    .line 453
    iget-object v8, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/glu/android/Debug$Console;->getDesiredY()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->top:I

    .line 454
    iget-object v8, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget-object v10, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcom/glu/android/Debug$Console;->getDesiredHeight()I

    move-result v11

    add-int/2addr v10, v11

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 455
    iget-object v8, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v8, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 462
    .end local v5    # "newView":Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;
    :pswitch_a
    const/16 v8, 0xa

    if-ne v3, v8, :cond_0

    const/4 v4, 0x1

    .line 463
    .local v4, "isHome":Z
    :goto_3
    new-instance v2, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;

    sget-object v8, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-direct {v2, v8, v4}, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;-><init>(Landroid/content/Context;Z)V

    .line 464
    .local v2, "hhb":Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;
    new-instance v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    invoke-direct {v5, v2, v3}, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;-><init>(Landroid/view/View;I)V

    .line 466
    .restart local v5    # "newView":Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;
    iget-object v8, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 467
    iget-object v10, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v11

    if-eqz v4, :cond_1

    move v8, v9

    :goto_4
    sub-int v8, v11, v8

    iput v8, v10, Landroid/graphics/Rect;->bottom:I

    .line 468
    iget-object v8, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget-object v10, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->getDesiredWidth()I

    move-result v11

    add-int/2addr v10, v11

    iput v10, v8, Landroid/graphics/Rect;->right:I

    .line 469
    iget-object v8, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget-object v10, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->getDesiredHeight()I

    move-result v11

    sub-int/2addr v10, v11

    iput v10, v8, Landroid/graphics/Rect;->top:I

    .line 470
    iput-boolean v9, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_visible:Z

    .line 471
    iget-object v8, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v8, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .end local v2    # "hhb":Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;
    .end local v4    # "isHome":Z
    .end local v5    # "newView":Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;
    :cond_0
    move v4, v9

    .line 462
    goto :goto_3

    .line 467
    .restart local v2    # "hhb":Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;
    .restart local v4    # "isHome":Z
    .restart local v5    # "newView":Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;
    :cond_1
    invoke-virtual {v2}, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->getDesiredHeight()I

    move-result v8

    goto :goto_4

    .line 476
    .end local v2    # "hhb":Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;
    .end local v4    # "isHome":Z
    .end local v5    # "newView":Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;
    :pswitch_b
    new-instance v6, Lcom/glu/android/GluCursor;

    sget-object v8, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-direct {v6, v8}, Lcom/glu/android/GluCursor;-><init>(Landroid/content/Context;)V

    .line 477
    .local v6, "pc":Lcom/glu/android/GluCursor;
    new-instance v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    invoke-direct {v5, v6, v3}, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;-><init>(Landroid/view/View;I)V

    .line 478
    .restart local v5    # "newView":Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;
    iget-object v8, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    sget-object v10, Lcom/glu/android/GluCursor;->instance:Lcom/glu/android/GluCursor;

    invoke-virtual {v10}, Lcom/glu/android/GluCursor;->getX1()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->left:I

    .line 479
    iget-object v8, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    sget-object v10, Lcom/glu/android/GluCursor;->instance:Lcom/glu/android/GluCursor;

    invoke-virtual {v10}, Lcom/glu/android/GluCursor;->getY1()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->top:I

    .line 480
    iget-object v8, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    sget-object v10, Lcom/glu/android/GluCursor;->instance:Lcom/glu/android/GluCursor;

    invoke-virtual {v10}, Lcom/glu/android/GluCursor;->getX2()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->right:I

    .line 481
    iget-object v8, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    sget-object v10, Lcom/glu/android/GluCursor;->instance:Lcom/glu/android/GluCursor;

    invoke-virtual {v10}, Lcom/glu/android/GluCursor;->getY2()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 482
    iput-boolean v9, v5, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_visible:Z

    .line 483
    iget-object v8, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v8, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 495
    .end local v5    # "newView":Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;
    .end local v6    # "pc":Lcom/glu/android/GluCursor;
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public isViewVisible(I)Z
    .locals 1
    .param p1, "viewId"    # I

    .prologue
    .line 772
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    iget-boolean v0, v0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_visible:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v9, 0x0

    .line 527
    iget-object v8, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v5

    .line 529
    .local v5, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_1

    .line 531
    iget-object v8, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v8, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    .line 533
    .local v6, "gcogview":Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;
    iget-object v0, v6, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_view:Landroid/view/View;

    .line 534
    .local v0, "child":Landroid/view/View;
    iget-boolean v8, v6, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_visible:Z

    if-eqz v8, :cond_0

    move v8, v9

    :goto_1
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 536
    iget-object v8, v6, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget v2, v8, Landroid/graphics/Rect;->left:I

    .line 537
    .local v2, "childLeft":I
    iget-object v8, v6, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget v4, v8, Landroid/graphics/Rect;->top:I

    .line 538
    .local v4, "childTop":I
    iget-object v8, v6, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget v3, v8, Landroid/graphics/Rect;->right:I

    .line 539
    .local v3, "childRight":I
    iget-object v8, v6, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    .line 540
    .local v1, "childBottom":I
    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 529
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 534
    .end local v1    # "childBottom":I
    .end local v2    # "childLeft":I
    .end local v3    # "childRight":I
    .end local v4    # "childTop":I
    :cond_0
    const/4 v8, 0x4

    goto :goto_1

    .line 546
    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "gcogview":Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;
    :cond_1
    iput-boolean v9, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_layoutPending:Z

    .line 547
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 552
    iget-object v3, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    .line 554
    .local v0, "count":I
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v1

    .line 555
    .local v1, "maxHeight":I
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v2

    .line 558
    .local v2, "maxWidth":I
    invoke-virtual {p0, p1, p2}, Lcom/glu/android/GluCanvasOverlayGroup;->measureChildren(II)V

    .line 560
    invoke-static {v2, p1}, Lcom/glu/android/GluCanvasOverlayGroup;->resolveSize(II)I

    move-result v3

    invoke-static {v1, p2}, Lcom/glu/android/GluCanvasOverlayGroup;->resolveSize(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/glu/android/GluCanvasOverlayGroup;->setMeasuredDimension(II)V

    .line 561
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 512
    iget-object v1, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 514
    iget-object v1, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    invoke-virtual {v1, p1}, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->handleTouch(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    const/4 v1, 0x1

    .line 518
    :goto_1
    return v1

    .line 512
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 518
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public sendFakeTouchEvent(IZII)Z
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "pressed"    # Z
    .param p3, "rawX"    # I
    .param p4, "rawY"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 747
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 757
    :cond_0
    :goto_0
    return v3

    .line 750
    :cond_1
    iget-object v2, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    .line 751
    .local v1, "gview":Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;
    if-eqz p2, :cond_2

    move v2, v3

    :goto_1
    iget-object v5, v1, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v5, p3, v5

    iget-object v6, v1, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v6, p4, v6

    invoke-static {v2, v5, v6}, Lcom/glu/android/GluUtil;->createFakeMotionEvent(III)Landroid/view/MotionEvent;

    move-result-object v0

    .line 754
    .local v0, "fakeEvent":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    invoke-virtual {v2, v0}, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->handleTouch(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v3, v4

    .line 755
    goto :goto_0

    .end local v0    # "fakeEvent":Landroid/view/MotionEvent;
    :cond_2
    move v2, v4

    .line 751
    goto :goto_1
.end method

.method public setViewBounds(IIIII)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I

    .prologue
    .line 697
    iget-object v1, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->setCoords(IIII)Z

    move-result v0

    .line 698
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 699
    invoke-direct {p0}, Lcom/glu/android/GluCanvasOverlayGroup;->handlerRequestLayout()V

    .line 700
    :cond_0
    return-void
.end method

.method public setViewVisibility(IZ)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 723
    iget-object v1, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    invoke-virtual {v1, p2}, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->setVisible(Z)Z

    move-result v0

    .line 724
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 726
    invoke-direct {p0}, Lcom/glu/android/GluCanvasOverlayGroup;->handlerRequestLayout()V

    .line 728
    :cond_0
    return-void
.end method

.method public setViewWH(III)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 713
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    .line 714
    .local v6, "gcogview":Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 715
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v0

    sub-int/2addr v0, p2

    shr-int/lit8 v2, v0, 0x1

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v0

    sub-int/2addr v0, p3

    shr-int/lit8 v3, v0, 0x1

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v0

    sub-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x1

    add-int v4, v0, p2

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v0

    sub-int/2addr v0, p3

    shr-int/lit8 v0, v0, 0x1

    add-int v5, v0, p3

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/glu/android/GluCanvasOverlayGroup;->setViewBounds(IIIII)V

    .line 719
    :goto_0
    return-void

    .line 718
    :cond_0
    iget-object v0, v6, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v6, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v6, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int v4, v0, p2

    iget-object v0, v6, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int v5, v0, p3

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/glu/android/GluCanvasOverlayGroup;->setViewBounds(IIIII)V

    goto :goto_0
.end method

.method public setViewXY(III)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "x1"    # I
    .param p3, "y1"    # I

    .prologue
    .line 704
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    .line 705
    .local v6, "gcogview":Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/glu/android/Debug;->CONSOLE:Lcom/glu/android/Debug$Console;

    invoke-virtual {v0}, Lcom/glu/android/Debug$Console;->isAdLocationOverriden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 708
    iget-object v0, v6, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, v6, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    add-int v4, p2, v0

    iget-object v0, v6, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, v6, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    add-int v5, p3, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/glu/android/GluCanvasOverlayGroup;->setViewBounds(IIIII)V

    goto :goto_0
.end method

.method public setVirtualButtonLocation(II)V
    .locals 10
    .param p1, "buttonId"    # I
    .param p2, "xyanchor"    # I

    .prologue
    .line 777
    invoke-static {p2}, Lcom/glu/android/GluUtil;->xyanchorToX(I)I

    move-result v5

    .line 778
    .local v5, "x":I
    invoke-static {p2}, Lcom/glu/android/GluUtil;->xyanchorToY(I)I

    move-result v7

    .line 779
    .local v7, "y":I
    invoke-static {p2}, Lcom/glu/android/GluUtil;->xyanchorToAnchor(I)I

    move-result v0

    .line 781
    .local v0, "anchor":I
    iget-object v9, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v9, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    iget-object v3, v9, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_view:Landroid/view/View;

    check-cast v3, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;

    .line 782
    .local v3, "view":Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;
    iget-object v9, p0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v9, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    iget-object v2, v9, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    .line 783
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {v3}, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->getDesiredWidth()I

    move-result v4

    .line 784
    .local v4, "w":I
    invoke-virtual {v3}, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->getDesiredHeight()I

    move-result v1

    .line 787
    .local v1, "h":I
    and-int/lit8 v9, v0, 0x4

    if-eqz v9, :cond_0

    .line 788
    shl-int/lit8 v9, v1, 0x1

    sub-int v8, v7, v9

    .line 794
    .local v8, "y1":I
    :goto_0
    and-int/lit8 v9, v0, 0x1

    if-eqz v9, :cond_2

    .line 795
    shl-int/lit8 v9, v4, 0x1

    sub-int v6, v5, v9

    .line 801
    .local v6, "x1":I
    :goto_1
    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 802
    add-int v9, v6, v4

    iput v9, v2, Landroid/graphics/Rect;->right:I

    .line 803
    iput v8, v2, Landroid/graphics/Rect;->top:I

    .line 804
    add-int v9, v8, v1

    iput v9, v2, Landroid/graphics/Rect;->bottom:I

    .line 805
    return-void

    .line 789
    .end local v6    # "x1":I
    .end local v8    # "y1":I
    :cond_0
    and-int/lit8 v9, v0, 0x8

    if-eqz v9, :cond_1

    .line 790
    sub-int v8, v7, v1

    .restart local v8    # "y1":I
    goto :goto_0

    .line 792
    .end local v8    # "y1":I
    :cond_1
    move v8, v7

    .restart local v8    # "y1":I
    goto :goto_0

    .line 796
    :cond_2
    and-int/lit8 v9, v0, 0x2

    if-eqz v9, :cond_3

    .line 797
    sub-int v6, v5, v4

    .restart local v6    # "x1":I
    goto :goto_1

    .line 799
    .end local v6    # "x1":I
    :cond_3
    move v6, v5

    .restart local v6    # "x1":I
    goto :goto_1
.end method
