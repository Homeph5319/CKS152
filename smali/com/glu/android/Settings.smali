.class public Lcom/glu/android/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field public static ADMARVEL:Z = false

.field public static ADMOB:Z = false

.field public static ADSENSE:Z = false

.field public static ADS_ENABLED:Z = false

.field public static AMAZON_BUILD:Z = false

.field public static ATT_BUILD:Z = false

.field public static BANGO_ENABLED:Z = false

.field public static BOKU_ENABLED:Z = false

.field public static BUILD_VARIANT:I = 0x0

.field public static DEMO_ENABLED:Z = false

.field public static FLURRY_DISABLED:Z = false

.field public static GLOBALNAV_DISABLED:Z = false

.field public static MARKET_ENABLED:Z = false

.field public static NO_SD_BACKUP:Z = false

.field public static ONLINE_PLAY_DISABLED:Z = true

.field public static OPENFEINT:Z = false

.field public static PAYPAL_ENABLED:Z = false

.field public static PUSH_ENABLED:Z = false

.field public static SPRINT_BUILD:Z = false

.field public static TAPJOY_ENABLED:Z = false

.field public static TELUS_BUILD:Z = false

.field public static TEST_IAP_ENABLED:Z = false

.field public static TEST_TAPJOY_ENABLED:Z = false

.field public static TMOBILE_BUILD:Z = false

.field public static final VARIANT_AMAZON:I = 0x2

.field public static final VARIANT_MARKET:I = 0x0

.field public static final VARIANT_VERIZON:I = 0x1

.field public static VERIZON_BUILD:Z

.field public static VERIZON_IAP_ENABLED:Z

.field public static VODAFONE_IAP_ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 12
    sput v0, Lcom/glu/android/Settings;->BUILD_VARIANT:I

    .line 14
    sput-boolean v1, Lcom/glu/android/Settings;->TAPJOY_ENABLED:Z

    .line 15
    sput-boolean v1, Lcom/glu/android/Settings;->MARKET_ENABLED:Z

    .line 16
    sput-boolean v0, Lcom/glu/android/Settings;->ADS_ENABLED:Z

    .line 17
    sput-boolean v0, Lcom/glu/android/Settings;->DEMO_ENABLED:Z

    .line 18
    sput-boolean v0, Lcom/glu/android/Settings;->VERIZON_BUILD:Z

    .line 19
    sput-boolean v0, Lcom/glu/android/Settings;->AMAZON_BUILD:Z

    .line 20
    sput-boolean v0, Lcom/glu/android/Settings;->ONLINE_PLAY_DISABLED:Z

    .line 21
    sput-boolean v0, Lcom/glu/android/Settings;->ATT_BUILD:Z

    .line 22
    sput-boolean v0, Lcom/glu/android/Settings;->SPRINT_BUILD:Z

    .line 23
    sput-boolean v0, Lcom/glu/android/Settings;->TMOBILE_BUILD:Z

    .line 24
    sput-boolean v0, Lcom/glu/android/Settings;->TELUS_BUILD:Z

    .line 25
    sput-boolean v0, Lcom/glu/android/Settings;->BOKU_ENABLED:Z

    .line 26
    sput-boolean v0, Lcom/glu/android/Settings;->BANGO_ENABLED:Z

    .line 27
    sput-boolean v0, Lcom/glu/android/Settings;->VERIZON_IAP_ENABLED:Z

    .line 28
    sput-boolean v0, Lcom/glu/android/Settings;->VODAFONE_IAP_ENABLED:Z

    .line 29
    sput-boolean v0, Lcom/glu/android/Settings;->TEST_IAP_ENABLED:Z

    .line 30
    sput-boolean v0, Lcom/glu/android/Settings;->TEST_TAPJOY_ENABLED:Z

    .line 31
    sput-boolean v1, Lcom/glu/android/Settings;->PAYPAL_ENABLED:Z

    .line 32
    sput-boolean v1, Lcom/glu/android/Settings;->OPENFEINT:Z

    .line 33
    sput-boolean v1, Lcom/glu/android/Settings;->PUSH_ENABLED:Z

    .line 34
    sput-boolean v0, Lcom/glu/android/Settings;->ADSENSE:Z

    .line 35
    sput-boolean v0, Lcom/glu/android/Settings;->ADMARVEL:Z

    .line 36
    sput-boolean v0, Lcom/glu/android/Settings;->ADMOB:Z

    .line 37
    sput-boolean v0, Lcom/glu/android/Settings;->GLOBALNAV_DISABLED:Z

    .line 38
    sput-boolean v0, Lcom/glu/android/Settings;->FLURRY_DISABLED:Z

    .line 40
    sput-boolean v1, Lcom/glu/android/Settings;->NO_SD_BACKUP:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static determineSettingsFromPropertiesFile()V
    .locals 4

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "bestProperties":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    if-eqz v2, :cond_1

    .line 61
    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v0, v2, Lcom/glu/android/GameLet;->m_nativeProperties:Lcom/glu/android/CaseInsensitiveHash;

    .line 64
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 66
    const-string v2, "No context for settings."

    invoke-static {v2}, Lcom/glu/android/Debug;->logSafe(Ljava/lang/String;)V

    .line 140
    :goto_1
    return-void

    .line 62
    :cond_1
    sget-object v2, Lcom/glu/android/GluApplication;->instance:Lcom/glu/android/GluApplication;

    if-eqz v2, :cond_0

    .line 63
    sget-object v2, Lcom/glu/android/GluApplication;->instance:Lcom/glu/android/GluApplication;

    iget-object v0, v2, Lcom/glu/android/GluApplication;->m_nativeProperties:Lcom/glu/android/CaseInsensitiveHash;

    goto :goto_0

    .line 71
    :cond_2
    const-string v2, "Glu-Tapjoy-Enabled"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 72
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/glu/android/Settings;->TAPJOY_ENABLED:Z

    .line 73
    :cond_3
    const-string v2, "Glu-Market-Enabled"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "str":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "str":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 74
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/glu/android/Settings;->MARKET_ENABLED:Z

    .line 75
    :cond_4
    const-string v2, "Glu-Ads-Enabled"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "str":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "str":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 76
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/glu/android/Settings;->ADS_ENABLED:Z

    .line 77
    :cond_5
    const-string v2, "Glu-Demo-Enabled"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "str":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "str":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 78
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/glu/android/Settings;->DEMO_ENABLED:Z

    .line 81
    :cond_6
    const-string v2, "Glu-Verizon-Build"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "str":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "str":Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 82
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/glu/android/Settings;->VERIZON_BUILD:Z

    .line 83
    :cond_7
    sget-boolean v2, Lcom/glu/android/Settings;->VERIZON_BUILD:Z

    if-eqz v2, :cond_8

    .line 84
    const/4 v2, 0x1

    sput v2, Lcom/glu/android/Settings;->BUILD_VARIANT:I

    .line 87
    :cond_8
    const-string v2, "Glu-Amazon-Build"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "str":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "str":Ljava/lang/String;
    if-eqz v1, :cond_9

    .line 88
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/glu/android/Settings;->AMAZON_BUILD:Z

    .line 89
    :cond_9
    sget-boolean v2, Lcom/glu/android/Settings;->AMAZON_BUILD:Z

    if-eqz v2, :cond_a

    .line 90
    const/4 v2, 0x2

    sput v2, Lcom/glu/android/Settings;->BUILD_VARIANT:I

    .line 92
    :cond_a
    const-string v2, "Glu-Online-Play-Disabled"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "str":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "str":Ljava/lang/String;
    if-eqz v1, :cond_b

    .line 93
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/glu/android/Settings;->ONLINE_PLAY_DISABLED:Z

    .line 94
    :cond_b
    const-string v2, "Glu-Att-Build"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "str":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "str":Ljava/lang/String;
    if-eqz v1, :cond_c

    .line 95
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/glu/android/Settings;->ATT_BUILD:Z

    .line 96
    :cond_c
    const-string v2, "Glu-Sprint-Build"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "str":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "str":Ljava/lang/String;
    if-eqz v1, :cond_d

    .line 97
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/glu/android/Settings;->SPRINT_BUILD:Z

    .line 98
    :cond_d
    const-string v2, "Glu-Tmobile-Build"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "str":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "str":Ljava/lang/String;
    if-eqz v1, :cond_e

    .line 99
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/glu/android/Settings;->TMOBILE_BUILD:Z

    .line 100
    :cond_e
    const-string v2, "Glu-Telus-Build"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "str":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "str":Ljava/lang/String;
    if-eqz v1, :cond_f

    .line 101
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/glu/android/Settings;->TELUS_BUILD:Z

    .line 102
    :cond_f
    const-string v2, "Glu-Boku-Enabled"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "str":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "str":Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 103
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/glu/android/Settings;->BOKU_ENABLED:Z

    .line 104
    :cond_10
    const-string v2, "Glu-Bango-Enabled"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "str":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "str":Ljava/lang/String;
    if-eqz v1, :cond_11

    .line 105
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/glu/android/Settings;->BANGO_ENABLED:Z

    .line 106
    :cond_11
    const-string v2, "Glu-Verizon-Iap-Enabled"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "str":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "str":Ljava/lang/String;
    if-eqz v1, :cond_12

    .line 107
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/glu/android/Settings;->VERIZON_IAP_ENABLED:Z

    .line 108
    :cond_12
    const-string v2, "Glu-Vodafone-Iap-Enabled"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "str":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "str":Ljava/lang/String;
    if-eqz v1, :cond_13

    .line 109
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/glu/android/Settings;->VODAFONE_IAP_ENABLED:Z

    .line 115
    :cond_13
    const-string v2, "Glu-Paypal-Enabled"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "str":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "str":Ljava/lang/String;
    if-eqz v1, :cond_14

    .line 116
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/glu/android/Settings;->PAYPAL_ENABLED:Z

    .line 117
    :cond_14
    const-string v2, "Glu-Openfeint"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "str":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "str":Ljava/lang/String;
    if-eqz v1, :cond_15

    .line 118
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/glu/android/Settings;->OPENFEINT:Z

    .line 119
    :cond_15
    const-string v2, "Glu-Push-Enabled"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "str":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "str":Ljava/lang/String;
    if-eqz v1, :cond_16

    .line 120
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/glu/android/Settings;->PUSH_ENABLED:Z

    .line 121
    :cond_16
    const-string v2, "Glu-Adsense"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "str":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "str":Ljava/lang/String;
    if-eqz v1, :cond_17

    .line 122
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/glu/android/Settings;->ADSENSE:Z

    .line 123
    :cond_17
    const-string v2, "Glu-Admarvel"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "str":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "str":Ljava/lang/String;
    if-eqz v1, :cond_18

    .line 124
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/glu/android/Settings;->ADMARVEL:Z

    .line 125
    :cond_18
    const-string v2, "Glu-Admob"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "str":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "str":Ljava/lang/String;
    if-eqz v1, :cond_19

    .line 126
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/glu/android/Settings;->ADMOB:Z

    .line 127
    :cond_19
    const-string v2, "Glu-Flurry-Disabled"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "str":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "str":Ljava/lang/String;
    if-eqz v1, :cond_1a

    .line 128
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/glu/android/Settings;->FLURRY_DISABLED:Z

    .line 129
    :cond_1a
    const-string v2, "Glu-Globalnav-Disabled"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "str":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "str":Ljava/lang/String;
    if-eqz v1, :cond_1b

    .line 130
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/glu/android/Settings;->GLOBALNAV_DISABLED:Z

    .line 133
    :cond_1b
    sget-boolean v2, Lcom/glu/android/Settings;->ONLINE_PLAY_DISABLED:Z

    if-eqz v2, :cond_1c

    .line 134
    const/4 v2, 0x0

    sput-boolean v2, Lcom/glu/android/Settings;->NO_SD_BACKUP:Z

    .line 137
    :cond_1c
    const-string v2, "Glu-IAP-Type"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/glu/android/IAP;->enablePropertiesDecidedVariant(Ljava/lang/String;)V

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Build variant (for push, other extended features): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/glu/android/Settings;->variantToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/Debug;->logSafe(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static variantToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    sget v0, Lcom/glu/android/Settings;->BUILD_VARIANT:I

    packed-switch v0, :pswitch_data_0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/glu/android/Settings;->BUILD_VARIANT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 47
    :pswitch_0
    const-string v0, "VARIANT_MARKET"

    goto :goto_0

    .line 49
    :pswitch_1
    const-string v0, "VARIANT_VERIZON"

    goto :goto_0

    .line 51
    :pswitch_2
    const-string v0, "VARIANT_AMAZON"

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
