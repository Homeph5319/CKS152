.class public Lcom/glu/android/GluJNICallback;
.super Ljava/lang/Object;
.source "GluJNICallback.java"


# static fields
.field public static final ANDROID_CHECK_NETWORK_AVAILABLE:I = 0x1

.field public static final COMMUNITY_EVENT_DISPLAY_ACHIEVEMENTS:I = 0x2

.field public static final COMMUNITY_EVENT_DISPLAY_LEADERBOARDS:I = 0x3

.field public static final COMMUNITY_EVENT_GET_ACHIEVEMENT_USERNAME:I = 0x5

.field public static final COMMUNITY_EVENT_GET_LEADERBOARD_USERNAME:I = 0x6

.field public static final COMMUNITY_EVENT_IS_SUPPORTED:I = 0x4

.field public static final COMMUNITY_EVENT_SHOW_DASH:I = 0x1

.field public static final MOVIE_EVENT_CHECKACTIVE:I = 0x5

.field public static final MOVIE_EVENT_PAUSE:I = 0x2

.field public static final MOVIE_EVENT_PLAY:I = 0x1

.field public static final MOVIE_EVENT_RESUME:I = 0x3

.field public static final MOVIE_EVENT_SET_TOUCH_SKIPPABLE:I = 0x6

.field public static final MOVIE_EVENT_STOP:I = 0x4

.field public static sm_tapjoyReturnCA:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 425
    const/16 v0, 0x7d1

    new-array v0, v0, [C

    sput-object v0, Lcom/glu/android/GluJNICallback;->sm_tapjoyReturnCA:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static achievementEvent(IIII)I
    .locals 1
    .param p0, "achievementId"    # I
    .param p1, "unlocked"    # I
    .param p2, "currentValue"    # I
    .param p3, "goalValue"    # I

    .prologue
    .line 658
    const/4 v0, 0x1

    return v0
.end method

.method public static adEvent(II[B)I
    .locals 4
    .param p0, "event"    # I
    .param p1, "iParam"    # I
    .param p2, "param"    # [B

    .prologue
    const/16 v3, 0xf

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 72
    sget-boolean v2, Lcom/glu/android/Settings;->ADS_ENABLED:Z

    if-nez v2, :cond_2

    .line 74
    if-ne p0, v3, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 77
    goto :goto_0

    .line 80
    :cond_2
    if-ne p0, v0, :cond_4

    .line 81
    invoke-static {p1}, Lcom/glu/android/GluAds;->setBannerXY(I)V

    :cond_3
    :goto_1
    move v0, v1

    .line 119
    goto :goto_0

    .line 82
    :cond_4
    const/4 v2, 0x2

    if-ne p0, v2, :cond_5

    .line 83
    invoke-static {p1}, Lcom/glu/android/GluAds;->setFullscreenXY(I)V

    goto :goto_1

    .line 84
    :cond_5
    const/4 v2, 0x3

    if-ne p0, v2, :cond_6

    .line 85
    invoke-static {}, Lcom/glu/android/GluAds;->getAdWidth()I

    move-result v0

    goto :goto_0

    .line 86
    :cond_6
    const/4 v2, 0x4

    if-ne p0, v2, :cond_7

    .line 87
    invoke-static {}, Lcom/glu/android/GluAds;->nativeInitialize()V

    goto :goto_1

    .line 88
    :cond_7
    const/4 v2, 0x5

    if-eq p0, v2, :cond_3

    .line 90
    const/4 v2, 0x6

    if-ne p0, v2, :cond_8

    .line 91
    invoke-static {p1}, Lcom/glu/android/GluAds;->getAdState(I)I

    move-result v0

    goto :goto_0

    .line 92
    :cond_8
    const/4 v2, 0x7

    if-ne p0, v2, :cond_9

    .line 93
    invoke-static {p1}, Lcom/glu/android/GluAds;->setAdState(I)V

    goto :goto_1

    .line 94
    :cond_9
    const/16 v2, 0x8

    if-ne p0, v2, :cond_a

    .line 95
    invoke-static {p1}, Lcom/glu/android/GluAds;->tick(I)I

    move-result v0

    goto :goto_0

    .line 96
    :cond_a
    const/16 v2, 0x9

    if-ne p0, v2, :cond_b

    .line 97
    invoke-static {}, Lcom/glu/android/GluAds;->isInterstitialFinished()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 98
    :cond_b
    const/16 v2, 0xa

    if-ne p0, v2, :cond_c

    .line 99
    invoke-static {}, Lcom/glu/android/GluAds;->didInterstitialDisplaySuccessfully()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 100
    :cond_c
    const/16 v2, 0xb

    if-ne p0, v2, :cond_d

    .line 101
    invoke-static {}, Lcom/glu/android/GluAds;->adWebBrowserIsOpen()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 102
    :cond_d
    const/16 v2, 0xc

    if-ne p0, v2, :cond_e

    .line 103
    invoke-static {p1}, Lcom/glu/android/GluAds;->startLoadingTimer(I)V

    goto :goto_1

    .line 104
    :cond_e
    const/16 v2, 0xd

    if-ne p0, v2, :cond_f

    .line 105
    invoke-static {}, Lcom/glu/android/GluAds;->isLoadingTimerFinished()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 106
    :cond_f
    const/16 v2, 0xe

    if-ne p0, v2, :cond_10

    .line 107
    invoke-static {p1}, Lcom/glu/android/GluAds;->setAdsDisabled(I)V

    goto :goto_1

    .line 108
    :cond_10
    if-ne p0, v3, :cond_11

    .line 109
    invoke-static {}, Lcom/glu/android/GluAds;->isInterstitialFinished()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 110
    :cond_11
    const/16 v0, 0x10

    if-ne p0, v0, :cond_12

    .line 111
    invoke-static {}, Lcom/glu/android/GluAds;->getAdBannerHeight()I

    move-result v0

    goto/16 :goto_0

    .line 112
    :cond_12
    const/16 v0, 0x11

    if-ne p0, v0, :cond_13

    .line 113
    invoke-static {p1}, Lcom/glu/android/GluAds;->setAdDelayTimer(I)V

    goto/16 :goto_1

    .line 114
    :cond_13
    const/16 v0, 0x12

    if-ne p0, v0, :cond_14

    .line 115
    invoke-static {p1}, Lcom/glu/android/GluAds;->setAdInterpolationTimer(I)V

    goto/16 :goto_1

    .line 116
    :cond_14
    const/16 v0, 0x13

    if-ne p0, v0, :cond_3

    .line 117
    invoke-static {p1}, Lcom/glu/android/GluAds;->setAdAnchor(I)V

    goto/16 :goto_1
.end method

.method public static analyticsEvent([BJ[B[C)I
    .locals 2
    .param p0, "event"    # [B
    .param p1, "lParam"    # J
    .param p3, "paramBA"    # [B
    .param p4, "paramCA"    # [C

    .prologue
    .line 619
    if-nez p3, :cond_1

    if-nez p4, :cond_0

    const/4 v0, 0x0

    .line 620
    .local v0, "paramS":Ljava/lang/String;
    :goto_0
    if-nez p0, :cond_2

    .line 622
    const-string v1, "analyticsEvent() with null event! Ignoring..."

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 623
    const/4 v1, 0x0

    .line 625
    :goto_1
    return v1

    .line 619
    .end local v0    # "paramS":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p4}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 625
    .restart local v0    # "paramS":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1, p1, p2, v0}, Lcom/glu/android/GluFlurry;->logEvent(Ljava/lang/String;JLjava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method public static communityEvent(II[B)[C
    .locals 2
    .param p0, "event"    # I
    .param p1, "iParam"    # I
    .param p2, "paramBA"    # [B

    .prologue
    .line 644
    const/4 v1, 0x1

    new-array v0, v1, [C

    .line 645
    .local v0, "DUMMY_CA_RETURN":[C
    return-object v0
.end method

.method public static facebookEvent(II[B[C)I
    .locals 1
    .param p0, "event"    # I
    .param p1, "iParam"    # I
    .param p2, "paramBA"    # [B
    .param p3, "paramCA"    # [C

    .prologue
    .line 193
    invoke-static {p0, p1, p2, p3}, Lcom/glu/android/GluFBConnect;->facebookEvent(II[B[C)I

    move-result v0

    return v0
.end method

.method public static gameCenterEvent(III)I
    .locals 1
    .param p0, "event"    # I
    .param p1, "param"    # I
    .param p2, "param2"    # I

    .prologue
    .line 566
    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    sget-boolean v0, Lcom/glu/android/GameLet;->m_openFeintInitialized:Z

    if-nez v0, :cond_0

    .line 567
    const-string v0, "OpenFeint initializing..."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 568
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->handlerInitializeOpenFeint()V

    .line 569
    const/4 v0, 0x1

    sput-boolean v0, Lcom/glu/android/GameLet;->m_openFeintInitialized:Z

    .line 572
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/glu/android/GluOpenFeint;->handleEvent(III)I

    move-result v0

    return v0
.end method

.method public static gameSpecificEvent(II[B)I
    .locals 1
    .param p0, "event"    # I
    .param p1, "iParam"    # I
    .param p2, "param"    # [B

    .prologue
    .line 611
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 612
    invoke-static {}, Lcom/glu/android/GluUtil;->isNetworkAvailable()I

    move-result v0

    .line 614
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAudioDataArray(I)[B
    .locals 2
    .param p0, "length"    # I

    .prologue
    .line 183
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAudioDataArray("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") called with DeviceSound instance null."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 188
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 186
    :cond_0
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    invoke-virtual {v0, p0}, Lcom/glu/android/DeviceSound;->getAudioDataArray(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static gnsEvent(II[B[C)I
    .locals 4
    .param p0, "event"    # I
    .param p1, "iParam"    # I
    .param p2, "paramBA"    # [B
    .param p3, "paramCA"    # [C

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 245
    if-ne p0, v0, :cond_2

    .line 247
    sget-boolean v0, Lcom/glu/android/Settings;->GLOBALNAV_DISABLED:Z

    if-eqz v0, :cond_1

    .line 248
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->moreGamesLaunch()V

    .line 295
    :cond_0
    :goto_0
    return v1

    .line 250
    :cond_1
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->openGNSDialog()V

    goto :goto_0

    .line 252
    :cond_2
    const/4 v2, 0x2

    if-ne p0, v2, :cond_3

    .line 254
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->closeGNSDialog()V

    goto :goto_0

    .line 256
    :cond_3
    if-ne p0, v3, :cond_4

    .line 259
    aput-byte v1, p2, v3

    .line 260
    sget-object v0, Lcom/glu/android/GlobalNav;->instance:Lcom/glu/android/GlobalNav;

    invoke-static {p2}, Lcom/glu/android/GluUtil;->byteArrayToBooleanArray([B)[Z

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/glu/android/GlobalNav;->setValidTabs([Z)V

    goto :goto_0

    .line 262
    :cond_4
    const/4 v2, 0x4

    if-ne p0, v2, :cond_6

    .line 264
    if-ne p1, v3, :cond_5

    .line 265
    const/4 p1, 0x0

    .line 266
    :cond_5
    sget-object v0, Lcom/glu/android/GlobalNav;->instance:Lcom/glu/android/GlobalNav;

    invoke-virtual {v0, p1}, Lcom/glu/android/GlobalNav;->setTab(I)V

    goto :goto_0

    .line 268
    :cond_6
    const/4 v2, 0x5

    if-ne p0, v2, :cond_7

    .line 269
    sget-object v0, Lcom/glu/android/GlobalNav;->instance:Lcom/glu/android/GlobalNav;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Lcom/glu/android/GlobalNav;->setAboutText(Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_7
    const/4 v2, 0x6

    if-ne p0, v2, :cond_8

    .line 271
    sget-object v0, Lcom/glu/android/GlobalNav;->instance:Lcom/glu/android/GlobalNav;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Lcom/glu/android/GlobalNav;->setAppID(Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_8
    const/4 v2, 0x7

    if-eq p0, v2, :cond_0

    .line 274
    const/16 v2, 0x8

    if-eq p0, v2, :cond_0

    .line 276
    const/16 v2, 0x9

    if-ne p0, v2, :cond_9

    .line 277
    sget-object v0, Lcom/glu/android/GNSWidgetCollection;->instance:Lcom/glu/android/GNSWidgetCollection;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Lcom/glu/android/GNSWidgetCollection;->createSelectorWidget(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 278
    :cond_9
    const/16 v2, 0xa

    if-ne p0, v2, :cond_a

    .line 279
    sget-object v0, Lcom/glu/android/GNSWidgetCollection;->instance:Lcom/glu/android/GNSWidgetCollection;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1, p1}, Lcom/glu/android/GNSWidgetCollection;->createSliderWidget(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 280
    :cond_a
    const/16 v2, 0xb

    if-ne p0, v2, :cond_b

    .line 282
    sget-object v0, Lcom/glu/android/GNSWidgetCollection;->instance:Lcom/glu/android/GNSWidgetCollection;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Lcom/glu/android/GNSWidgetCollection;->createButtonWidget(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 284
    :cond_b
    const/16 v2, 0xc

    if-ne p0, v2, :cond_d

    .line 286
    sget-object v2, Lcom/glu/android/GNSWidgetCollection;->instance:Lcom/glu/android/GNSWidgetCollection;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p3}, Ljava/lang/String;-><init>([C)V

    if-ne p1, v0, :cond_c

    :goto_1
    invoke-virtual {v2, v3, v0}, Lcom/glu/android/GNSWidgetCollection;->createSwitchWidget(Ljava/lang/String;Z)I

    move-result v1

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto :goto_1

    .line 288
    :cond_d
    const/16 v0, 0xd

    if-ne p0, v0, :cond_e

    .line 289
    sget-object v0, Lcom/glu/android/GNSWidgetCollection;->instance:Lcom/glu/android/GNSWidgetCollection;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p1, v2}, Lcom/glu/android/GNSWidgetCollection;->addSelectorOption(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 290
    :cond_e
    const/16 v0, 0xe

    if-ne p0, v0, :cond_f

    .line 291
    sget-object v0, Lcom/glu/android/GNSWidgetCollection;->instance:Lcom/glu/android/GNSWidgetCollection;

    invoke-virtual {v0, p1}, Lcom/glu/android/GNSWidgetCollection;->setSelectorDefaultOption(I)V

    goto/16 :goto_0

    .line 292
    :cond_f
    const/16 v0, 0xf

    if-ne p0, v0, :cond_0

    .line 293
    sget-object v0, Lcom/glu/android/GNSWidgetCollection;->instance:Lcom/glu/android/GNSWidgetCollection;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p1, v2}, Lcom/glu/android/GNSWidgetCollection;->doButtonAddText(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static iapEvent(II[B)I
    .locals 7
    .param p0, "event"    # I
    .param p1, "iParam"    # I
    .param p2, "paramBA"    # [B

    .prologue
    const/16 v6, 0x11

    const/4 v5, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 496
    if-eq p0, v5, :cond_0

    if-eq p0, v6, :cond_0

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Entering callback GluJNI.iapEvent("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/glu/android/IAP;->eventToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_3

    const-string v1, "null"

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 499
    :cond_0
    const/4 v0, 0x0

    .line 500
    .local v0, "paramS":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 501
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 503
    :cond_1
    if-ne p0, v2, :cond_5

    .line 504
    invoke-static {}, Lcom/glu/android/IAP;->isIAPSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    move v2, v1

    .line 540
    :cond_2
    :goto_2
    return v2

    .line 497
    .end local v0    # "paramS":Ljava/lang/String;
    :cond_3
    const-string v1, "not null"

    goto :goto_0

    .restart local v0    # "paramS":Ljava/lang/String;
    :cond_4
    move v1, v3

    .line 504
    goto :goto_1

    .line 505
    :cond_5
    sget-object v1, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    if-nez v1, :cond_6

    move v2, v3

    .line 506
    goto :goto_2

    .line 507
    :cond_6
    const/4 v1, 0x2

    if-ne p0, v1, :cond_8

    .line 508
    sget-object v1, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    invoke-interface {v1, v0}, Lcom/glu/android/IAP$IAPObject;->buyProduct(Ljava/lang/String;)V

    :cond_7
    :goto_3
    move v2, v3

    .line 540
    goto :goto_2

    .line 509
    :cond_8
    const/4 v1, 0x3

    if-ne p0, v1, :cond_9

    .line 510
    sget-object v1, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    invoke-interface {v1}, Lcom/glu/android/IAP$IAPObject;->restoreUnclaimedItems()V

    goto :goto_3

    .line 511
    :cond_9
    const/4 v1, 0x4

    if-ne p0, v1, :cond_a

    .line 512
    sget-object v1, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    invoke-interface {v1}, Lcom/glu/android/IAP$IAPObject;->init()V

    goto :goto_3

    .line 513
    :cond_a
    const/4 v1, 0x5

    if-ne p0, v1, :cond_b

    .line 514
    invoke-static {}, Lcom/glu/android/IAP;->getTransactionState()I

    move-result v2

    goto :goto_2

    .line 515
    :cond_b
    if-ne p0, v5, :cond_c

    .line 516
    sget-object v1, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    invoke-interface {v1, p1}, Lcom/glu/android/IAP$IAPObject;->tick(I)V

    goto :goto_3

    .line 517
    :cond_c
    const/4 v1, 0x7

    if-ne p0, v1, :cond_d

    .line 518
    sget-object v1, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    invoke-interface {v1, v0}, Lcom/glu/android/IAP$IAPObject;->getProductType(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    .line 519
    :cond_d
    const/16 v1, 0x8

    if-ne p0, v1, :cond_e

    .line 520
    sget-object v1, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    invoke-interface {v1, v0}, Lcom/glu/android/IAP$IAPObject;->isProductValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    move v2, v3

    goto :goto_2

    .line 521
    :cond_e
    const/16 v1, 0x9

    if-ne p0, v1, :cond_f

    .line 522
    invoke-static {}, Lcom/glu/android/IAP;->doesIAPHaveButton()Z

    move-result v1

    if-nez v1, :cond_2

    move v2, v3

    goto :goto_2

    .line 523
    :cond_f
    const/16 v1, 0xa

    if-ne p0, v1, :cond_10

    .line 524
    sget-object v1, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    invoke-interface {v1, p1}, Lcom/glu/android/IAP$IAPObject;->setButtonCenterXY(I)V

    goto :goto_3

    .line 525
    :cond_10
    const/16 v1, 0xb

    if-ne p0, v1, :cond_11

    .line 526
    sget-object v1, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    invoke-interface {v1, p1}, Lcom/glu/android/IAP$IAPObject;->setButtonVisible(I)V

    goto :goto_3

    .line 527
    :cond_11
    const/16 v1, 0xc

    if-ne p0, v1, :cond_12

    .line 528
    sget-object v1, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    invoke-interface {v1}, Lcom/glu/android/IAP$IAPObject;->isIAPConnected()Z

    move-result v1

    if-nez v1, :cond_2

    move v2, v3

    goto :goto_2

    .line 529
    :cond_12
    const/16 v1, 0xd

    if-ne p0, v1, :cond_13

    .line 530
    sget-object v1, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    invoke-interface {v1, v0}, Lcom/glu/android/IAP$IAPObject;->querySingleProduct(Ljava/lang/String;)V

    goto :goto_3

    .line 531
    :cond_13
    const/16 v1, 0xe

    if-ne p0, v1, :cond_14

    .line 532
    invoke-static {v0}, Lcom/glu/android/IAP;->nativeIsItemSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    move v2, v3

    goto/16 :goto_2

    .line 533
    :cond_14
    const/16 v1, 0xf

    if-ne p0, v1, :cond_15

    .line 534
    invoke-static {}, Lcom/glu/android/IAP;->hasInventoryLoaded()Z

    move-result v1

    if-nez v1, :cond_2

    move v2, v3

    goto/16 :goto_2

    .line 535
    :cond_15
    const/16 v1, 0x10

    if-ne p0, v1, :cond_16

    .line 536
    invoke-static {}, Lcom/glu/android/IAP;->isGoogleServiceConnected()Z

    move-result v1

    if-nez v1, :cond_2

    move v2, v3

    goto/16 :goto_2

    .line 537
    :cond_16
    if-ne p0, v6, :cond_7

    .line 538
    sget-object v1, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    invoke-interface {v1}, Lcom/glu/android/IAP$IAPObject;->forceAsynchronousPurchaseAward()Z

    goto/16 :goto_3
.end method

.method public static iapGetter(I[B)[C
    .locals 4
    .param p0, "event"    # I
    .param p1, "paramBA"    # [B

    .prologue
    .line 545
    const-string v0, "*"

    .line 547
    .local v0, "ret":Ljava/lang/String;
    sget-object v1, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    if-nez v1, :cond_0

    .line 549
    const-string v1, "Warning: Called iapGetter() when IAP null"

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 550
    const-string v0, "@"

    .line 557
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    return-object v1

    .line 552
    :cond_0
    const/16 v1, 0x69

    if-ne p0, v1, :cond_1

    .line 553
    sget-object v1, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    invoke-interface {v1}, Lcom/glu/android/IAP$IAPObject;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 555
    :cond_1
    sget-object v1, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    sget-object v2, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v2, v3}, Lcom/glu/android/IAP$IAPObject;->getRealProductId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lcom/glu/android/IAP$IAPObject;->getAttribute(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static initAudioPlayback(III)V
    .locals 1
    .param p0, "bitRate"    # I
    .param p1, "numChannels"    # I
    .param p2, "frequency"    # I

    .prologue
    .line 24
    const-string v0, "java initAudioPlayback()"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    if-nez v0, :cond_0

    .line 27
    const-string v0, "initAudioPlayback() called with DeviceSound instance null."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 30
    :goto_0
    return-void

    .line 29
    :cond_0
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    invoke-virtual {v0, p0, p1, p2}, Lcom/glu/android/DeviceSound;->initAudioPlayback(III)V

    goto :goto_0
.end method

.method public static leaderboardEvent(IJF)I
    .locals 1
    .param p0, "leaderboardId"    # I
    .param p1, "lScore"    # J
    .param p3, "fScore"    # F

    .prologue
    .line 652
    const/4 v0, 0x1

    return v0
.end method

.method public static movieEvent(II[B)I
    .locals 8
    .param p0, "event"    # I
    .param p1, "iParam"    # I
    .param p2, "param"    # [B

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 124
    invoke-static {}, Lcom/glu/android/GluUtil;->canPlayVideo()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 177
    :cond_0
    :goto_0
    return v2

    .line 127
    :cond_1
    const/4 v0, 0x0

    .line 128
    .local v0, "movie":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 129
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Lcom/glu/android/GluUtil;->getRelativeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_2
    invoke-static {}, Lcom/glu/android/GluUtil;->shouldUseDeviceMovieActivity()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 133
    if-ne p0, v2, :cond_4

    .line 135
    invoke-static {v0}, Lcom/glu/android/DeviceMovieActivity;->setActiveMovie(Ljava/lang/String;)Z

    move-result v1

    .line 136
    .local v1, "result":Z
    if-eqz v1, :cond_3

    .line 138
    sget-object v4, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iput-boolean v2, v4, Lcom/glu/android/GameLet;->m_dmaVideoPending:Z

    .line 139
    sget-object v4, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v4}, Lcom/glu/android/GameLet;->switchToMovieView()V

    .line 142
    :cond_3
    if-nez v1, :cond_0

    move v2, v3

    goto :goto_0

    .line 144
    .end local v1    # "result":Z
    :cond_4
    const/4 v4, 0x5

    if-ne p0, v4, :cond_5

    .line 145
    sget-object v4, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-boolean v4, v4, Lcom/glu/android/GameLet;->m_dmaVideoPending:Z

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 146
    :cond_5
    if-ne p0, v5, :cond_7

    :cond_6
    :goto_1
    move v2, v3

    .line 177
    goto :goto_0

    .line 148
    :cond_7
    if-eq p0, v6, :cond_6

    .line 150
    if-ne p0, v7, :cond_6

    .line 151
    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v2}, Lcom/glu/android/GameLet;->endMovieView()V

    goto :goto_1

    .line 155
    :cond_8
    if-ne p0, v2, :cond_a

    .line 157
    sget-object v4, Lcom/glu/android/GluVideoView;->instance:Lcom/glu/android/GluVideoView;

    invoke-virtual {v4, v0}, Lcom/glu/android/GluVideoView;->setActiveMovie(Ljava/lang/String;)Z

    move-result v1

    .line 158
    .restart local v1    # "result":Z
    if-eqz v1, :cond_9

    .line 159
    sget-object v4, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v4}, Lcom/glu/android/GameLet;->switchToMovieView()V

    .line 161
    :cond_9
    if-nez v1, :cond_0

    move v2, v3

    goto :goto_0

    .line 163
    .end local v1    # "result":Z
    :cond_a
    sget-object v4, Lcom/glu/android/GluVideoView;->instance:Lcom/glu/android/GluVideoView;

    if-nez v4, :cond_b

    move v2, v3

    .line 164
    goto :goto_0

    .line 165
    :cond_b
    if-ne p0, v5, :cond_c

    .line 166
    sget-object v2, Lcom/glu/android/GluVideoView;->instance:Lcom/glu/android/GluVideoView;

    invoke-virtual {v2}, Lcom/glu/android/GluVideoView;->pauseVideo()V

    goto :goto_1

    .line 167
    :cond_c
    if-ne p0, v6, :cond_d

    .line 168
    sget-object v2, Lcom/glu/android/GluVideoView;->instance:Lcom/glu/android/GluVideoView;

    invoke-virtual {v2}, Lcom/glu/android/GluVideoView;->resumeVideo()V

    goto :goto_1

    .line 169
    :cond_d
    if-ne p0, v7, :cond_e

    .line 170
    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v2}, Lcom/glu/android/GameLet;->endMovieView()V

    goto :goto_1

    .line 171
    :cond_e
    const/4 v4, 0x5

    if-ne p0, v4, :cond_f

    .line 172
    sget-object v4, Lcom/glu/android/GluVideoView;->instance:Lcom/glu/android/GluVideoView;

    invoke-virtual {v4}, Lcom/glu/android/GluVideoView;->videoPlaybackActiveOrPending()Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 173
    :cond_f
    const/4 v4, 0x6

    if-ne p0, v4, :cond_6

    .line 174
    sget-object v4, Lcom/glu/android/GluVideoView;->instance:Lcom/glu/android/GluVideoView;

    if-ne p1, v2, :cond_10

    :goto_2
    iput-boolean v2, v4, Lcom/glu/android/GluVideoView;->m_touchSkippable:Z

    goto :goto_1

    :cond_10
    move v2, v3

    goto :goto_2
.end method

.method public static mp3Event(II[B)I
    .locals 4
    .param p0, "event"    # I
    .param p1, "iParam"    # I
    .param p2, "paramBA"    # [B

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 300
    if-ne p0, v0, :cond_3

    .line 301
    sget-object v2, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    invoke-static {p2}, Lcom/glu/android/GluUtil;->nativeBAToString([B)Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v3, v0}, Lcom/glu/android/DeviceSound;->playMP3(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    move v0, v1

    .line 333
    :cond_2
    :goto_1
    return v0

    .line 302
    :cond_3
    const/4 v2, 0x2

    if-ne p0, v2, :cond_4

    .line 303
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    invoke-virtual {v0}, Lcom/glu/android/DeviceSound;->pauseMP3()V

    goto :goto_0

    .line 304
    :cond_4
    const/4 v2, 0x3

    if-ne p0, v2, :cond_5

    .line 305
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    invoke-virtual {v0}, Lcom/glu/android/DeviceSound;->resumeMP3()V

    goto :goto_0

    .line 306
    :cond_5
    const/4 v2, 0x4

    if-ne p0, v2, :cond_6

    .line 307
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    invoke-virtual {v0, p1}, Lcom/glu/android/DeviceSound;->seekToMP3(I)V

    goto :goto_0

    .line 308
    :cond_6
    const/4 v2, 0x5

    if-ne p0, v2, :cond_7

    .line 309
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    invoke-virtual {v0}, Lcom/glu/android/DeviceSound;->stopAndDestroyMP3()V

    goto :goto_0

    .line 310
    :cond_7
    const/4 v2, 0x6

    if-ne p0, v2, :cond_8

    .line 311
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    invoke-virtual {v0}, Lcom/glu/android/DeviceSound;->disableMP3()V

    goto :goto_0

    .line 312
    :cond_8
    const/4 v2, 0x7

    if-ne p0, v2, :cond_9

    .line 313
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    invoke-virtual {v0}, Lcom/glu/android/DeviceSound;->enableMP3()V

    goto :goto_0

    .line 314
    :cond_9
    const/16 v2, 0x8

    if-ne p0, v2, :cond_a

    .line 315
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    invoke-virtual {v0, p1}, Lcom/glu/android/DeviceSound;->volumeUpMP3(I)V

    goto :goto_0

    .line 316
    :cond_a
    const/16 v2, 0x9

    if-ne p0, v2, :cond_b

    .line 317
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    invoke-virtual {v0, p1}, Lcom/glu/android/DeviceSound;->volumeDownMP3(I)V

    goto :goto_0

    .line 318
    :cond_b
    const/16 v2, 0xa

    if-ne p0, v2, :cond_c

    .line 319
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    invoke-virtual {v0, p1}, Lcom/glu/android/DeviceSound;->volumeMinMP3(I)V

    goto :goto_0

    .line 320
    :cond_c
    const/16 v2, 0xb

    if-ne p0, v2, :cond_d

    .line 321
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    invoke-virtual {v0, p1}, Lcom/glu/android/DeviceSound;->volumeMaxMP3(I)V

    goto :goto_0

    .line 328
    :cond_d
    const/16 v2, 0xf

    if-ne p0, v2, :cond_e

    .line 329
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    invoke-virtual {v0, p1}, Lcom/glu/android/DeviceSound;->volumeSetMP3(I)V

    goto :goto_0

    .line 330
    :cond_e
    const/16 v2, 0x10

    if-ne p0, v2, :cond_1

    .line 331
    sget-object v2, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    invoke-virtual {v2}, Lcom/glu/android/DeviceSound;->isMP3Playing()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_1
.end method

.method public static notificationEvent(IJJ[C[C)I
    .locals 8
    .param p0, "event"    # I
    .param p1, "displayAt"    # J
    .param p3, "expiresAt"    # J
    .param p5, "message"    # [C
    .param p6, "payload"    # [C

    .prologue
    const/4 v0, 0x0

    .line 578
    const/16 v1, 0xb

    if-ne p0, v1, :cond_0

    .line 579
    sput v0, Lcom/glu/android/OfflineNotificationManager;->m_onmEnabled:I

    .line 580
    invoke-static {}, Lcom/glu/android/OfflineNotificationManager;->saveONMEnabled()V

    .line 581
    invoke-static {}, Lcom/glu/android/OfflineNotificationManager;->unloadONMService()V

    .line 592
    :goto_0
    return v0

    .line 582
    :cond_0
    const/16 v1, 0xa

    if-ne p0, v1, :cond_1

    .line 583
    const/4 v1, 0x1

    sput v1, Lcom/glu/android/OfflineNotificationManager;->m_onmEnabled:I

    .line 584
    invoke-static {}, Lcom/glu/android/OfflineNotificationManager;->saveONMEnabled()V

    .line 585
    sget-object v1, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-static {v1}, Lcom/glu/android/OfflineNotificationManager;->loadONMService(Landroid/content/Context;)V

    goto :goto_0

    .line 586
    :cond_1
    sget-object v1, Lcom/glu/android/OfflineNotificationManager;->instance:Lcom/glu/android/OfflineNotificationManager;

    if-nez v1, :cond_2

    .line 588
    const-string v1, "Notification mgr null."

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 591
    :cond_2
    sget-object v0, Lcom/glu/android/OfflineNotificationManager;->instance:Lcom/glu/android/OfflineNotificationManager;

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/glu/android/OfflineNotificationManager;->handleEvent(IJJ[C[C)I

    move-result v0

    goto :goto_0
.end method

.method public static pushEvent(II[B)[B
    .locals 5
    .param p0, "event"    # I
    .param p1, "iParam"    # I
    .param p2, "paramBA"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 396
    const/4 v0, 0x0

    .line 399
    .local v0, "iRet":I
    const/4 v4, 0x4

    if-ne p0, v4, :cond_1

    .line 400
    invoke-static {}, Lcom/glu/android/GluEmbeddedPush;->isPushPending()I

    move-result v0

    .line 418
    :cond_0
    :goto_0
    if-nez v0, :cond_c

    .line 419
    const/4 v1, 0x0

    .line 422
    :goto_1
    return-object v1

    .line 401
    :cond_1
    const/4 v4, 0x5

    if-ne p0, v4, :cond_2

    .line 402
    invoke-static {}, Lcom/glu/android/GluEmbeddedPush;->getCurrentAlert()[B

    move-result-object v1

    goto :goto_1

    .line 403
    :cond_2
    const/4 v4, 0x6

    if-ne p0, v4, :cond_3

    .line 404
    invoke-static {}, Lcom/glu/android/GluEmbeddedPush;->getCurrentPayload()[B

    move-result-object v1

    goto :goto_1

    .line 405
    :cond_3
    const/4 v4, 0x7

    if-ne p0, v4, :cond_4

    .line 406
    invoke-static {}, Lcom/glu/android/GluEmbeddedPush;->consumeEvent()V

    goto :goto_0

    .line 407
    :cond_4
    const/4 v4, 0x2

    if-ne p0, v4, :cond_6

    .line 408
    invoke-static {}, Lcom/glu/android/GluEmbeddedPush;->isPushDisabled()Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v2

    :goto_2
    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_2

    .line 409
    :cond_6
    const/4 v4, 0x3

    if-ne p0, v4, :cond_7

    .line 410
    invoke-static {p1}, Lcom/glu/android/GluEmbeddedPush;->togglePushSetting(I)V

    goto :goto_0

    .line 411
    :cond_7
    const/16 v4, 0x8

    if-ne p0, v4, :cond_9

    .line 412
    invoke-static {}, Lcom/glu/android/GluEmbeddedPush;->doesBuildHavePush()Z

    move-result v4

    if-eqz v4, :cond_8

    move v0, v2

    :goto_3
    goto :goto_0

    :cond_8
    move v0, v3

    goto :goto_3

    .line 413
    :cond_9
    const/16 v4, 0x9

    if-ne p0, v4, :cond_a

    .line 414
    invoke-static {}, Lcom/glu/android/GluEmbeddedPush;->getUserAPID()[B

    move-result-object v1

    goto :goto_1

    .line 415
    :cond_a
    const/16 v4, 0xa

    if-ne p0, v4, :cond_0

    .line 416
    invoke-static {}, Lcom/glu/android/GluEmbeddedPush;->didNotificationLaunchGame()Z

    move-result v4

    if-eqz v4, :cond_b

    move v0, v2

    :goto_4
    goto :goto_0

    :cond_b
    move v0, v3

    goto :goto_4

    .line 421
    :cond_c
    new-array v1, v2, [B

    int-to-byte v2, v0

    aput-byte v2, v1, v3

    .line 422
    .local v1, "ret":[B
    goto :goto_1
.end method

.method public static soundEvent(II[B)I
    .locals 3
    .param p0, "event"    # I
    .param p1, "iParam"    # I
    .param p2, "paramBA"    # [B

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 42
    sget-object v2, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    if-nez v2, :cond_2

    .line 43
    const-string v0, "javaSoundEvent() called with DeviceSound instance null."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    move v0, v1

    .line 67
    :cond_1
    :goto_1
    return v0

    .line 46
    :cond_2
    const/4 v2, 0x6

    if-ne p0, v2, :cond_4

    .line 48
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    if-nez v0, :cond_3

    .line 49
    const-string v0, "writeAudioData() called with DeviceSound instance null."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_3
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    invoke-virtual {v0, p2, p1}, Lcom/glu/android/DeviceSound;->writeAudioData([BI)V

    goto :goto_0

    .line 53
    :cond_4
    if-ne p0, v0, :cond_5

    .line 54
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    invoke-virtual {v0}, Lcom/glu/android/DeviceSound;->pause()V

    goto :goto_0

    .line 55
    :cond_5
    const/4 v2, 0x2

    if-ne p0, v2, :cond_6

    .line 56
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    invoke-virtual {v0}, Lcom/glu/android/DeviceSound;->resume()V

    goto :goto_0

    .line 57
    :cond_6
    const/4 v2, 0x3

    if-ne p0, v2, :cond_7

    .line 58
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    invoke-virtual {v0}, Lcom/glu/android/DeviceSound;->stop()V

    goto :goto_0

    .line 59
    :cond_7
    const/4 v2, 0x4

    if-ne p0, v2, :cond_8

    invoke-static {}, Lcom/glu/android/DeviceSound;->isOEMAudioPlaying()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 60
    sget-object v2, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    iput-boolean v0, v2, Lcom/glu/android/DeviceSound;->m_soundForcedByUser:Z

    goto :goto_0

    .line 61
    :cond_8
    const/4 v2, 0x5

    if-ne p0, v2, :cond_9

    .line 62
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    invoke-virtual {v0, p1}, Lcom/glu/android/DeviceSound;->setVolume(I)V

    goto :goto_0

    .line 63
    :cond_9
    const/4 v2, 0x7

    if-ne p0, v2, :cond_0

    .line 64
    invoke-static {}, Lcom/glu/android/DeviceSound;->isOEMAudioPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_1
.end method

.method public static systemEvent(II[B)I
    .locals 7
    .param p0, "event"    # I
    .param p1, "iParam"    # I
    .param p2, "paramBA"    # [B

    .prologue
    const/16 v6, 0xb

    const/16 v5, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 338
    if-ne p0, v2, :cond_2

    .line 339
    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v2}, Lcom/glu/android/GameLet;->onNativeDestroyed()V

    :cond_0
    :goto_0
    move v2, v3

    .line 391
    :cond_1
    :goto_1
    return v2

    .line 340
    :cond_2
    const/4 v4, 0x2

    if-ne p0, v4, :cond_3

    .line 341
    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v2}, Lcom/glu/android/GameLet;->queueDestroy()V

    goto :goto_0

    .line 342
    :cond_3
    const/4 v4, 0x3

    if-ne p0, v4, :cond_4

    .line 343
    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v2}, Lcom/glu/android/GameLet;->gameDisabledWakeLock()V

    goto :goto_0

    .line 344
    :cond_4
    const/4 v4, 0x4

    if-ne p0, v4, :cond_5

    .line 345
    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v2}, Lcom/glu/android/GameLet;->gameEnabledWakeLock()V

    goto :goto_0

    .line 346
    :cond_5
    const/4 v4, 0x5

    if-ne p0, v4, :cond_6

    .line 347
    sget-object v2, Lcom/glu/android/GameRenderer;->instance:Lcom/glu/android/GameRenderer;

    invoke-virtual {v2, p1}, Lcom/glu/android/GameRenderer;->updateTime(I)V

    goto :goto_0

    .line 348
    :cond_6
    const/4 v4, 0x6

    if-ne p0, v4, :cond_8

    .line 349
    if-ne p1, v2, :cond_7

    :goto_2
    invoke-static {v2}, Lcom/glu/android/GluUtil;->showKeyboard(Z)V

    goto :goto_0

    :cond_7
    move v2, v3

    goto :goto_2

    .line 350
    :cond_8
    const/4 v4, 0x7

    if-ne p0, v4, :cond_9

    .line 351
    invoke-static {}, Lcom/glu/android/GluUtil;->hideKeyboard()V

    goto :goto_0

    .line 352
    :cond_9
    const/16 v4, 0x8

    if-ne p0, v4, :cond_a

    .line 353
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Lcom/glu/android/GluUtil;->isResourceFile(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    goto :goto_1

    .line 354
    :cond_a
    const/16 v4, 0x9

    if-ne p0, v4, :cond_b

    .line 355
    invoke-static {}, Lcom/glu/android/GluUtil;->promptUserQuit()V

    goto :goto_0

    .line 356
    :cond_b
    if-ne p0, v5, :cond_c

    .line 357
    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v2}, Lcom/glu/android/GameLet;->upgradeLaunch()V

    goto :goto_0

    .line 358
    :cond_c
    const/16 v4, 0xf

    if-ne p0, v4, :cond_e

    .line 360
    if-ne p1, v2, :cond_d

    .line 361
    sget-object v4, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v4, v2}, Lcom/glu/android/GameLet;->forcedUpgradeLaunch(Z)V

    goto :goto_0

    .line 363
    :cond_d
    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v2, v3}, Lcom/glu/android/GameLet;->forcedUpgradeLaunch(Z)V

    goto :goto_0

    .line 365
    :cond_e
    if-ne p0, v6, :cond_f

    .line 366
    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v2}, Lcom/glu/android/GameLet;->moreGamesLaunch()V

    goto :goto_0

    .line 367
    :cond_f
    const/16 v4, 0xc

    if-ne p0, v4, :cond_10

    .line 368
    sget-object v4, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5, v3, v2}, Lcom/glu/android/GameLet;->platformRequest(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 369
    :cond_10
    const/16 v4, 0xd

    if-ne p0, v4, :cond_11

    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 372
    .local v0, "ret":J
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 373
    long-to-int v2, v0

    goto/16 :goto_1

    .line 375
    .end local v0    # "ret":J
    :cond_11
    const/16 v4, 0xe

    if-ne p0, v4, :cond_13

    .line 376
    sget-object v4, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    if-ne p1, v2, :cond_12

    :goto_3
    iput-boolean v2, v4, Lcom/glu/android/GameLet;->m_isInGame:Z

    goto/16 :goto_0

    :cond_12
    move v2, v3

    goto :goto_3

    .line 377
    :cond_13
    const/16 v4, 0x10

    if-ne p0, v4, :cond_14

    .line 378
    sget-object v2, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    invoke-virtual {v2, v5, p1}, Lcom/glu/android/GluCanvasOverlayGroup;->setVirtualButtonLocation(II)V

    goto/16 :goto_0

    .line 379
    :cond_14
    const/16 v4, 0x11

    if-ne p0, v4, :cond_15

    .line 380
    sget-object v2, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    invoke-virtual {v2, v6, p1}, Lcom/glu/android/GluCanvasOverlayGroup;->setVirtualButtonLocation(II)V

    goto/16 :goto_0

    .line 381
    :cond_15
    const/16 v4, 0x12

    if-ne p0, v4, :cond_16

    .line 382
    invoke-static {}, Lcom/glu/android/GluUtil;->isUserWakeLockOn()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    goto/16 :goto_1

    .line 383
    :cond_16
    const/16 v4, 0x13

    if-ne p0, v4, :cond_18

    .line 384
    if-ne p1, v2, :cond_17

    :goto_4
    invoke-static {v2}, Lcom/glu/android/GluUtil;->setUserWakeLock(Z)V

    goto/16 :goto_0

    :cond_17
    move v2, v3

    goto :goto_4

    .line 385
    :cond_18
    const/16 v4, 0x14

    if-ne p0, v4, :cond_1a

    .line 386
    sget-object v4, Lcom/glu/android/GluCursor;->instance:Lcom/glu/android/GluCursor;

    if-ne p1, v2, :cond_19

    :goto_5
    invoke-virtual {v4, v2}, Lcom/glu/android/GluCursor;->setActive(Z)V

    goto/16 :goto_0

    :cond_19
    move v2, v3

    goto :goto_5

    .line 387
    :cond_1a
    const/16 v4, 0x15

    if-ne p0, v4, :cond_1b

    .line 388
    sget-object v4, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v4}, Lcom/glu/android/GameLet;->isMoreGamesAvailable()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    goto/16 :goto_1

    .line 389
    :cond_1b
    const/16 v2, 0x17

    if-ne p0, v2, :cond_0

    .line 390
    invoke-static {}, Lcom/glu/android/GluUtil;->isNetworkAvailable()I

    move-result v2

    goto/16 :goto_1
.end method

.method public static tapjoyEvent(II[B[C)I
    .locals 4
    .param p0, "event"    # I
    .param p1, "iParam"    # I
    .param p2, "paramBA"    # [B
    .param p3, "paramCA"    # [C

    .prologue
    const/4 v3, 0x5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 449
    sget-object v2, Lcom/glu/android/GluTapjoy;->instance:Lcom/glu/android/GluTapjoy;

    invoke-virtual {v2}, Lcom/glu/android/GluTapjoy;->isInit()Z

    move-result v2

    if-nez v2, :cond_1

    if-eq p0, v3, :cond_1

    move v0, v1

    .line 491
    :cond_0
    :goto_0
    return v0

    .line 452
    :cond_1
    const/4 v2, -0x1

    if-ne p0, v2, :cond_3

    .line 453
    sget-object v0, Lcom/glu/android/GluTapjoy;->instance:Lcom/glu/android/GluTapjoy;

    invoke-virtual {v0, p1}, Lcom/glu/android/GluTapjoy;->debugGivePoints(I)V

    :cond_2
    :goto_1
    move v0, v1

    .line 491
    goto :goto_0

    .line 454
    :cond_3
    if-ne p0, v0, :cond_4

    .line 455
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->handlerDisplayTapjoyInterface()V

    goto :goto_1

    .line 456
    :cond_4
    const/4 v2, 0x2

    if-ne p0, v2, :cond_5

    .line 457
    sget-object v0, Lcom/glu/android/GluTapjoy;->instance:Lcom/glu/android/GluTapjoy;

    invoke-virtual {v0}, Lcom/glu/android/GluTapjoy;->closeInterface()V

    goto :goto_1

    .line 458
    :cond_5
    const/4 v2, 0x3

    if-ne p0, v2, :cond_6

    .line 459
    sget-object v0, Lcom/glu/android/GluTapjoy;->instance:Lcom/glu/android/GluTapjoy;

    invoke-virtual {v0}, Lcom/glu/android/GluTapjoy;->getTapjoyPoints()I

    move-result v0

    goto :goto_0

    .line 460
    :cond_6
    const/4 v2, 0x4

    if-ne p0, v2, :cond_7

    .line 461
    sget-object v2, Lcom/glu/android/GluTapjoy;->instance:Lcom/glu/android/GluTapjoy;

    invoke-virtual {v2, p1}, Lcom/glu/android/GluTapjoy;->consumeTapjoyPoints(I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 462
    :cond_7
    if-ne p0, v3, :cond_8

    .line 463
    sget-object v0, Lcom/glu/android/GluTapjoy;->instance:Lcom/glu/android/GluTapjoy;

    invoke-virtual {v0, p1}, Lcom/glu/android/GluTapjoy;->tick(I)V

    goto :goto_1

    .line 464
    :cond_8
    const/4 v2, 0x6

    if-ne p0, v2, :cond_9

    .line 465
    sget-object v2, Lcom/glu/android/GluTapjoy;->instance:Lcom/glu/android/GluTapjoy;

    invoke-virtual {v2}, Lcom/glu/android/GluTapjoy;->canDisplayInterface()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 466
    :cond_9
    const/4 v2, 0x7

    if-ne p0, v2, :cond_a

    .line 467
    sget-object v2, Lcom/glu/android/GluTapjoy;->instance:Lcom/glu/android/GluTapjoy;

    invoke-virtual {v2}, Lcom/glu/android/GluTapjoy;->isInterfaceOpen()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 468
    :cond_a
    const/16 v2, 0x8

    if-ne p0, v2, :cond_b

    .line 469
    sget-object v0, Lcom/glu/android/GluTapjoy;->instance:Lcom/glu/android/GluTapjoy;

    invoke-virtual {v0}, Lcom/glu/android/GluTapjoy;->getLastConsumed()I

    move-result v0

    goto :goto_0

    .line 470
    :cond_b
    const/16 v2, 0x9

    if-ne p0, v2, :cond_d

    .line 471
    sget-object v2, Lcom/glu/android/GluTapjoy;->instance:Lcom/glu/android/GluTapjoy;

    if-nez p1, :cond_c

    move v0, v1

    :cond_c
    invoke-virtual {v2, v0}, Lcom/glu/android/GluTapjoy;->handleResume(Z)V

    goto :goto_1

    .line 480
    :cond_d
    const/16 v2, 0xe

    if-ne p0, v2, :cond_e

    .line 481
    sget-object v2, Lcom/glu/android/GluTapjoy;->instance:Lcom/glu/android/GluTapjoy;

    invoke-virtual {v2}, Lcom/glu/android/GluTapjoy;->isInit()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 482
    :cond_e
    const/16 v2, 0xf

    if-ne p0, v2, :cond_f

    .line 483
    sget-object v0, Lcom/glu/android/GluTapjoy;->instance:Lcom/glu/android/GluTapjoy;

    invoke-virtual {v0}, Lcom/glu/android/GluTapjoy;->getLastPointTotal()I

    move-result v0

    goto/16 :goto_0

    .line 484
    :cond_f
    const/16 v2, 0x10

    if-ne p0, v2, :cond_10

    .line 485
    sget-object v0, Lcom/glu/android/GluTapjoy;->instance:Lcom/glu/android/GluTapjoy;

    invoke-virtual {v0}, Lcom/glu/android/GluTapjoy;->showFeaturedApp()V

    goto/16 :goto_1

    .line 486
    :cond_10
    const/16 v2, 0x11

    if-ne p0, v2, :cond_11

    .line 487
    sget-object v2, Lcom/glu/android/GluTapjoy;->instance:Lcom/glu/android/GluTapjoy;

    invoke-virtual {v2}, Lcom/glu/android/GluTapjoy;->isFeaturedAppReady()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 488
    :cond_11
    const/16 v0, 0x64

    if-lt p0, v0, :cond_2

    const/16 v0, 0xc7

    if-gt p0, v0, :cond_2

    .line 489
    sget-object v0, Lcom/glu/android/GluTapjoy;->instance:Lcom/glu/android/GluTapjoy;

    invoke-virtual {v0, p0}, Lcom/glu/android/GluTapjoy;->getFeaturedAppIntAttribute(I)I

    move-result v0

    goto/16 :goto_0
.end method

.method public static tapjoyGetString(I)[C
    .locals 4
    .param p0, "event"    # I

    .prologue
    const/4 v3, 0x0

    .line 428
    const/16 v1, 0xc8

    if-lt p0, v1, :cond_0

    const/16 v1, 0x12b

    if-le p0, v1, :cond_2

    .line 430
    :cond_0
    const/16 v1, 0x270f

    if-ne p0, v1, :cond_1

    .line 431
    const/4 v1, 0x1

    new-array v1, v1, [C

    .line 444
    :goto_0
    return-object v1

    .line 432
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: Invalid event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 435
    :cond_2
    sget-object v1, Lcom/glu/android/GluJNICallback;->sm_tapjoyReturnCA:[C

    if-nez v1, :cond_3

    .line 437
    const/16 v1, 0x7d1

    new-array v1, v1, [C

    sput-object v1, Lcom/glu/android/GluJNICallback;->sm_tapjoyReturnCA:[C

    .line 438
    sget-object v1, Lcom/glu/android/GluJNICallback;->sm_tapjoyReturnCA:[C

    invoke-static {v1}, Lcom/glu/android/GluUtil;->zero([C)V

    .line 441
    :cond_3
    sget-object v1, Lcom/glu/android/GluTapjoy;->instance:Lcom/glu/android/GluTapjoy;

    invoke-virtual {v1, p0}, Lcom/glu/android/GluTapjoy;->getFeaturedAppStringAttribute(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7d0

    invoke-static {v1, v2}, Lcom/glu/android/GluUtil;->stringToTruncatedNativeCharArray(Ljava/lang/String;I)[C

    move-result-object v0

    .line 442
    .local v0, "ret":[C
    sget-object v1, Lcom/glu/android/GluJNICallback;->sm_tapjoyReturnCA:[C

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 444
    sget-object v1, Lcom/glu/android/GluJNICallback;->sm_tapjoyReturnCA:[C

    goto :goto_0
.end method

.method public static vibrationEvent(II)V
    .locals 2
    .param p0, "play"    # I
    .param p1, "elapseMS"    # I

    .prologue
    .line 34
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    if-nez v0, :cond_0

    .line 35
    const-string v0, "vibrationEvent() called with DeviceSound instance null."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    sget-object v1, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0, p1}, Lcom/glu/android/DeviceSound;->vibrationEvent(ZI)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
