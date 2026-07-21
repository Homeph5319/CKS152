.class public Lcom/glu/android/FeaturedAppAd;
.super Lcom/glu/android/GluAds$Abstraction;
.source "FeaturedAppAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;
    }
.end annotation


# static fields
.field private static final NO_FEATURED_ADS_IN_BANNER_ROTATION:Z = true

.field private static final SMALL_AD_ROTATION_TIMER:I = 0x7530

.field private static final VIEW_BG_COLOR:I = -0x1

.field private static final VIEW_HIGHLIGHT_COLOR:I = 0x60ffffff

.field private static final VIEW_TEXT_COLOR:I = -0x1000000

.field private static final VIEW_TEXT_SHADOW_COLOR:I = -0x80000000

.field public static instance:Lcom/glu/android/FeaturedAppAd;


# instance fields
.field private m_adHeight:I

.field private m_currentAdState:I

.field private m_largeGameAd:Landroid/view/View;

.field private m_rotateFeaturedAd:Z

.field private m_smallAdRotationTimer:I

.field public m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 329
    invoke-direct {p0}, Lcom/glu/android/GluAds$Abstraction;-><init>()V

    .line 318
    iput v1, p0, Lcom/glu/android/FeaturedAppAd;->m_smallAdRotationTimer:I

    .line 320
    const/4 v0, -0x1

    iput v0, p0, Lcom/glu/android/FeaturedAppAd;->m_currentAdState:I

    .line 321
    iput v1, p0, Lcom/glu/android/FeaturedAppAd;->m_adHeight:I

    .line 323
    iput-boolean v1, p0, Lcom/glu/android/FeaturedAppAd;->m_rotateFeaturedAd:Z

    .line 325
    iput-object v2, p0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    .line 359
    iput-object v2, p0, Lcom/glu/android/FeaturedAppAd;->m_largeGameAd:Landroid/view/View;

    .line 330
    sput-object p0, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    .line 331
    new-instance v0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    sget-object v1, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-direct {v0, v1}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    .line 332
    const/4 v0, 0x4

    iput v0, p0, Lcom/glu/android/FeaturedAppAd;->id:I

    .line 333
    return-void
.end method

.method static synthetic access$002(Lcom/glu/android/FeaturedAppAd;I)I
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/FeaturedAppAd;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/glu/android/FeaturedAppAd;->m_smallAdRotationTimer:I

    return p1
.end method


# virtual methods
.method public canAdsBeFilled()Z
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    invoke-virtual {v0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->isValid()Z

    move-result v0

    return v0
.end method

.method public createGameViewAds()V
    .locals 0

    .prologue
    .line 352
    return-void
.end method

.method public createResViewAds()V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

.method public didInterstitialDisplaySuccessfully()Z
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x0

    return v0
.end method

.method public getAdBannerHeight()I
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    invoke-static {v0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->access$900(Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;)I

    move-result v0

    return v0
.end method

.method public getAdState(I)I
    .locals 1
    .param p1, "accountForBannerVisibility"    # I

    .prologue
    .line 407
    iget v0, p0, Lcom/glu/android/FeaturedAppAd;->m_currentAdState:I

    return v0
.end method

.method public getAdWidth()I
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    invoke-static {v0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->access$300(Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;)I

    move-result v0

    return v0
.end method

.method public getLargeInGameAdView()Landroid/view/View;
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd;->m_largeGameAd:Landroid/view/View;

    if-nez v0, :cond_0

    .line 363
    new-instance v0, Landroid/view/View;

    sget-object v1, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd;->m_largeGameAd:Landroid/view/View;

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd;->m_largeGameAd:Landroid/view/View;

    return-object v0
.end method

.method public getResDLAdView()Landroid/view/View;
    .locals 1

    .prologue
    .line 369
    const-string v0, "no res view for tapjoy feature"

    invoke-static {v0}, Lcom/glu/android/Debug;->devDie(Ljava/lang/String;)V

    .line 370
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResDLAdViewHeight()I
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x1

    return v0
.end method

.method public getResDLAdViewWidth()I
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x1

    return v0
.end method

.method public getSmallInGameAdView()Landroid/view/View;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    return-object v0
.end method

.method public handledShowLargeAd()V
    .locals 0

    .prologue
    .line 394
    return-void
.end method

.method public handledShowSmallAd()V
    .locals 0

    .prologue
    .line 389
    return-void
.end method

.method public isInterstitialFinished()Z
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x1

    return v0
.end method

.method public isResAdViewSupported()Z
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method public onAppStart()V
    .locals 0

    .prologue
    .line 337
    return-void
.end method

.method public onAppStop()V
    .locals 0

    .prologue
    .line 338
    return-void
.end method

.method public queueFeaturedAdRotation()V
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/FeaturedAppAd;->m_rotateFeaturedAd:Z

    return-void
.end method

.method public setAdState(I)V
    .locals 7
    .param p1, "newState"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 412
    sget-boolean v0, Lcom/glu/android/Settings;->ADS_ENABLED:Z

    if-nez v0, :cond_1

    .line 414
    iput v3, p0, Lcom/glu/android/FeaturedAppAd;->m_currentAdState:I

    .line 415
    iput v2, p0, Lcom/glu/android/FeaturedAppAd;->m_adHeight:I

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    iget v0, p0, Lcom/glu/android/FeaturedAppAd;->m_currentAdState:I

    if-eq v0, p1, :cond_2

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Changing ad state from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/glu/android/FeaturedAppAd;->m_currentAdState:I

    invoke-static {v1}, Lcom/glu/android/GluAds;->adStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/glu/android/GluAds;->adStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 422
    :cond_2
    sget-object v0, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    if-eqz v0, :cond_0

    .line 425
    iget v0, p0, Lcom/glu/android/FeaturedAppAd;->m_delayTimer:I

    if-lez v0, :cond_3

    .line 427
    iput p1, p0, Lcom/glu/android/FeaturedAppAd;->m_pendingAdState:I

    goto :goto_0

    .line 431
    :cond_3
    iget v0, p0, Lcom/glu/android/FeaturedAppAd;->m_currentAdState:I

    if-eq v0, p1, :cond_0

    .line 433
    packed-switch p1, :pswitch_data_0

    .line 464
    :cond_4
    :goto_1
    :pswitch_0
    iput p1, p0, Lcom/glu/android/FeaturedAppAd;->m_currentAdState:I

    goto :goto_0

    .line 435
    :pswitch_1
    sget-object v0, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    invoke-virtual {v0, v3, v2}, Lcom/glu/android/GluCanvasOverlayGroup;->setViewVisibility(IZ)V

    .line 436
    sget-object v0, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    invoke-virtual {v0, v4, v2}, Lcom/glu/android/GluCanvasOverlayGroup;->setViewVisibility(IZ)V

    .line 437
    sget-object v0, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    invoke-virtual {v0, v6, v2}, Lcom/glu/android/GluCanvasOverlayGroup;->setViewVisibility(IZ)V

    .line 438
    sget-object v0, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    invoke-virtual {v0, v5, v2}, Lcom/glu/android/GluCanvasOverlayGroup;->setViewVisibility(IZ)V

    .line 439
    iput v2, p0, Lcom/glu/android/FeaturedAppAd;->m_smallAdRotationTimer:I

    goto :goto_1

    .line 447
    :pswitch_2
    sget-object v0, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    invoke-virtual {v0, v4, v2}, Lcom/glu/android/GluCanvasOverlayGroup;->setViewVisibility(IZ)V

    .line 448
    sget-object v0, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    invoke-virtual {v0, v6, v2}, Lcom/glu/android/GluCanvasOverlayGroup;->setViewVisibility(IZ)V

    .line 449
    sget-object v0, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    invoke-virtual {v0, v5, v2}, Lcom/glu/android/GluCanvasOverlayGroup;->setViewVisibility(IZ)V

    .line 450
    sget-object v0, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    invoke-virtual {v0, v3, v3}, Lcom/glu/android/GluCanvasOverlayGroup;->setViewVisibility(IZ)V

    .line 451
    sget-object v0, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    invoke-virtual {p0}, Lcom/glu/android/FeaturedAppAd;->getAdWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/glu/android/FeaturedAppAd;->getAdBannerHeight()I

    move-result v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/glu/android/GluCanvasOverlayGroup;->setViewWH(III)V

    .line 452
    sget-object v0, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    invoke-virtual {v0}, Lcom/glu/android/GluCanvasOverlayGroup;->handlerShowSmallAd()V

    .line 453
    iget v0, p0, Lcom/glu/android/FeaturedAppAd;->m_smallAdRotationTimer:I

    if-gtz v0, :cond_4

    .line 454
    invoke-virtual {p0}, Lcom/glu/android/FeaturedAppAd;->startAdTimer()V

    goto :goto_1

    .line 433
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public startAdTimer()V
    .locals 1

    .prologue
    .line 560
    const/16 v0, 0x7530

    iput v0, p0, Lcom/glu/android/FeaturedAppAd;->m_smallAdRotationTimer:I

    .line 561
    return-void
.end method

.method public tick(I)I
    .locals 5
    .param p1, "deltaMS"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 473
    sget-object v0, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    if-eqz v0, :cond_4

    .line 475
    iget v0, p0, Lcom/glu/android/FeaturedAppAd;->m_tickCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/glu/android/FeaturedAppAd;->m_tickCount:I

    .line 476
    iget v0, p0, Lcom/glu/android/FeaturedAppAd;->m_totalTickMS:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/glu/android/FeaturedAppAd;->m_totalTickMS:I

    .line 478
    iget v0, p0, Lcom/glu/android/FeaturedAppAd;->m_delayTimer:I

    if-lez v0, :cond_1

    .line 480
    iget v0, p0, Lcom/glu/android/FeaturedAppAd;->m_delayTimer:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/glu/android/FeaturedAppAd;->m_delayTimer:I

    .line 481
    iget v0, p0, Lcom/glu/android/FeaturedAppAd;->m_delayTimer:I

    if-gtz v0, :cond_1

    .line 483
    iget v0, p0, Lcom/glu/android/FeaturedAppAd;->m_pendingAdState:I

    if-nez v0, :cond_0

    .line 484
    const-string v0, "===========================================================================\nAD STATE FLOW PROBLEM, MUST SET TIMERS AND ATTRIBUTES BEFORE CHANGING STATE\n==========================================================================="

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 487
    :cond_0
    iget v0, p0, Lcom/glu/android/FeaturedAppAd;->m_pendingAdState:I

    invoke-virtual {p0, v0}, Lcom/glu/android/FeaturedAppAd;->setAdState(I)V

    .line 488
    iput v2, p0, Lcom/glu/android/FeaturedAppAd;->m_pendingAdState:I

    .line 492
    :cond_1
    iget v0, p0, Lcom/glu/android/FeaturedAppAd;->m_interpolationTimer:I

    if-lez v0, :cond_2

    .line 494
    iget v0, p0, Lcom/glu/android/FeaturedAppAd;->m_interpolationTimer:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/glu/android/FeaturedAppAd;->m_interpolationTimer:I

    .line 498
    :cond_2
    iget-boolean v0, p0, Lcom/glu/android/FeaturedAppAd;->m_rotateFeaturedAd:Z

    if-eqz v0, :cond_3

    .line 499
    sget-object v0, Lcom/glu/android/GluTapjoy;->instance:Lcom/glu/android/GluTapjoy;

    invoke-virtual {v0}, Lcom/glu/android/GluTapjoy;->internalShowFeaturedApp()V

    .line 501
    :cond_3
    iget v0, p0, Lcom/glu/android/FeaturedAppAd;->m_smallAdRotationTimer:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/glu/android/FeaturedAppAd;->m_currentAdState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 503
    iget v0, p0, Lcom/glu/android/FeaturedAppAd;->m_smallAdRotationTimer:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/glu/android/FeaturedAppAd;->m_smallAdRotationTimer:I

    .line 504
    iget v0, p0, Lcom/glu/android/FeaturedAppAd;->m_smallAdRotationTimer:I

    if-gtz v0, :cond_4

    .line 506
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    invoke-virtual {v0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->isFeaturedAdValidForBanners()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 508
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    invoke-static {v0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->access$410(Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;)I

    .line 509
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    invoke-static {v0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->access$400(Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;)I

    move-result v0

    if-nez v0, :cond_5

    .line 510
    sget-object v0, Lcom/glu/android/GluTapjoy;->instance:Lcom/glu/android/GluTapjoy;

    invoke-virtual {v0}, Lcom/glu/android/GluTapjoy;->internalShowFeaturedApp()V

    .line 534
    :cond_4
    :goto_0
    return v3

    .line 512
    :cond_5
    invoke-virtual {p0}, Lcom/glu/android/FeaturedAppAd;->startAdTimer()V

    goto :goto_0

    .line 514
    :cond_6
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    invoke-virtual {v0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->isBannerAdValid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 516
    const-string v0, "Rotating TJ ad..."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    invoke-static {v0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->access$500(Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 519
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    invoke-static {v0, v2}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->access$602(Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;Z)Z

    .line 520
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    invoke-static {v0, v4}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->access$702(Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;Ljava/lang/String;)Ljava/lang/String;

    .line 521
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    invoke-static {v0, v4}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->access$802(Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 525
    :cond_7
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    invoke-static {v0, v3}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->access$502(Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;Z)Z

    .line 526
    sget-object v0, Lcom/glu/android/GluTapjoy;->instance:Lcom/glu/android/GluTapjoy;

    invoke-virtual {v0}, Lcom/glu/android/GluTapjoy;->requestNewBannerAd()V

    .line 527
    invoke-virtual {p0}, Lcom/glu/android/FeaturedAppAd;->startAdTimer()V

    goto :goto_0
.end method
