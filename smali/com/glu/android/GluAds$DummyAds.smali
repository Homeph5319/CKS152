.class public Lcom/glu/android/GluAds$DummyAds;
.super Lcom/glu/android/GluAds$Abstraction;
.source "GluAds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GluAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DummyAds"
.end annotation


# instance fields
.field private m_dummyView:Landroid/view/View;

.field private m_dummyView2:Landroid/view/View;

.field private m_dummyView3:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 359
    invoke-direct {p0}, Lcom/glu/android/GluAds$Abstraction;-><init>()V

    .line 366
    iput-object v0, p0, Lcom/glu/android/GluAds$DummyAds;->m_dummyView:Landroid/view/View;

    .line 367
    iput-object v0, p0, Lcom/glu/android/GluAds$DummyAds;->m_dummyView2:Landroid/view/View;

    .line 368
    iput-object v0, p0, Lcom/glu/android/GluAds$DummyAds;->m_dummyView3:Landroid/view/View;

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Lcom/glu/android/GluAds$DummyAds;->id:I

    .line 361
    new-instance v0, Landroid/view/View;

    sget-object v1, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/glu/android/GluAds$DummyAds;->m_dummyView:Landroid/view/View;

    .line 362
    new-instance v0, Landroid/view/View;

    sget-object v1, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/glu/android/GluAds$DummyAds;->m_dummyView2:Landroid/view/View;

    .line 363
    new-instance v0, Landroid/view/View;

    sget-object v1, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/glu/android/GluAds$DummyAds;->m_dummyView3:Landroid/view/View;

    .line 364
    return-void
.end method


# virtual methods
.method public canAdsBeFilled()Z
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    return v0
.end method

.method public createGameViewAds()V
    .locals 0

    .prologue
    .line 375
    return-void
.end method

.method public createResViewAds()V
    .locals 0

    .prologue
    .line 374
    return-void
.end method

.method public didInterstitialDisplaySuccessfully()Z
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x1

    return v0
.end method

.method public getAdBannerHeight()I
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    return v0
.end method

.method public getAdState(I)I
    .locals 1
    .param p1, "accountForBannerVisibility"    # I

    .prologue
    .line 387
    const/4 v0, 0x1

    return v0
.end method

.method public getAdWidth()I
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x1

    return v0
.end method

.method public getLargeInGameAdView()Landroid/view/View;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/glu/android/GluAds$DummyAds;->m_dummyView2:Landroid/view/View;

    return-object v0
.end method

.method public getResDLAdView()Landroid/view/View;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/glu/android/GluAds$DummyAds;->m_dummyView3:Landroid/view/View;

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
    .line 379
    const/4 v0, 0x1

    return v0
.end method

.method public getSmallInGameAdView()Landroid/view/View;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/glu/android/GluAds$DummyAds;->m_dummyView:Landroid/view/View;

    return-object v0
.end method

.method public handledShowLargeAd()V
    .locals 0

    .prologue
    .line 383
    return-void
.end method

.method public handledShowSmallAd()V
    .locals 0

    .prologue
    .line 382
    return-void
.end method

.method public isInterstitialFinished()Z
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x1

    return v0
.end method

.method public isResAdViewSupported()Z
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public onAppStart()V
    .locals 0

    .prologue
    .line 370
    return-void
.end method

.method public onAppStop()V
    .locals 0

    .prologue
    .line 371
    return-void
.end method

.method public setAdState(I)V
    .locals 0
    .param p1, "newState"    # I

    .prologue
    .line 394
    return-void
.end method

.method public tick(I)I
    .locals 1
    .param p1, "deltaMS"    # I

    .prologue
    .line 393
    const/4 v0, 0x0

    return v0
.end method
