.class public Lcom/glu/android/GenSettings;
.super Ljava/lang/Object;
.source "GenSettings.java"


# static fields
.field public static final ADMARVEL:Z = false

.field public static final ADMOB:Z = false

.field public static final ADSENSE:Z = false

.field public static final ADS_ENABLED:Z = false

.field public static final AMAZON_BUILD:Z = false

.field public static final ATT_BUILD:Z = false

.field public static final BANGO_ENABLED:Z = false

.field public static final BOKU_ENABLED:Z = false

.field public static final CHECKSUM_ARRAY:[J

.field public static final DEBUG:Z = false

.field public static final DEMO_ENABLED:Z = false

.field public static final FILE_LENGTH_ARRAY:[J

.field public static final FLURRY_DISABLED:Z = false

.field public static final GLOBALNAV_DISABLED:Z = false

.field public static final LIBRARY_ARRAY:[Ljava/lang/String;

.field public static final MARKET_ENABLED:Z = false

.field public static final NATIVE_BUILD_VARIANTS:[I

.field public static final OFFLINE_NOTIFY:Z = true

.field public static final ONLINE_PLAY_DISABLED:Z = true

.field public static final OPENFEINT:Z = false

.field public static final PAYPAL_ENABLED:Z = false

.field public static final PLAYHAVEN:Z = false

.field public static final PROP_ADMARVEL:Ljava/lang/String; = "Glu-Admarvel"

.field public static final PROP_ADMOB:Ljava/lang/String; = "Glu-Admob"

.field public static final PROP_ADSENSE:Ljava/lang/String; = "Glu-Adsense"

.field public static final PROP_ADS_ENABLED:Ljava/lang/String; = "Glu-Ads-Enabled"

.field public static final PROP_AMAZON_BUILD:Ljava/lang/String; = "Glu-Amazon-Build"

.field public static final PROP_ATT_BUILD:Ljava/lang/String; = "Glu-Att-Build"

.field public static final PROP_BANGO_ENABLED:Ljava/lang/String; = "Glu-Bango-Enabled"

.field public static final PROP_BOKU_ENABLED:Ljava/lang/String; = "Glu-Boku-Enabled"

.field public static final PROP_DEMO_ENABLED:Ljava/lang/String; = "Glu-Demo-Enabled"

.field public static final PROP_FLURRY_DISABLED:Ljava/lang/String; = "Glu-Flurry-Disabled"

.field public static final PROP_GLOBALNAV_DISABLED:Ljava/lang/String; = "Glu-Globalnav-Disabled"

.field public static final PROP_MARKET_ENABLED:Ljava/lang/String; = "Glu-Market-Enabled"

.field public static final PROP_OFFLINE_NOTIFY:Ljava/lang/String; = "Glu-Offline-Notify"

.field public static final PROP_ONLINE_PLAY_DISABLED:Ljava/lang/String; = "Glu-Online-Play-Disabled"

.field public static final PROP_OPENFEINT:Ljava/lang/String; = "Glu-Openfeint"

.field public static final PROP_PAYPAL_ENABLED:Ljava/lang/String; = "Glu-Paypal-Enabled"

.field public static final PROP_PLAYHAVEN:Ljava/lang/String; = "Glu-Playhaven"

.field public static final PROP_PUSH_ENABLED:Ljava/lang/String; = "Glu-Push-Enabled"

.field public static final PROP_SPRINT_BUILD:Ljava/lang/String; = "Glu-Sprint-Build"

.field public static final PROP_TAPJOY_ENABLED:Ljava/lang/String; = "Glu-Tapjoy-Enabled"

.field public static final PROP_TELUS_BUILD:Ljava/lang/String; = "Glu-Telus-Build"

.field public static final PROP_TEST_IAP_ENABLED:Ljava/lang/String; = "Glu-Test-Iap-Enabled"

.field public static final PROP_TEST_TAPJOY_ENABLED:Ljava/lang/String; = "Glu-Test-Tapjoy-Enabled"

.field public static final PROP_TMOBILE_BUILD:Ljava/lang/String; = "Glu-Tmobile-Build"

.field public static final PROP_VERIZON_BUILD:Ljava/lang/String; = "Glu-Verizon-Build"

.field public static final PROP_VERIZON_IAP_ENABLED:Ljava/lang/String; = "Glu-Verizon-Iap-Enabled"

.field public static final PROP_VODAFONE_IAP_ENABLED:Ljava/lang/String; = "Glu-Vodafone-Iap-Enabled"

.field public static final PROP_XPERIAPLAY:Ljava/lang/String; = "Glu-Xperiaplay"

.field public static final PUSH_ENABLED:Z = true

.field public static final SPECIAL_FILE_URL_KEYS:[Ljava/lang/String;

.field public static final SPECIAL_PRIMARY_CHECKSUMS:[J

.field public static final SPECIAL_PRIMARY_LENGTHS:[J

.field public static final SPECIAL_PRIMARY_URL_KEYS:[Ljava/lang/String;

.field public static final SPECIAL_RES_FILENAME_ARRAY:[[Ljava/lang/String;

.field public static final SPECIAL_RES_FILESIZE_ARRAY:[[I

.field public static final SPRINT_BUILD:Z = false

.field public static final TAPJOY_ENABLED:Z = true

.field public static final TELUS_BUILD:Z = false

.field public static final TEST_IAP_ENABLED:Z = false

.field public static final TEST_TAPJOY_ENABLED:Z = false

.field public static final TMOBILE_BUILD:Z = false

.field public static final VERIZON_BUILD:Z = false

.field public static final VERIZON_IAP_ENABLED:Z = false

.field public static final VODAFONE_IAP_ENABLED:Z = false

.field public static final XPERIAPLAY:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GenSettings;->LIBRARY_ARRAY:[Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GenSettings;->CHECKSUM_ARRAY:[J

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GenSettings;->FILE_LENGTH_ARRAY:[J

    .line 70
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Glu-Special-File-URL-HVGA"

    aput-object v1, v0, v5

    const-string v1, "Glu-Special-File-URL-WVGA"

    aput-object v1, v0, v6

    const-string v1, "Glu-Special-File-URL-DVGA"

    aput-object v1, v0, v4

    const-string v1, "Glu-Special-File-URL-QXGA"

    aput-object v1, v0, v8

    const-string v1, "Glu-Special-File-URL-HVGA-ATITC"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Glu-Special-File-URL-WVGA-ATITC"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Glu-Special-File-URL-DVGA-ATITC"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Glu-Special-File-URL-QXGA-ATITC"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Glu-Special-File-URL-HVGA-DXTC"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Glu-Special-File-URL-WVGA-DXTC"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Glu-Special-File-URL-DVGA-DXTC"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Glu-Special-File-URL-QXGA-DXTC"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Glu-Special-File-URL-HVGA-PVRTC"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Glu-Special-File-URL-WVGA-PVRTC"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Glu-Special-File-URL-DVGA-PVRTC"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Glu-Special-File-URL-QXGA-PVRTC"

    aput-object v2, v0, v1

    sput-object v0, Lcom/glu/android/GenSettings;->SPECIAL_FILE_URL_KEYS:[Ljava/lang/String;

    .line 75
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Glu-Primary-File-URL-HVGA"

    aput-object v1, v0, v5

    const-string v1, "Glu-Primary-File-URL-WVGA"

    aput-object v1, v0, v6

    const-string v1, "Glu-Primary-File-URL-DVGA"

    aput-object v1, v0, v4

    const-string v1, "Glu-Primary-File-URL-QXGA"

    aput-object v1, v0, v8

    const-string v1, "Glu-Primary-File-URL-HVGA-ATITC"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Glu-Primary-File-URL-WVGA-ATITC"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Glu-Primary-File-URL-DVGA-ATITC"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Glu-Primary-File-URL-QXGA-ATITC"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Glu-Primary-File-URL-HVGA-DXTC"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Glu-Primary-File-URL-WVGA-DXTC"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Glu-Primary-File-URL-DVGA-DXTC"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Glu-Primary-File-URL-QXGA-DXTC"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Glu-Primary-File-URL-HVGA-PVRTC"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Glu-Primary-File-URL-WVGA-PVRTC"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Glu-Primary-File-URL-DVGA-PVRTC"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Glu-Primary-File-URL-QXGA-PVRTC"

    aput-object v2, v0, v1

    sput-object v0, Lcom/glu/android/GenSettings;->SPECIAL_PRIMARY_URL_KEYS:[Ljava/lang/String;

    .line 80
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/glu/android/GenSettings;->NATIVE_BUILD_VARIANTS:[I

    .line 86
    const/16 v0, 0x10

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/glu/android/GenSettings;->SPECIAL_PRIMARY_CHECKSUMS:[J

    .line 91
    const/16 v0, 0x10

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/glu/android/GenSettings;->SPECIAL_PRIMARY_LENGTHS:[J

    .line 96
    const/16 v0, 0x10

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "en.big"

    aput-object v2, v1, v5

    const-string v2, "glu.m4v"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "wvga.big"

    aput-object v2, v1, v5

    const-string v2, "en.big"

    aput-object v2, v1, v6

    const-string v2, "ck_logo.3gp"

    aput-object v2, v1, v4

    const-string v2, "glu_logo.3gp"

    aput-object v2, v1, v8

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "en.big"

    aput-object v2, v1, v5

    const-string v2, "vga.big"

    aput-object v2, v1, v6

    const-string v2, "xga.big"

    aput-object v2, v1, v4

    const-string v2, "ck_logo.3gp"

    aput-object v2, v1, v8

    const-string v2, "glu_logo.3gp"

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "en.big"

    aput-object v2, v1, v5

    const-string v2, "glu.m4v"

    aput-object v2, v1, v6

    aput-object v1, v0, v8

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "en.big"

    aput-object v2, v1, v5

    const-string v2, "glu.m4v"

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "wvga.big"

    aput-object v3, v2, v5

    const-string v3, "en.big"

    aput-object v3, v2, v6

    const-string v3, "ck_logo.3gp"

    aput-object v3, v2, v4

    const-string v3, "glu_logo.3gp"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "en.big"

    aput-object v3, v2, v5

    const-string v3, "vga.big"

    aput-object v3, v2, v6

    const-string v3, "xga.big"

    aput-object v3, v2, v4

    const-string v3, "ck_logo.3gp"

    aput-object v3, v2, v8

    const-string v3, "glu_logo.3gp"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "en.big"

    aput-object v3, v2, v5

    const-string v3, "glu.m4v"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "en.big"

    aput-object v3, v2, v5

    const-string v3, "glu.m4v"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "wvga.big"

    aput-object v3, v2, v5

    const-string v3, "en.big"

    aput-object v3, v2, v6

    const-string v3, "ck_logo.3gp"

    aput-object v3, v2, v4

    const-string v3, "glu_logo.3gp"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "en.big"

    aput-object v3, v2, v5

    const-string v3, "vga.big"

    aput-object v3, v2, v6

    const-string v3, "xga.big"

    aput-object v3, v2, v4

    const-string v3, "ck_logo.3gp"

    aput-object v3, v2, v8

    const-string v3, "glu_logo.3gp"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "en.big"

    aput-object v3, v2, v5

    const-string v3, "glu.m4v"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "en.big"

    aput-object v3, v2, v5

    const-string v3, "glu.m4v"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "wvga.big"

    aput-object v3, v2, v5

    const-string v3, "en.big"

    aput-object v3, v2, v6

    const-string v3, "ck_logo.3gp"

    aput-object v3, v2, v4

    const-string v3, "glu_logo.3gp"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "en.big"

    aput-object v3, v2, v5

    const-string v3, "vga.big"

    aput-object v3, v2, v6

    const-string v3, "xga.big"

    aput-object v3, v2, v4

    const-string v3, "ck_logo.3gp"

    aput-object v3, v2, v8

    const-string v3, "glu_logo.3gp"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "en.big"

    aput-object v3, v2, v5

    const-string v3, "glu.m4v"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lcom/glu/android/GenSettings;->SPECIAL_RES_FILENAME_ARRAY:[[Ljava/lang/String;

    .line 113
    const/16 v0, 0x10

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    new-array v1, v7, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v8

    new-array v1, v4, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v7, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v7, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v4, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v4, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v7, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v4, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    sput-object v0, Lcom/glu/android/GenSettings;->SPECIAL_RES_FILESIZE_ARRAY:[[I

    return-void

    .line 80
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x0
        0x0
        0x1
        0x2
        0x0
        0x0
        0x1
        0x2
        0x0
        0x0
        0x1
        0x2
        0x0
    .end array-data

    .line 86
    :array_1
    .array-data 8
        0x1067e03698dL
        0x1067e03698dL
        0x1067e03698dL
        0x1067e03698dL
        0x1067e03698dL
        0x1067e03698dL
        0x1067e03698dL
        0x1067e03698dL
        0x1067e03698dL
        0x1067e03698dL
        0x1067e03698dL
        0x1067e03698dL
        0x1067e03698dL
        0x1067e03698dL
        0x1067e03698dL
        0x1067e03698dL
    .end array-data

    .line 91
    :array_2
    .array-data 8
        0x102dde4c
        0x102dde4c
        0x102dde4c
        0x102dde4c
        0x102dde4c
        0x102dde4c
        0x102dde4c
        0x102dde4c
        0x102dde4c
        0x102dde4c
        0x102dde4c
        0x102dde4c
        0x102dde4c
        0x102dde4c
        0x102dde4c
        0x102dde4c
    .end array-data

    .line 113
    :array_3
    .array-data 4
        0x5db89
        0x1af920
    .end array-data

    :array_4
    .array-data 4
        0x6bb7c01
        0x5db89
        0x3d4ba1
        0x115b45
    .end array-data

    :array_5
    .array-data 4
        0x5db89
        0x7921c0b
        0x6c88e39
        0x547802
        0x113093
    .end array-data

    :array_6
    .array-data 4
        0x5db89
        0x1af920
    .end array-data

    :array_7
    .array-data 4
        0x5db89
        0x1af920
    .end array-data

    :array_8
    .array-data 4
        0x6bb7c01
        0x5db89
        0x3d4ba1
        0x115b45
    .end array-data

    :array_9
    .array-data 4
        0x5db89
        0x7921c0b
        0x6c88e39
        0x547802
        0x113093
    .end array-data

    :array_a
    .array-data 4
        0x5db89
        0x1af920
    .end array-data

    :array_b
    .array-data 4
        0x5db89
        0x1af920
    .end array-data

    :array_c
    .array-data 4
        0x6bb7c01
        0x5db89
        0x3d4ba1
        0x115b45
    .end array-data

    :array_d
    .array-data 4
        0x5db89
        0x7921c0b
        0x6c88e39
        0x547802
        0x113093
    .end array-data

    :array_e
    .array-data 4
        0x5db89
        0x1af920
    .end array-data

    :array_f
    .array-data 4
        0x5db89
        0x1af920
    .end array-data

    :array_10
    .array-data 4
        0x6bb7c01
        0x5db89
        0x3d4ba1
        0x115b45
    .end array-data

    :array_11
    .array-data 4
        0x5db89
        0x7921c0b
        0x6c88e39
        0x547802
        0x113093
    .end array-data

    :array_12
    .array-data 4
        0x5db89
        0x1af920
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
