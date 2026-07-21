.class public abstract Lcom/glu/android/GluAds$Abstraction;
.super Ljava/lang/Object;
.source "GluAds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GluAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Abstraction"
.end annotation


# static fields
.field public static final DO_NOT_RETRY:I = 0xfacade

.field public static final UNIVERSAL_RETRY_TIMER:I = 0x1388


# instance fields
.field protected id:I

.field protected m_adAnchor:I

.field protected m_delayTimer:I

.field protected m_interpolationTimer:I

.field protected m_pendingAdState:I

.field private final m_setAdStateHandler:Landroid/os/Handler;

.field protected m_tickCount:I

.field protected m_totalTickMS:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput v1, p0, Lcom/glu/android/GluAds$Abstraction;->id:I

    .line 124
    new-instance v0, Lcom/glu/android/GluAds$Abstraction$1;

    invoke-direct {v0, p0}, Lcom/glu/android/GluAds$Abstraction$1;-><init>(Lcom/glu/android/GluAds$Abstraction;)V

    iput-object v0, p0, Lcom/glu/android/GluAds$Abstraction;->m_setAdStateHandler:Landroid/os/Handler;

    .line 138
    iput v1, p0, Lcom/glu/android/GluAds$Abstraction;->m_tickCount:I

    .line 139
    iput v1, p0, Lcom/glu/android/GluAds$Abstraction;->m_totalTickMS:I

    .line 140
    iput v1, p0, Lcom/glu/android/GluAds$Abstraction;->m_delayTimer:I

    .line 141
    iput v1, p0, Lcom/glu/android/GluAds$Abstraction;->m_pendingAdState:I

    .line 142
    iput v1, p0, Lcom/glu/android/GluAds$Abstraction;->m_interpolationTimer:I

    .line 143
    const/4 v0, 0x1

    iput v0, p0, Lcom/glu/android/GluAds$Abstraction;->m_adAnchor:I

    return-void
.end method


# virtual methods
.method public final adWebBrowserIsOpen()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public final areAdsDisabled()Z
    .locals 1

    .prologue
    .line 115
    sget-boolean v0, Lcom/glu/android/Settings;->ADS_ENABLED:Z

    return v0
.end method

.method public abstract canAdsBeFilled()Z
.end method

.method public abstract createGameViewAds()V
.end method

.method public abstract createResViewAds()V
.end method

.method public abstract didInterstitialDisplaySuccessfully()Z
.end method

.method public abstract getAdBannerHeight()I
.end method

.method public abstract getAdState(I)I
.end method

.method public abstract getAdWidth()I
.end method

.method public abstract getLargeInGameAdView()Landroid/view/View;
.end method

.method public abstract getResDLAdView()Landroid/view/View;
.end method

.method public abstract getResDLAdViewHeight()I
.end method

.method public abstract getResDLAdViewWidth()I
.end method

.method public abstract getSmallInGameAdView()Landroid/view/View;
.end method

.method public final handledSetAdState(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/glu/android/GluAds$Abstraction;->m_setAdStateHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 123
    return-void
.end method

.method public abstract handledShowLargeAd()V
.end method

.method public abstract handledShowSmallAd()V
.end method

.method public abstract isInterstitialFinished()Z
.end method

.method public abstract isResAdViewSupported()Z
.end method

.method public final nativeInitialize()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public abstract onAppStart()V
.end method

.method public abstract onAppStop()V
.end method

.method public final setAdAnchor(I)V
    .locals 0
    .param p1, "anchor"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/glu/android/GluAds$Abstraction;->m_adAnchor:I

    return-void
.end method

.method public final setAdDelayTimer(I)V
    .locals 0
    .param p1, "timer"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/glu/android/GluAds$Abstraction;->m_delayTimer:I

    return-void
.end method

.method public final setAdInterpolationTimer(I)V
    .locals 0
    .param p1, "timer"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/glu/android/GluAds$Abstraction;->m_interpolationTimer:I

    return-void
.end method

.method public abstract setAdState(I)V
.end method

.method public final setAdsDisabled(I)V
    .locals 3
    .param p1, "disabled"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 109
    if-ne p1, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/glu/android/Settings;->ADS_ENABLED:Z

    .line 110
    iput v2, p0, Lcom/glu/android/GluAds$Abstraction;->m_delayTimer:I

    .line 111
    invoke-virtual {p0, v1}, Lcom/glu/android/GluAds$Abstraction;->setAdState(I)V

    .line 112
    return-void

    :cond_0
    move v0, v2

    .line 109
    goto :goto_0
.end method

.method public setBannerXY(I)V
    .locals 4
    .param p1, "xy"    # I

    .prologue
    .line 90
    shr-int/lit8 v0, p1, 0x10

    .line 91
    .local v0, "x":I
    const v2, 0xffff

    and-int v1, p1, v2

    .line 93
    .local v1, "y":I
    sget-object v2, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Lcom/glu/android/GluCanvasOverlayGroup;->setViewXY(III)V

    .line 94
    return-void
.end method

.method public final setFullscreenXY(I)V
    .locals 4
    .param p1, "xy"    # I

    .prologue
    .line 97
    shr-int/lit8 v0, p1, 0x10

    .line 98
    .local v0, "x":I
    const v2, 0xffff

    and-int v1, p1, v2

    .line 100
    .local v1, "y":I
    sget-object v2, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0, v1}, Lcom/glu/android/GluCanvasOverlayGroup;->setViewXY(III)V

    .line 101
    return-void
.end method

.method public abstract tick(I)I
.end method
