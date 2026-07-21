.class public Lcom/glu/android/GluAds;
.super Ljava/lang/Object;
.source "GluAds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/glu/android/GluAds$Spec;,
        Lcom/glu/android/GluAds$DummyAds;,
        Lcom/glu/android/GluAds$Abstraction;
    }
.end annotation


# static fields
.field public static final AD_ANCHOR_BOTTOM:I = 0x1

.field public static final AD_ANCHOR_TOP:I = 0x2

.field public static final AD_EVENT_ARE_ADS_DISABLED:I = 0xf

.field public static final AD_EVENT_DESTROY:I = 0x5

.field public static final AD_EVENT_DID_INTERSTITIAL_DISPLAY_SUCCESSFULLY:I = 0xa

.field public static final AD_EVENT_GET_AD_BANNER_HEIGHT:I = 0x10

.field public static final AD_EVENT_GET_AD_STATE:I = 0x6

.field public static final AD_EVENT_GET_WIDTH:I = 0x3

.field public static final AD_EVENT_INITIALIZE:I = 0x4

.field public static final AD_EVENT_IS_AD_WEB_BROWSER_OPEN:I = 0xb

.field public static final AD_EVENT_IS_INTERSTITIAL_FINISHED:I = 0x9

.field public static final AD_EVENT_IS_LOADING_TIMER_FINISHED:I = 0xd

.field public static final AD_EVENT_SET_ADS_DISABLED:I = 0xe

.field public static final AD_EVENT_SET_AD_ANCHOR:I = 0x13

.field public static final AD_EVENT_SET_AD_DELAY_TIMER:I = 0x11

.field public static final AD_EVENT_SET_AD_INTERPOLATION_TIMER:I = 0x12

.field public static final AD_EVENT_SET_AD_STATE:I = 0x7

.field public static final AD_EVENT_SET_BANNER_XY:I = 0x1

.field public static final AD_EVENT_SET_FULLSCREEN_XY:I = 0x2

.field public static final AD_EVENT_START_AD_LOADING_TIMER:I = 0xc

.field public static final AD_EVENT_TICK:I = 0x8

.field public static final AD_NETWORK_ADMARVEL:I = 0x2

.field public static final AD_NETWORK_ADMOB:I = 0x3

.field public static final AD_NETWORK_ADSENSE:I = 0x1

.field public static final AD_NETWORK_COUNT:I = 0x5

.field public static final AD_NETWORK_NONE:I = 0x0

.field public static final AD_NETWORK_TAPJOY_BANNER:I = 0x4

.field public static final AD_STATE_FETCH_BANNER:I = 0x2

.field public static final AD_STATE_FETCH_EXPANDABLE:I = 0x4

.field public static final AD_STATE_FETCH_FULLSCREEN:I = 0x6

.field public static final AD_STATE_HIDE:I = 0x1

.field public static final AD_STATE_INIT:I = 0x0

.field public static final AD_STATE_SHOW_BANNER:I = 0x3

.field public static final AD_STATE_SHOW_EXPANDABLE:I = 0x5

.field public static final AD_STATE_SHOW_FULLSCREEN:I = 0x7

.field private static final LOADING_TIMER:I = 0x1b58

.field private static instances:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/glu/android/GluAds$Abstraction;",
            ">;"
        }
    .end annotation
.end field

.field public static sm_adProviderSpecFromServerThread:Ljava/lang/Thread;

.field public static sm_adProviderUsageSpec:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/glu/android/GluAds$Spec;",
            ">;"
        }
    .end annotation
.end field

.field private static sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

.field private static sm_loadingTimer:I

.field private static sm_resViewAbstraction:Lcom/glu/android/GluAds$Abstraction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    sput-object v0, Lcom/glu/android/GluAds;->instances:Ljava/util/Vector;

    .line 62
    sput-object v0, Lcom/glu/android/GluAds;->sm_resViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    .line 63
    sput-object v0, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    .line 229
    sput-object v0, Lcom/glu/android/GluAds;->sm_adProviderUsageSpec:Ljava/util/Hashtable;

    .line 230
    sput-object v0, Lcom/glu/android/GluAds;->sm_adProviderSpecFromServerThread:Ljava/lang/Thread;

    .line 529
    const/4 v0, 0x0

    sput v0, Lcom/glu/android/GluAds;->sm_loadingTimer:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    return-void
.end method

.method public static adNetworkToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "network"    # I

    .prologue
    .line 210
    packed-switch p0, :pswitch_data_0

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 213
    :pswitch_0
    const-string v0, "AD_NETWORK_NONE"

    goto :goto_0

    .line 215
    :pswitch_1
    const-string v0, "AD_NETWORK_ADSENSE"

    goto :goto_0

    .line 217
    :pswitch_2
    const-string v0, "AD_NETWORK_ADMARVEL"

    goto :goto_0

    .line 219
    :pswitch_3
    const-string v0, "AD_NETWORK_ADMOB"

    goto :goto_0

    .line 221
    :pswitch_4
    const-string v0, "AD_NETWORK_TAPJOY_BANNER"

    goto :goto_0

    .line 223
    :pswitch_5
    const-string v0, "AD_NETWORK_COUNT (problem!)"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static adSenseKeywordsToString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 152
    const-string v1, ""

    .line 153
    .local v1, "ret":Ljava/lang/String;
    sget-object v2, Lcom/glu/android/ModuleSettings;->ADVERTISING_GAME_SPECIFIC_KEYWORDS:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/glu/android/ModuleSettings;->ADVERTISING_GAME_SPECIFIC_KEYWORDS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 157
    if-lez v0, :cond_0

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/glu/android/ModuleSettings;->ADVERTISING_GAME_SPECIFIC_KEYWORDS:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, ","

    const-string v5, " "

    invoke-static {v3, v4, v5}, Lcom/glu/android/GluUtil;->replaceAllNotRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_0
    sget-object v2, Lcom/glu/android/ModuleSettings;->ADVERTISING_GAME_SPECIFIC_KEYWORDS:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, ","

    const-string v4, " "

    invoke-static {v2, v3, v4}, Lcom/glu/android/GluUtil;->replaceAllNotRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 164
    .end local v0    # "i":I
    :cond_1
    return-object v1
.end method

.method public static adSenseKeywordsToStringVector()Ljava/util/Vector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 170
    .local v3, "ret":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    sget-object v4, Lcom/glu/android/ModuleSettings;->ADVERTISING_GAME_SPECIFIC_KEYWORDS:[Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 172
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/glu/android/ModuleSettings;->ADVERTISING_GAME_SPECIFIC_KEYWORDS:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 174
    sget-object v4, Lcom/glu/android/ModuleSettings;->ADVERTISING_GAME_SPECIFIC_KEYWORDS:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string v5, ","

    invoke-static {v4, v5}, Lcom/glu/android/GluUtil;->simpleTokenizer(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    .line 175
    .local v2, "keywords":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 176
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "+"

    const-string v6, " "

    invoke-static {v4, v5, v6}, Lcom/glu/android/GluUtil;->replaceAllNotRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 172
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "keywords":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_1
    return-object v3
.end method

.method public static adStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 185
    packed-switch p0, :pswitch_data_0

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 188
    :pswitch_0
    const-string v0, "AD_STATE_INIT"

    goto :goto_0

    .line 190
    :pswitch_1
    const-string v0, "AD_STATE_HIDE"

    goto :goto_0

    .line 192
    :pswitch_2
    const-string v0, "AD_STATE_FETCH_BANNER"

    goto :goto_0

    .line 194
    :pswitch_3
    const-string v0, "AD_STATE_SHOW_BANNER"

    goto :goto_0

    .line 196
    :pswitch_4
    const-string v0, "AD_STATE_FETCH_EXPANDABLE"

    goto :goto_0

    .line 198
    :pswitch_5
    const-string v0, "AD_STATE_SHOW_EXPANDABLE"

    goto :goto_0

    .line 200
    :pswitch_6
    const-string v0, "AD_STATE_FETCH_FULLSCREEN"

    goto :goto_0

    .line 202
    :pswitch_7
    const-string v0, "AD_STATE_SHOW_FULLSCREEN"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static adWebBrowserIsOpen()Z
    .locals 1

    .prologue
    .line 424
    sget-object v0, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v0}, Lcom/glu/android/GluAds$Abstraction;->adWebBrowserIsOpen()Z

    move-result v0

    return v0
.end method

.method public static areAdsDisabled()Z
    .locals 1

    .prologue
    .line 426
    sget-object v0, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v0}, Lcom/glu/android/GluAds$Abstraction;->areAdsDisabled()Z

    move-result v0

    return v0
.end method

.method public static copyAdProviderSpec(Ljava/util/Hashtable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/glu/android/GluAds$Spec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "newSpec":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/glu/android/GluAds$Spec;>;"
    const/4 v6, 0x0

    .line 322
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    sput-object v7, Lcom/glu/android/GluAds;->sm_adProviderUsageSpec:Ljava/util/Hashtable;

    .line 324
    const/4 v5, 0x0

    .line 325
    .local v5, "totalPercent":I
    const/4 v3, 0x0

    .line 328
    .local v3, "preferredAlready":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v7, 0x5

    if-ge v2, v7, :cond_5

    .line 330
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/glu/android/GluAds$Spec;

    .line 331
    .local v4, "spec":Lcom/glu/android/GluAds$Spec;
    const/4 v0, 0x0

    .line 332
    .local v0, "copySpec":Lcom/glu/android/GluAds$Spec;
    if-nez v4, :cond_3

    .line 333
    new-instance v0, Lcom/glu/android/GluAds$Spec;

    .end local v0    # "copySpec":Lcom/glu/android/GluAds$Spec;
    invoke-direct {v0, v6, v6}, Lcom/glu/android/GluAds$Spec;-><init>(IZ)V

    .line 338
    .restart local v0    # "copySpec":Lcom/glu/android/GluAds$Spec;
    :goto_1
    iget-boolean v7, v0, Lcom/glu/android/GluAds$Spec;->preferred:Z

    if-eqz v7, :cond_0

    if-eqz v3, :cond_0

    .line 340
    iput-boolean v6, v0, Lcom/glu/android/GluAds$Spec;->preferred:Z

    .line 341
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/glu/android/GluAds;->adNetworkToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cannot be a preferred network. Something else already is."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 343
    :cond_0
    if-nez v3, :cond_1

    iget-boolean v7, v0, Lcom/glu/android/GluAds$Spec;->preferred:Z

    if-eqz v7, :cond_4

    :cond_1
    const/4 v3, 0x1

    .line 344
    :goto_2
    iget v7, v0, Lcom/glu/android/GluAds$Spec;->percent:I

    add-int/2addr v7, v5

    const/16 v8, 0x64

    if-le v7, v8, :cond_2

    .line 346
    rsub-int/lit8 v1, v5, 0x64

    .line 347
    .local v1, "fixedPct":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Percentages add up to more than 100. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Lcom/glu/android/GluAds;->adNetworkToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/glu/android/GluAds$Spec;->percent:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") will be cut to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 348
    iput v1, v0, Lcom/glu/android/GluAds$Spec;->percent:I

    .line 350
    .end local v1    # "fixedPct":I
    :cond_2
    iget v7, v0, Lcom/glu/android/GluAds$Spec;->percent:I

    add-int/2addr v5, v7

    .line 352
    sget-object v7, Lcom/glu/android/GluAds;->sm_adProviderUsageSpec:Ljava/util/Hashtable;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 335
    :cond_3
    new-instance v0, Lcom/glu/android/GluAds$Spec;

    .end local v0    # "copySpec":Lcom/glu/android/GluAds$Spec;
    iget v7, v4, Lcom/glu/android/GluAds$Spec;->percent:I

    iget-boolean v8, v4, Lcom/glu/android/GluAds$Spec;->preferred:Z

    invoke-direct {v0, v7, v8}, Lcom/glu/android/GluAds$Spec;-><init>(IZ)V

    .restart local v0    # "copySpec":Lcom/glu/android/GluAds$Spec;
    goto :goto_1

    :cond_4
    move v3, v6

    .line 343
    goto :goto_2

    .line 354
    .end local v0    # "copySpec":Lcom/glu/android/GluAds$Spec;
    .end local v4    # "spec":Lcom/glu/android/GluAds$Spec;
    :cond_5
    return-void
.end method

.method public static createGameViewAds()V
    .locals 1

    .prologue
    .line 406
    sget-object v0, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v0}, Lcom/glu/android/GluAds$Abstraction;->createGameViewAds()V

    return-void
.end method

.method public static createResViewAds()V
    .locals 1

    .prologue
    .line 405
    sget-object v0, Lcom/glu/android/GluAds;->sm_resViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v0}, Lcom/glu/android/GluAds$Abstraction;->createResViewAds()V

    return-void
.end method

.method public static destroyInstance()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 310
    sget-object v0, Lcom/glu/android/GluAds;->instances:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 311
    sget-object v0, Lcom/glu/android/GluAds;->instances:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 312
    :cond_0
    sput-object v1, Lcom/glu/android/GluAds;->instances:Ljava/util/Vector;

    .line 313
    sput-object v1, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    .line 314
    sput-object v1, Lcom/glu/android/GluAds;->sm_resViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    .line 315
    sput-object v1, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    .line 316
    sput-object v1, Lcom/glu/android/GluAds;->sm_adProviderUsageSpec:Ljava/util/Hashtable;

    .line 317
    sput-object v1, Lcom/glu/android/GluAds;->sm_adProviderSpecFromServerThread:Ljava/lang/Thread;

    .line 318
    return-void
.end method

.method public static didInterstitialDisplaySuccessfully()Z
    .locals 1

    .prologue
    .line 423
    sget-object v0, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v0}, Lcom/glu/android/GluAds$Abstraction;->didInterstitialDisplaySuccessfully()Z

    move-result v0

    return v0
.end method

.method public static getAdBannerHeight()I
    .locals 1

    .prologue
    .line 427
    sget-object v0, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v0}, Lcom/glu/android/GluAds$Abstraction;->getAdBannerHeight()I

    move-result v0

    return v0
.end method

.method public static getAdState(I)I
    .locals 1
    .param p0, "accountForBannerVisibility"    # I

    .prologue
    .line 421
    sget-object v0, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v0, p0}, Lcom/glu/android/GluAds$Abstraction;->getAdState(I)I

    move-result v0

    return v0
.end method

.method public static getAdWidth()I
    .locals 1

    .prologue
    .line 419
    sget-object v0, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v0}, Lcom/glu/android/GluAds$Abstraction;->getAdWidth()I

    move-result v0

    return v0
.end method

.method public static getLargeInGameAdView()Landroid/view/View;
    .locals 1

    .prologue
    .line 408
    sget-object v0, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v0}, Lcom/glu/android/GluAds$Abstraction;->getLargeInGameAdView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static getResDLAdView()Landroid/view/View;
    .locals 1

    .prologue
    .line 409
    sget-object v0, Lcom/glu/android/GluAds;->sm_resViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v0}, Lcom/glu/android/GluAds$Abstraction;->getResDLAdView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static getResDLAdViewHeight()I
    .locals 1

    .prologue
    .line 411
    sget-object v0, Lcom/glu/android/GluAds;->sm_resViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v0}, Lcom/glu/android/GluAds$Abstraction;->getResDLAdViewHeight()I

    move-result v0

    return v0
.end method

.method public static getResDLAdViewWidth()I
    .locals 1

    .prologue
    .line 410
    sget-object v0, Lcom/glu/android/GluAds;->sm_resViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v0}, Lcom/glu/android/GluAds$Abstraction;->getResDLAdViewWidth()I

    move-result v0

    return v0
.end method

.method public static getSmallInGameAdView()Landroid/view/View;
    .locals 1

    .prologue
    .line 407
    sget-object v0, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v0}, Lcom/glu/android/GluAds$Abstraction;->getSmallInGameAdView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static handledSetAdState(I)V
    .locals 1
    .param p0, "newState"    # I

    .prologue
    .line 497
    sget-object v0, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    if-nez v0, :cond_0

    .line 498
    sget-object v0, Lcom/glu/android/GluAds;->sm_resViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v0, p0}, Lcom/glu/android/GluAds$Abstraction;->handledSetAdState(I)V

    .line 501
    :goto_0
    return-void

    .line 500
    :cond_0
    sget-object v0, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v0, p0}, Lcom/glu/android/GluAds$Abstraction;->handledSetAdState(I)V

    goto :goto_0
.end method

.method public static handledShowLargeAd()V
    .locals 1

    .prologue
    .line 413
    sget-object v0, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v0}, Lcom/glu/android/GluAds$Abstraction;->handledShowLargeAd()V

    return-void
.end method

.method public static handledShowSmallAd()V
    .locals 1

    .prologue
    .line 412
    sget-object v0, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v0}, Lcom/glu/android/GluAds$Abstraction;->handledShowSmallAd()V

    return-void
.end method

.method public static initializeInstance()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 233
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    sput-object v3, Lcom/glu/android/GluAds;->instances:Ljava/util/Vector;

    .line 234
    new-instance v1, Lcom/glu/android/GluAds$DummyAds;

    invoke-direct {v1}, Lcom/glu/android/GluAds$DummyAds;-><init>()V

    .line 236
    .local v1, "dummyView":Lcom/glu/android/GluAds$DummyAds;
    const/4 v0, 0x0

    .line 237
    .local v0, "dummyAdCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_4

    .line 239
    sget-boolean v3, Lcom/glu/android/Settings;->ADSENSE:Z

    if-eqz v3, :cond_0

    if-ne v2, v6, :cond_0

    .line 241
    sget-object v3, Lcom/glu/android/GluAds;->instances:Ljava/util/Vector;

    new-instance v4, Lcom/glu/android/GluAdSense;

    invoke-direct {v4}, Lcom/glu/android/GluAdSense;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 237
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    :cond_0
    sget-boolean v3, Lcom/glu/android/Settings;->ADMARVEL:Z

    if-eqz v3, :cond_1

    if-ne v2, v8, :cond_1

    .line 245
    sget-object v3, Lcom/glu/android/GluAds;->instances:Ljava/util/Vector;

    new-instance v4, Lcom/glu/android/GluAdMarvel;

    invoke-direct {v4}, Lcom/glu/android/GluAdMarvel;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 247
    :cond_1
    sget-boolean v3, Lcom/glu/android/Settings;->ADMOB:Z

    if-eqz v3, :cond_2

    if-ne v2, v7, :cond_2

    .line 249
    sget-object v3, Lcom/glu/android/GluAds;->instances:Ljava/util/Vector;

    new-instance v4, Lcom/glu/android/GluAdMob;

    invoke-direct {v4}, Lcom/glu/android/GluAdMob;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 251
    :cond_2
    sget-boolean v3, Lcom/glu/android/Settings;->TAPJOY_ENABLED:Z

    if-eqz v3, :cond_3

    if-ne v2, v9, :cond_3

    .line 253
    sget-object v3, Lcom/glu/android/GluAds;->instances:Ljava/util/Vector;

    new-instance v4, Lcom/glu/android/FeaturedAppAd;

    invoke-direct {v4}, Lcom/glu/android/FeaturedAppAd;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 257
    :cond_3
    sget-object v3, Lcom/glu/android/GluAds;->instances:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 266
    :cond_4
    sget-boolean v3, Lcom/glu/android/Settings;->ADMOB:Z

    if-eqz v3, :cond_6

    .line 267
    sget-object v3, Lcom/glu/android/GluAds;->instances:Ljava/util/Vector;

    invoke-virtual {v3, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/glu/android/GluAds$Abstraction;

    sput-object v3, Lcom/glu/android/GluAds;->sm_resViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    .line 273
    :goto_2
    sget-boolean v3, Lcom/glu/android/Settings;->ADSENSE:Z

    if-eqz v3, :cond_8

    sget-boolean v3, Lcom/glu/android/Settings;->ADMARVEL:Z

    if-nez v3, :cond_8

    .line 274
    sget-object v3, Lcom/glu/android/GluAds;->instances:Ljava/util/Vector;

    invoke-virtual {v3, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/glu/android/GluAds$Abstraction;

    sput-object v3, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    .line 284
    :goto_3
    sget-object v3, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    sget-object v4, Lcom/glu/android/GluAds;->instances:Ljava/util/Vector;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_5

    sget-object v3, Lcom/glu/android/GluAds;->sm_resViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    sget-object v4, Lcom/glu/android/GluAds;->instances:Ljava/util/Vector;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_5

    .line 285
    sput-boolean v5, Lcom/glu/android/Settings;->ADS_ENABLED:Z

    .line 288
    :cond_5
    const-string v3, "Setting up the default ad provider spec."

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 289
    sget-object v3, Lcom/glu/android/ModuleSettings;->DEFAULT_AD_PROVIDER_USAGE_SPEC:Ljava/util/Hashtable;

    invoke-static {v3}, Lcom/glu/android/GluAds;->copyAdProviderSpec(Ljava/util/Hashtable;)V

    .line 292
    new-instance v3, Lcom/glu/android/GluAds$1;

    invoke-direct {v3}, Lcom/glu/android/GluAds$1;-><init>()V

    sput-object v3, Lcom/glu/android/GluAds;->sm_adProviderSpecFromServerThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 306
    return-void

    .line 268
    :cond_6
    sget-boolean v3, Lcom/glu/android/Settings;->ADSENSE:Z

    if-eqz v3, :cond_7

    .line 269
    sget-object v3, Lcom/glu/android/GluAds;->instances:Ljava/util/Vector;

    invoke-virtual {v3, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/glu/android/GluAds$Abstraction;

    sput-object v3, Lcom/glu/android/GluAds;->sm_resViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    goto :goto_2

    .line 271
    :cond_7
    sget-object v3, Lcom/glu/android/GluAds;->instances:Ljava/util/Vector;

    invoke-virtual {v3, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/glu/android/GluAds$Abstraction;

    sput-object v3, Lcom/glu/android/GluAds;->sm_resViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    goto :goto_2

    .line 275
    :cond_8
    sget-boolean v3, Lcom/glu/android/Settings;->ADMOB:Z

    if-eqz v3, :cond_9

    .line 276
    sget-object v3, Lcom/glu/android/GluAds;->instances:Ljava/util/Vector;

    invoke-virtual {v3, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/glu/android/GluAds$Abstraction;

    sput-object v3, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    goto :goto_3

    .line 277
    :cond_9
    sget-boolean v3, Lcom/glu/android/Settings;->ADMARVEL:Z

    if-eqz v3, :cond_a

    .line 278
    sget-object v3, Lcom/glu/android/GluAds;->instances:Ljava/util/Vector;

    invoke-virtual {v3, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/glu/android/GluAds$Abstraction;

    sput-object v3, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    goto :goto_3

    .line 279
    :cond_a
    sget-boolean v3, Lcom/glu/android/Settings;->TAPJOY_ENABLED:Z

    if-eqz v3, :cond_b

    .line 280
    sget-object v3, Lcom/glu/android/GluAds;->instances:Ljava/util/Vector;

    invoke-virtual {v3, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/glu/android/GluAds$Abstraction;

    sput-object v3, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    goto :goto_3

    .line 282
    :cond_b
    sget-object v3, Lcom/glu/android/GluAds;->instances:Ljava/util/Vector;

    invoke-virtual {v3, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/glu/android/GluAds$Abstraction;

    sput-object v3, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    goto :goto_3
.end method

.method public static isInterstitialFinished()Z
    .locals 1

    .prologue
    .line 422
    sget-object v0, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v0}, Lcom/glu/android/GluAds$Abstraction;->isInterstitialFinished()Z

    move-result v0

    return v0
.end method

.method public static isLoadingTimerFinished()Z
    .locals 1

    .prologue
    .line 539
    sget v0, Lcom/glu/android/GluAds;->sm_loadingTimer:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isResAdViewSupported()Z
    .locals 1

    .prologue
    .line 414
    sget-object v0, Lcom/glu/android/GluAds;->sm_resViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v0}, Lcom/glu/android/GluAds$Abstraction;->isResAdViewSupported()Z

    move-result v0

    return v0
.end method

.method public static nativeInitialize()V
    .locals 1

    .prologue
    .line 420
    sget-object v0, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v0}, Lcom/glu/android/GluAds$Abstraction;->nativeInitialize()V

    return-void
.end method

.method public static onAppStart()V
    .locals 1

    .prologue
    .line 401
    sget-object v0, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v0}, Lcom/glu/android/GluAds$Abstraction;->onAppStart()V

    return-void
.end method

.method public static onAppStop()V
    .locals 1

    .prologue
    .line 402
    sget-object v0, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v0}, Lcom/glu/android/GluAds$Abstraction;->onAppStop()V

    return-void
.end method

.method public static setAdAnchor(I)V
    .locals 1
    .param p0, "anchor"    # I

    .prologue
    .line 430
    sget-object v0, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v0, p0}, Lcom/glu/android/GluAds$Abstraction;->setAdAnchor(I)V

    return-void
.end method

.method public static setAdDelayTimer(I)V
    .locals 1
    .param p0, "timer"    # I

    .prologue
    .line 428
    sget-object v0, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v0, p0}, Lcom/glu/android/GluAds$Abstraction;->setAdDelayTimer(I)V

    return-void
.end method

.method public static setAdInterpolationTimer(I)V
    .locals 1
    .param p0, "timer"    # I

    .prologue
    .line 429
    sget-object v0, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v0, p0}, Lcom/glu/android/GluAds$Abstraction;->setAdInterpolationTimer(I)V

    return-void
.end method

.method public static setAdState(I)V
    .locals 1
    .param p0, "newState"    # I

    .prologue
    .line 490
    sget-object v0, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    if-nez v0, :cond_0

    .line 491
    sget-object v0, Lcom/glu/android/GluAds;->sm_resViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v0, p0}, Lcom/glu/android/GluAds$Abstraction;->setAdState(I)V

    .line 494
    :goto_0
    return-void

    .line 493
    :cond_0
    sget-object v0, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v0, p0}, Lcom/glu/android/GluAds$Abstraction;->setAdState(I)V

    goto :goto_0
.end method

.method public static setAdsDisabled(I)V
    .locals 1
    .param p0, "disabled"    # I

    .prologue
    .line 425
    sget-object v0, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v0, p0}, Lcom/glu/android/GluAds$Abstraction;->setAdsDisabled(I)V

    return-void
.end method

.method public static setBannerXY(I)V
    .locals 1
    .param p0, "xy"    # I

    .prologue
    .line 417
    sget-object v0, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v0, p0}, Lcom/glu/android/GluAds$Abstraction;->setBannerXY(I)V

    return-void
.end method

.method public static setFullscreenXY(I)V
    .locals 1
    .param p0, "xy"    # I

    .prologue
    .line 418
    sget-object v0, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v0, p0}, Lcom/glu/android/GluAds$Abstraction;->setFullscreenXY(I)V

    return-void
.end method

.method public static startLoadingTimer(I)V
    .locals 0
    .param p0, "timer"    # I

    .prologue
    .line 532
    if-gtz p0, :cond_0

    .line 533
    const/16 p0, 0x1b58

    .line 535
    :cond_0
    sput p0, Lcom/glu/android/GluAds;->sm_loadingTimer:I

    .line 536
    return-void
.end method

.method private static switchToAdProvider(I)V
    .locals 6
    .param p0, "providerIdx"    # I

    .prologue
    const/4 v5, 0x1

    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchToAdProvider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/glu/android/GluAds;->adNetworkToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 508
    const/4 v2, 0x4

    if-ne p0, v2, :cond_0

    .line 509
    sget-object v2, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    invoke-virtual {v2}, Lcom/glu/android/FeaturedAppAd;->startAdTimer()V

    .line 511
    :cond_0
    sget-object v1, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    .line 512
    .local v1, "oldAdAbstraction":Lcom/glu/android/GluAds$Abstraction;
    sget-object v2, Lcom/glu/android/GluAds;->instances:Ljava/util/Vector;

    invoke-virtual {v2, p0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glu/android/GluAds$Abstraction;

    .line 513
    .local v0, "newAdAbstraction":Lcom/glu/android/GluAds$Abstraction;
    sget-object v2, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    invoke-virtual {v0}, Lcom/glu/android/GluAds$Abstraction;->getSmallInGameAdView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/glu/android/GluCanvasOverlayGroup;->changeTrueView(ILandroid/view/View;)V

    .line 514
    sget-object v2, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    invoke-virtual {v0}, Lcom/glu/android/GluAds$Abstraction;->getAdWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/glu/android/GluAds$Abstraction;->getAdBannerHeight()I

    move-result v4

    invoke-virtual {v2, v5, v3, v4}, Lcom/glu/android/GluCanvasOverlayGroup;->setViewWH(III)V

    .line 516
    sput-object v0, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    .line 519
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/glu/android/GluAds$Abstraction;->getAdState(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/glu/android/GluAds$Abstraction;->setAdState(I)V

    .line 520
    iget v2, v1, Lcom/glu/android/GluAds$Abstraction;->m_delayTimer:I

    iput v2, v0, Lcom/glu/android/GluAds$Abstraction;->m_delayTimer:I

    .line 521
    iget v2, v1, Lcom/glu/android/GluAds$Abstraction;->m_pendingAdState:I

    iput v2, v0, Lcom/glu/android/GluAds$Abstraction;->m_pendingAdState:I

    .line 522
    iget v2, v1, Lcom/glu/android/GluAds$Abstraction;->m_interpolationTimer:I

    iput v2, v0, Lcom/glu/android/GluAds$Abstraction;->m_interpolationTimer:I

    .line 523
    iget v2, v1, Lcom/glu/android/GluAds$Abstraction;->m_adAnchor:I

    iput v2, v0, Lcom/glu/android/GluAds$Abstraction;->m_adAnchor:I

    .line 524
    return-void
.end method

.method public static tick(I)I
    .locals 8
    .param p0, "deltaMS"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x5

    .line 435
    sget v4, Lcom/glu/android/GluAds;->sm_loadingTimer:I

    if-lez v4, :cond_0

    .line 436
    sget v4, Lcom/glu/android/GluAds;->sm_loadingTimer:I

    sub-int/2addr v4, p0

    sput v4, Lcom/glu/android/GluAds;->sm_loadingTimer:I

    .line 438
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 439
    sget-object v4, Lcom/glu/android/GluAds;->instances:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v4, p0}, Lcom/glu/android/GluAds$Abstraction;->tick(I)I

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    :cond_1
    sget-object v4, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    if-eqz v4, :cond_6

    .line 445
    const/4 v2, -0x1

    .line 446
    .local v2, "preferredId":I
    const/4 v0, -0x1

    .line 447
    .local v0, "currentId":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_4

    .line 449
    sget-object v4, Lcom/glu/android/GluAds;->sm_adProviderUsageSpec:Ljava/util/Hashtable;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/glu/android/GluAds$Spec;

    .line 450
    .local v3, "spec":Lcom/glu/android/GluAds$Spec;
    iget-boolean v4, v3, Lcom/glu/android/GluAds$Spec;->preferred:Z

    if-eqz v4, :cond_2

    .line 451
    move v2, v1

    .line 452
    :cond_2
    sget-object v4, Lcom/glu/android/GluAds;->instances:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/glu/android/GluAds;->sm_gameViewAbstraction:Lcom/glu/android/GluAds$Abstraction;

    if-ne v4, v5, :cond_3

    .line 453
    move v0, v1

    .line 447
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 456
    .end local v3    # "spec":Lcom/glu/android/GluAds$Spec;
    :cond_4
    if-eq v2, v0, :cond_5

    if-eq v2, v7, :cond_5

    .line 458
    sget-object v4, Lcom/glu/android/GluAds;->instances:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v4}, Lcom/glu/android/GluAds$Abstraction;->canAdsBeFilled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 460
    move v0, v2

    .line 461
    invoke-static {v0}, Lcom/glu/android/GluAds;->switchToAdProvider(I)V

    .line 465
    :cond_5
    if-ne v0, v7, :cond_7

    .line 466
    const-string v4, "Sanity issue: Current ad provider ID is -1"

    invoke-static {v4}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 482
    .end local v0    # "currentId":I
    .end local v2    # "preferredId":I
    :cond_6
    :goto_2
    const/4 v4, 0x1

    return v4

    .line 467
    .restart local v0    # "currentId":I
    .restart local v2    # "preferredId":I
    :cond_7
    sget-object v4, Lcom/glu/android/GluAds;->instances:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v4}, Lcom/glu/android/GluAds$Abstraction;->canAdsBeFilled()Z

    move-result v4

    if-nez v4, :cond_6

    .line 469
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v6, :cond_6

    .line 471
    sget-object v4, Lcom/glu/android/GluAds;->sm_adProviderUsageSpec:Ljava/util/Hashtable;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/glu/android/GluAds$Spec;

    iget v4, v4, Lcom/glu/android/GluAds$Spec;->percent:I

    if-lez v4, :cond_8

    sget-object v4, Lcom/glu/android/GluAds;->instances:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/glu/android/GluAds$Abstraction;

    invoke-virtual {v4}, Lcom/glu/android/GluAds$Abstraction;->canAdsBeFilled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 473
    move v0, v1

    .line 474
    invoke-static {v0}, Lcom/glu/android/GluAds;->switchToAdProvider(I)V

    goto :goto_2

    .line 469
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method
