.class public Lcom/glu/android/GameLet;
.super Landroid/app/Activity;
.source "GameLet.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/glu/android/GameLet$DummyGLView;
    }
.end annotation


# static fields
.field public static final AUTOROTATE_TO_MATCH_USER_ORIENTATION:Z = false

.field public static final BACKUP_NOTIFY_FILENAME:Ljava/lang/String; = "backupnotify.dat"

.field public static final BOKU_ACTIVITY_REQUEST:I = -0x53521fe

.field public static final DEFAULT_USER_WAKE_LOCK_SETTING:Z = true

.field public static final DIALOG_LIMIT_TIMER:I = 0x3e8

.field public static final DISPLAY_LIST_OPTION_DROID:I = 0x2

.field public static final DISPLAY_LIST_OPTION_NONE:I = 0x0

.field public static final DISPLAY_LIST_OPTION_TYPICAL:I = 0x1

.field public static final DMA_ACTIVITY_REQUEST:I = -0x53521fc

.field public static final DOWNLOAD_STATUS_FILENAME:Ljava/lang/String; = "dlstatus.dat"

.field public static final EXTENDED_LIBRARY_ATITC_INDEX:I = 0x0

.field public static final EXTENDED_LIBRARY_LOWEND_INDEX:I = 0x1

.field public static final FACEBOOK_ACTIVITY_REQUEST:I = -0x53521fb

.field public static final GLOBALNAV_ACTIVITY_REQUEST:I = -0x53521fd

.field public static final GLOBALNAV_USE_MARKET_LINK:Z = true

.field public static final GL_DEPTH_SIZE:I = 0x10

.field public static final GL_STENCIL_SIZE:I = 0x0

.field public static final HANDLER_MESSAGE_CLOSE_MODAL_DIALOG:I = 0xf

.field public static final HANDLER_MESSAGE_END_MOVIE_VIEW:I = 0x3

.field public static final HANDLER_MESSAGE_FACEBOOK_LOGIN:I = 0x4

.field public static final HANDLER_MESSAGE_FACEBOOK_LOGOUT:I = 0x5

.field public static final HANDLER_MESSAGE_FACEBOOK_REQUEST_USER_INFO:I = 0x6

.field public static final HANDLER_MESSAGE_FACEBOOK_SEND_FEED:I = 0x7

.field public static final HANDLER_MESSAGE_FACEBOOK_SEND_INVITE:I = 0x8

.field public static final HANDLER_MESSAGE_GNS_CLOSE_DIALOG:I = 0xc

.field public static final HANDLER_MESSAGE_GNS_OPEN_DIALOG:I = 0xb

.field public static final HANDLER_MESSAGE_OPENFEINT_INIT:I = 0x16

.field public static final HANDLER_MESSAGE_OPEN_MODAL_DIALOG:I = 0xe

.field public static final HANDLER_MESSAGE_OPEN_RES_VIEW:I = 0xd

.field public static final HANDLER_MESSAGE_SIMULATE_BACK_KEY:I = 0x14

.field public static final HANDLER_MESSAGE_SIMULATE_HOME_KEY:I = 0x13

.field public static final HANDLER_MESSAGE_START_GAME:I = 0x1

.field public static final HANDLER_MESSAGE_SWITCH_TO_MOVIE_VIEW:I = 0x2

.field public static final HANDLER_MESSAGE_TAPJOY_INIT:I = 0x10

.field public static final HANDLER_MESSAGE_TAPJOY_SHOW_OFFERS:I = 0x11

.field public static final HANDLER_MESSAGE_TAPJOY_SHOW_VIRTUAL_GOODS:I = 0x12

.field public static final HANDLER_MESSAGE_UNUSED_1:I = 0x9

.field public static final HANDLER_MESSAGE_UNUSED_2:I = 0xa

.field public static final HONEYCOMB_IS_FULL_SCREEN:Z = false

.field public static final INTERNAL_WEB_VIEW_DRAW_ON_TOP:Z = false

.field public static final KEY_FORCED_UPGRADE_URL:Ljava/lang/String; = "Glu-Forced-Upgrade-URL"

.field public static final KEY_IAP_TYPE:Ljava/lang/String; = "Glu-IAP-Type"

.field public static final KEY_MORE_GAMES_URL:Ljava/lang/String; = "Glu-Upsell-URL"

.field public static final KEY_NO_IAP:Ljava/lang/String; = "Glu-No-IAP"

.field public static final KEY_PUSH_OVERRIDE_KEY:Ljava/lang/String; = "Glu-Push-Key"

.field public static final KEY_RES_FILE_URL:Ljava/lang/String; = "Glu-Res-File-URL"

.field public static KEY_SPECIAL_FILE_URL:Ljava/lang/String; = null

.field public static final KEY_TAPJOY_OVERRIDE_KEY:Ljava/lang/String; = "Glu-Tapjoy-Key"

.field public static final KEY_UPGRADE_URL:Ljava/lang/String; = "Glu-Demo-URL"

.field public static LIBRARY:Ljava/lang/String; = null

.field public static final MAX_SMALL_DIMENSION_FOR_WVGA:I = 0x21c

.field public static final NATIVE_EVENTS_FILENAME:Ljava/lang/String; = "events.dat"

.field public static final NATIVE_EVENTS_TEST_FILENAME:Ljava/lang/String; = "events-test.dat"

.field public static final NATIVE_EVENTS_TEST_FILENAME2:Ljava/lang/String; = "events_test.dat"

.field public static final NATIVE_PROPERTIES_FILENAME:Ljava/lang/String; = "properties.dat"

.field public static final NATIVE_RES_MAP_FILENAME:Ljava/lang/String; = "res_map.dat"

.field public static final NO_PRIMARY_RESOURCE:Z = false

.field public static final NO_SD_BACKUP:Z = true

.field public static final NUM_SPECIAL_RES_INDEX:I = 0x10

.field public static final ONLY_PROCESS_MENU_AND_BACK_KEYS:Z = true

.field public static final ORIENTATION_SWITCH_THRESHOLD:I = 0xbb8

.field public static final OVERRIDE_OEM_VOLUME:Z = false

.field public static final OVERRIDE_OEM_VOLUME_KEYS:Z = false

.field public static final PAYPAL_ACTIVITY_REQUEST:I = -0x53521ff

.field public static final QUIT_WHEN_TEXTURES_LOST:Z = true

.field public static RESOURCE_FILENAME:Ljava/lang/String; = null

.field public static final RESOURCE_FILENAME_ARRAY:[Ljava/lang/String;

.field public static RES_FILE_CHECKSUM_TO_USE:J = 0x0L

.field public static RES_FILE_SIZE_TO_USE:J = 0x0L

.field public static RES_FILE_URL_KEY_TO_USE:Ljava/lang/String; = null

.field public static final SDCARD_BACKUP_LOCATION:Ljava/lang/String; = "/sdcard/glu/ck"

.field public static SPECIAL_RES_FILENAME_ARRAY:[Ljava/lang/String; = null

.field public static SPECIAL_RES_FILESIZE_ARRAY:[I = null

.field public static final SPECIAL_RES_INDEX_DVGA:I = 0x2

.field public static final SPECIAL_RES_INDEX_DVGA_ATITC:I = 0x6

.field public static final SPECIAL_RES_INDEX_DVGA_DXTC:I = 0xa

.field public static final SPECIAL_RES_INDEX_DVGA_PVRTC:I = 0xe

.field public static final SPECIAL_RES_INDEX_HVGA:I = 0x0

.field public static final SPECIAL_RES_INDEX_HVGA_ATITC:I = 0x4

.field public static final SPECIAL_RES_INDEX_HVGA_DXTC:I = 0x8

.field public static final SPECIAL_RES_INDEX_HVGA_PVRTC:I = 0xc

.field public static final SPECIAL_RES_INDEX_QXGA:I = 0x3

.field public static final SPECIAL_RES_INDEX_QXGA_ATITC:I = 0x7

.field public static final SPECIAL_RES_INDEX_QXGA_DXTC:I = 0xb

.field public static final SPECIAL_RES_INDEX_QXGA_PVRTC:I = 0xf

.field public static final SPECIAL_RES_INDEX_WVGA:I = 0x1

.field public static final SPECIAL_RES_INDEX_WVGA_ATITC:I = 0x5

.field public static final SPECIAL_RES_INDEX_WVGA_DXTC:I = 0x9

.field public static final SPECIAL_RES_INDEX_WVGA_PVRTC:I = 0xd

.field public static final TABLET_BUILD_SCALES_NATURALLY:Z = false

.field public static final TEMP_FILENAME:Ljava/lang/String; = "BountyHunter_temp"

.field public static final USE_ACCELEROMETER:Z = false

.field public static final USE_GYROSCOPE:Z = false

.field public static final VARIABLE_SECONDARY_RESOURCE_SIZES:Z = false

.field public static final WVGA_BUILD_SCALES_NATURALLY:Z = true

.field public static instance:Lcom/glu/android/GameLet;

.field public static m_openFeintInitialized:Z

.field public static sm_lastRunDidNotDestroy:Z


# instance fields
.field public destroyedFromAndroid:Z

.field public destroyedFromNative:Z

.field public dummyView:Lcom/glu/android/GameLet$DummyGLView;

.field public gameViewParent:Lcom/glu/android/GluFrameLayout;

.field public initialMenuView:Lcom/glu/android/ResDownloadViewGroup;

.field public m_JNIinit:Z

.field public m_accelerometerSupported:Z

.field public m_appPaused:Z

.field public m_buildVariant:I

.field public m_buttonOneText:Ljava/lang/String;

.field public m_buttonTwoText:Ljava/lang/String;

.field public m_countryCode:Ljava/lang/String;

.field public m_destroyQueued:Z

.field public m_deviceID:Ljava/lang/String;

.field public m_deviceModel:Ljava/lang/String;

.field public m_dialogCallback:Ljava/lang/reflect/Method;

.field public m_dmaVideoPending:Z

.field public m_facebookParam:Ljava/lang/String;

.field public m_fullVersion:Ljava/lang/String;

.field public m_gameIsFlipped:Z

.field public m_gnsIsOpen:Z

.field public m_gyroscopeSupported:Z

.field public m_imageStore:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public m_isInGame:Z

.field public m_keyboardState:I

.field public m_keyboardSupported:Z

.field public m_language:Ljava/lang/String;

.field public m_lastDialogCloseAt:J

.field public m_locale:Ljava/lang/String;

.field public m_lowEndBuild:Z

.field public m_modalDialog:Landroid/app/AlertDialog;

.field public m_modalDialogText:Ljava/lang/String;

.field public m_modalDialogTitle:Ljava/lang/String;

.field public m_multiTouchSupported:Z

.field public m_nativeProperties:Lcom/glu/android/CaseInsensitiveHash;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glu/android/CaseInsensitiveHash",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m_nativeSuspended:Z

.field public m_needToSystemExitOnDestroy:Z

.field public m_packageID:Ljava/lang/String;

.field public m_platformVersion:Ljava/lang/String;

.field public m_platformVersionI:I

.field public m_platformVersionNice:Ljava/lang/String;

.field public m_screenHeight:I

.field public m_screenWidth:I

.field public m_serial:Ljava/lang/String;

.field public m_supportsATITCCompression:Z

.field public m_supportsDXTCCompression:Z

.field public m_supportsPVRTCCompression:Z

.field public m_timezone:Ljava/lang/String;

.field public m_userWantsWakeLock:Z

.field public m_versionMajor:Ljava/lang/String;

.field public m_versionMicro:Ljava/lang/String;

.field public m_versionMinor:Ljava/lang/String;

.field public m_viewManipulationHandler:Landroid/os/Handler;

.field public m_wakeLock:Landroid/os/PowerManager$WakeLock;

.field public m_wakeLockDisabledByGame:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 44
    const-string v0, "glujni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 44
    const-string v0, "gamelib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 88
    const-string v0, "libgamelib.so"

    sput-object v0, Lcom/glu/android/GameLet;->LIBRARY:Ljava/lang/String;

    .line 98
    const-string v0, "BountyHunter.big"

    sput-object v0, Lcom/glu/android/GameLet;->RESOURCE_FILENAME:Ljava/lang/String;

    .line 103
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "BountyHunter.big"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "BountyHunter.big"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "BountyHunter.big"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    aput-object v3, v0, v1

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    sput-object v0, Lcom/glu/android/GameLet;->RESOURCE_FILENAME_ARRAY:[Ljava/lang/String;

    .line 216
    const-string v0, "Glu-Res-File-URL"

    sput-object v0, Lcom/glu/android/GameLet;->RES_FILE_URL_KEY_TO_USE:Ljava/lang/String;

    .line 217
    const-wide v0, 0x1067e03698dL

    sput-wide v0, Lcom/glu/android/GameLet;->RES_FILE_CHECKSUM_TO_USE:J

    .line 218
    const-wide/32 v0, 0x102dde4c

    sput-wide v0, Lcom/glu/android/GameLet;->RES_FILE_SIZE_TO_USE:J

    .line 222
    sput-object v3, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    .line 314
    sput-object v3, Lcom/glu/android/GameLet;->SPECIAL_RES_FILENAME_ARRAY:[Ljava/lang/String;

    .line 315
    sput-object v3, Lcom/glu/android/GameLet;->SPECIAL_RES_FILESIZE_ARRAY:[I

    .line 316
    sput-object v3, Lcom/glu/android/GameLet;->KEY_SPECIAL_FILE_URL:Ljava/lang/String;

    .line 317
    sput-boolean v4, Lcom/glu/android/GameLet;->m_openFeintInitialized:Z

    .line 318
    sput-boolean v4, Lcom/glu/android/GameLet;->sm_lastRunDidNotDestroy:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 221
    iput-object v2, p0, Lcom/glu/android/GameLet;->initialMenuView:Lcom/glu/android/ResDownloadViewGroup;

    .line 225
    iput-boolean v3, p0, Lcom/glu/android/GameLet;->m_JNIinit:Z

    .line 226
    iput-boolean v3, p0, Lcom/glu/android/GameLet;->m_destroyQueued:Z

    .line 227
    iput-boolean v3, p0, Lcom/glu/android/GameLet;->destroyedFromAndroid:Z

    .line 228
    iput-boolean v3, p0, Lcom/glu/android/GameLet;->destroyedFromNative:Z

    .line 229
    iput-boolean v3, p0, Lcom/glu/android/GameLet;->m_nativeSuspended:Z

    .line 230
    iput-boolean v3, p0, Lcom/glu/android/GameLet;->m_appPaused:Z

    .line 233
    iput-object v2, p0, Lcom/glu/android/GameLet;->dummyView:Lcom/glu/android/GameLet$DummyGLView;

    .line 234
    iput-boolean v3, p0, Lcom/glu/android/GameLet;->m_supportsATITCCompression:Z

    .line 235
    iput-boolean v3, p0, Lcom/glu/android/GameLet;->m_supportsDXTCCompression:Z

    .line 236
    iput-boolean v3, p0, Lcom/glu/android/GameLet;->m_supportsPVRTCCompression:Z

    .line 239
    iput-boolean v3, p0, Lcom/glu/android/GameLet;->m_lowEndBuild:Z

    .line 242
    iput-object v2, p0, Lcom/glu/android/GameLet;->m_nativeProperties:Lcom/glu/android/CaseInsensitiveHash;

    .line 245
    iput-object v2, p0, Lcom/glu/android/GameLet;->m_wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 248
    iput-boolean v4, p0, Lcom/glu/android/GameLet;->m_userWantsWakeLock:Z

    .line 251
    iput v4, p0, Lcom/glu/android/GameLet;->m_screenWidth:I

    .line 252
    iput v4, p0, Lcom/glu/android/GameLet;->m_screenHeight:I

    .line 255
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GameLet;->m_imageStore:Ljava/util/Hashtable;

    .line 258
    iput-object v2, p0, Lcom/glu/android/GameLet;->m_modalDialog:Landroid/app/AlertDialog;

    .line 259
    iput-object v2, p0, Lcom/glu/android/GameLet;->m_modalDialogTitle:Ljava/lang/String;

    .line 260
    iput-object v2, p0, Lcom/glu/android/GameLet;->m_modalDialogText:Ljava/lang/String;

    .line 261
    iput-object v2, p0, Lcom/glu/android/GameLet;->m_buttonOneText:Ljava/lang/String;

    .line 262
    iput-object v2, p0, Lcom/glu/android/GameLet;->m_buttonTwoText:Ljava/lang/String;

    .line 263
    iput-object v2, p0, Lcom/glu/android/GameLet;->m_dialogCallback:Ljava/lang/reflect/Method;

    .line 264
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/glu/android/GameLet;->m_lastDialogCloseAt:J

    .line 268
    iput-boolean v4, p0, Lcom/glu/android/GameLet;->m_accelerometerSupported:Z

    .line 269
    iput-boolean v4, p0, Lcom/glu/android/GameLet;->m_gyroscopeSupported:Z

    .line 270
    iput-boolean v3, p0, Lcom/glu/android/GameLet;->m_multiTouchSupported:Z

    .line 271
    iput-boolean v3, p0, Lcom/glu/android/GameLet;->m_keyboardSupported:Z

    .line 274
    iput-boolean v4, p0, Lcom/glu/android/GameLet;->m_wakeLockDisabledByGame:Z

    .line 277
    iput-boolean v3, p0, Lcom/glu/android/GameLet;->m_gameIsFlipped:Z

    .line 280
    iput-boolean v3, p0, Lcom/glu/android/GameLet;->m_dmaVideoPending:Z

    .line 283
    iput-boolean v3, p0, Lcom/glu/android/GameLet;->m_isInGame:Z

    .line 286
    iput-boolean v3, p0, Lcom/glu/android/GameLet;->m_gnsIsOpen:Z

    .line 319
    iput-boolean v3, p0, Lcom/glu/android/GameLet;->m_needToSystemExitOnDestroy:Z

    .line 321
    iput v5, p0, Lcom/glu/android/GameLet;->m_buildVariant:I

    .line 576
    iput-object v2, p0, Lcom/glu/android/GameLet;->m_locale:Ljava/lang/String;

    .line 577
    iput-object v2, p0, Lcom/glu/android/GameLet;->m_language:Ljava/lang/String;

    .line 578
    iput-object v2, p0, Lcom/glu/android/GameLet;->m_countryCode:Ljava/lang/String;

    .line 579
    iput-object v2, p0, Lcom/glu/android/GameLet;->m_deviceID:Ljava/lang/String;

    .line 580
    iput-object v2, p0, Lcom/glu/android/GameLet;->m_serial:Ljava/lang/String;

    .line 581
    iput-object v2, p0, Lcom/glu/android/GameLet;->m_fullVersion:Ljava/lang/String;

    .line 582
    iput-object v2, p0, Lcom/glu/android/GameLet;->m_versionMajor:Ljava/lang/String;

    .line 583
    iput-object v2, p0, Lcom/glu/android/GameLet;->m_versionMinor:Ljava/lang/String;

    .line 584
    iput-object v2, p0, Lcom/glu/android/GameLet;->m_versionMicro:Ljava/lang/String;

    .line 585
    iput-object v2, p0, Lcom/glu/android/GameLet;->m_platformVersion:Ljava/lang/String;

    .line 586
    iput-object v2, p0, Lcom/glu/android/GameLet;->m_platformVersionNice:Ljava/lang/String;

    .line 587
    iput-object v2, p0, Lcom/glu/android/GameLet;->m_timezone:Ljava/lang/String;

    .line 588
    iput-object v2, p0, Lcom/glu/android/GameLet;->m_deviceModel:Ljava/lang/String;

    .line 589
    iput-object v2, p0, Lcom/glu/android/GameLet;->m_packageID:Ljava/lang/String;

    .line 592
    iput v3, p0, Lcom/glu/android/GameLet;->m_platformVersionI:I

    .line 613
    iput-object v2, p0, Lcom/glu/android/GameLet;->gameViewParent:Lcom/glu/android/GluFrameLayout;

    .line 854
    iput-object v2, p0, Lcom/glu/android/GameLet;->m_facebookParam:Ljava/lang/String;

    .line 857
    new-instance v0, Lcom/glu/android/GameLet$1;

    invoke-direct {v0, p0}, Lcom/glu/android/GameLet$1;-><init>(Lcom/glu/android/GameLet;)V

    iput-object v0, p0, Lcom/glu/android/GameLet;->m_viewManipulationHandler:Landroid/os/Handler;

    .line 1601
    iput v5, p0, Lcom/glu/android/GameLet;->m_keyboardState:I

    return-void
.end method

.method public static hideSystemUI(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static final setLibraryAndChecksum()V
    .locals 5

    .prologue
    .line 154
    sget-object v1, Lcom/glu/android/GenSettings;->LIBRARY_ARRAY:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 156
    const/4 v0, -0x1

    .line 157
    .local v0, "idx":I
    sget-object v1, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-boolean v1, v1, Lcom/glu/android/GameLet;->m_supportsATITCCompression:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/glu/android/GenSettings;->LIBRARY_ARRAY:[Ljava/lang/String;

    array-length v1, v1

    if-ltz v1, :cond_1

    .line 159
    const-string v1, "Loading library: ATITC supported."

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 160
    const/4 v0, 0x0

    .line 170
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 172
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/glu/android/GenSettings;->LIBRARY_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/glu/android/GameLet;->LIBRARY:Ljava/lang/String;

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/glu/android/GameLet;->RES_FILE_URL_KEY_TO_USE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/glu/android/GameLet;->RES_FILE_URL_KEY_TO_USE:Ljava/lang/String;

    .line 174
    sget-object v1, Lcom/glu/android/GenSettings;->CHECKSUM_ARRAY:[J

    aget-wide v1, v1, v0

    sput-wide v1, Lcom/glu/android/GameLet;->RES_FILE_CHECKSUM_TO_USE:J

    .line 175
    sget-object v1, Lcom/glu/android/GenSettings;->FILE_LENGTH_ARRAY:[J

    aget-wide v1, v1, v0

    sput-wide v1, Lcom/glu/android/GameLet;->RES_FILE_SIZE_TO_USE:J

    .line 180
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v2}, Lcom/glu/android/GameLet;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/GluUtil;->filePathWithEnder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/cache"

    const-string v4, "/lib"

    invoke-static {v2, v3, v4}, Lcom/glu/android/GluUtil;->replaceAllNotRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/glu/android/GameLet;->LIBRARY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/glu/android/GameLet;->LIBRARY:Ljava/lang/String;

    .line 181
    return-void

    .line 162
    :cond_1
    sget-object v1, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-boolean v1, v1, Lcom/glu/android/GameLet;->m_lowEndBuild:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/glu/android/GenSettings;->LIBRARY_ARRAY:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    .line 164
    const-string v1, "Loading library: HVGA"

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 165
    const/4 v0, 0x1

    goto :goto_0

    .line 168
    :cond_2
    const-string v1, "Loading default library."

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public acquireWakeLock()V
    .locals 3

    .prologue
    .line 1090
    iget-object v1, p0, Lcom/glu/android/GameLet;->m_wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/glu/android/GameLet;->m_wakeLockDisabledByGame:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/glu/android/GameLet;->m_userWantsWakeLock:Z

    if-eqz v1, :cond_0

    .line 1092
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/glu/android/GameLet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1093
    .local v0, "pm":Landroid/os/PowerManager;
    const/16 v1, 0xa

    const-string v2, "GluGame"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/glu/android/GameLet;->m_wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1094
    iget-object v1, p0, Lcom/glu/android/GameLet;->m_wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1096
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method public closeGNSDialog()V
    .locals 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/glu/android/GameLet;->m_viewManipulationHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 779
    return-void
.end method

.method public closeWebView()V
    .locals 3

    .prologue
    .line 750
    sget-object v0, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/glu/android/GluCanvasOverlayGroup;->setViewVisibility(IZ)V

    .line 751
    return-void
.end method

.method public configureWakeLock()V
    .locals 1

    .prologue
    .line 1058
    iget-boolean v0, p0, Lcom/glu/android/GameLet;->m_wakeLockDisabledByGame:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/glu/android/GameLet;->m_userWantsWakeLock:Z

    if-eqz v0, :cond_0

    .line 1059
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->acquireWakeLock()V

    .line 1062
    :goto_0
    return-void

    .line 1061
    :cond_0
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->releaseWakeLock()V

    goto :goto_0
.end method

.method public destroySingletons(Z)V
    .locals 3
    .param p1, "calledFromOnDestroy"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1269
    sget-boolean v0, Lcom/glu/android/GameLet;->sm_lastRunDidNotDestroy:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    if-eqz v0, :cond_0

    .line 1271
    sget-object v0, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    invoke-virtual {v0}, Lcom/glu/android/GluView;->killOldGLThread()V

    .line 1272
    sput-object v1, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    .line 1273
    sput-boolean v2, Lcom/glu/android/GameLet;->sm_lastRunDidNotDestroy:Z

    .line 1274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/GameLet;->m_needToSystemExitOnDestroy:Z

    .line 1276
    :cond_0
    const-string v0, "Deleting cache files. (i.e. web history)"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1277
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/GluUtil;->rmrf(Ljava/io/File;)V

    .line 1279
    if-eqz p1, :cond_1

    .line 1280
    invoke-static {}, Lcom/glu/android/OfflineNotificationManager;->handleGameLetDestroy()V

    .line 1282
    :cond_1
    invoke-static {}, Lcom/glu/android/GluTapjoy;->onDestroy()V

    .line 1284
    sput-object v1, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    .line 1285
    sput-object v1, Lcom/glu/android/ResDownloadViewGroup;->instance:Lcom/glu/android/ResDownloadViewGroup;

    .line 1286
    sput-object v1, Lcom/glu/android/GameRenderer;->instance:Lcom/glu/android/GameRenderer;

    .line 1287
    sput-object v1, Lcom/glu/android/GluVideoView;->instance:Lcom/glu/android/GluVideoView;

    .line 1288
    sput-object v1, Lcom/glu/android/GluCursor;->instance:Lcom/glu/android/GluCursor;

    .line 1289
    sput-object v1, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    .line 1290
    sput-object v1, Lcom/glu/android/GluWebView;->instance:Lcom/glu/android/GluWebView;

    .line 1291
    sput-object v1, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    .line 1292
    invoke-static {}, Lcom/glu/android/GluAds;->destroyInstance()V

    .line 1293
    sput-object v1, Lcom/glu/android/DMAVideoView;->instance:Lcom/glu/android/DMAVideoView;

    .line 1294
    sput-object v1, Lcom/glu/android/DeviceMovieActivity;->instance:Lcom/glu/android/DeviceMovieActivity;

    .line 1295
    sput-object v1, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    .line 1296
    sput-object v1, Lcom/glu/android/GluPaypal;->instance:Lcom/glu/android/GluPaypal;

    .line 1297
    sput-object v1, Lcom/glu/android/GluFBConnect;->instance:Lcom/glu/android/GluFBConnect;

    .line 1298
    sput-object v1, Lcom/glu/android/GNSWidgetCollection;->instance:Lcom/glu/android/GNSWidgetCollection;

    .line 1299
    sput-object v1, Lcom/glu/android/GlobalNav;->instance:Lcom/glu/android/GlobalNav;

    .line 1300
    sput-object v1, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    .line 1301
    invoke-static {}, Lcom/glu/android/IAP;->destroyIAPInstance()V

    .line 1302
    sput-object v1, Lcom/glu/android/GluVOIP;->instance:Lcom/glu/android/GluVOIP;

    .line 1303
    sput-object v1, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    .line 1304
    const/4 v0, 0x3

    invoke-static {v0, v2, v1}, Lcom/glu/android/GluPlayHaven;->playHavenEvent(II[B)I

    .line 1305
    return-void
.end method

.method public determineDisplayListConfig()I
    .locals 1
    const/4 v0, 0x0

    return v0
.end method

.method public determineLowEndBuild()V
    .locals 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/GameLet;->m_lowEndBuild:Z

    return-void
.end method

.method public endMovieView()V
    .locals 2

    .prologue
    .line 768
    iget-object v0, p0, Lcom/glu/android/GameLet;->m_viewManipulationHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 769
    return-void
.end method

.method public finishApp()V
    .locals 1

    .prologue
    .line 1441
    const-string v0, "finishApp() called"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1443
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->finish()V

    .line 1444
    return-void
.end method

.method public fixDirectoryPaths()V
    .locals 9

    .prologue
    .line 398
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/glu/android/GluUtil;->getOldLocalSaveDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 399
    .local v3, "oldDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/glu/android/GluUtil;->getLocalSaveDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 401
    .local v2, "newDir":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Save dir: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/glu/android/GluUtil;->getLocalSaveDirectory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 405
    const-string v5, "Serious error: Cannot create a local save directory!"

    invoke-static {v5}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 432
    :cond_0
    return-void

    .line 409
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 411
    .local v0, "files":[Ljava/io/File;
    array-length v5, v0

    if-lez v5, :cond_2

    .line 412
    const-string v5, "Old location for save files found. Moving..."

    invoke-static {v5}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 414
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_0

    .line 416
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 414
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 420
    :cond_3
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".big"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 421
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 424
    :cond_4
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/glu/android/GluUtil;->getRelativeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 426
    .local v4, "relativeFilename":Ljava/lang/String;
    aget-object v5, v0, v1

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/glu/android/GluUtil;->getLocalSaveDirectory()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/glu/android/GluUtil;->filePathWithEnder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/glu/android/GluUtil;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 427
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 429
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " copy failed somehow..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public forcedUpgradeLaunch(Z)V
    .locals 2
    .param p1, "exitOnLaunch"    # Z

    .prologue
    .line 1478
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v0, v0, Lcom/glu/android/GameLet;->m_nativeProperties:Lcom/glu/android/CaseInsensitiveHash;

    const-string v1, "Glu-Forced-Upgrade-URL"

    invoke-virtual {v0, v1}, Lcom/glu/android/CaseInsensitiveHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/glu/android/GameLet;->platformRequest(Ljava/lang/String;Z)V

    .line 1479
    return-void
.end method

.method public gameDisabledWakeLock()V
    .locals 1

    .prologue
    .line 1066
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/GameLet;->m_wakeLockDisabledByGame:Z

    .line 1067
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->configureWakeLock()V

    .line 1068
    return-void
.end method

.method public gameEnabledWakeLock()V
    .locals 1

    .prologue
    .line 1072
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/GameLet;->m_wakeLockDisabledByGame:Z

    .line 1073
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->configureWakeLock()V

    .line 1074
    return-void
.end method

.method public getBaseBuildVariant()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/glu/android/GameLet;->m_buildVariant:I

    rem-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public handleModalDialogClosed()V
    .locals 2

    .prologue
    .line 1013
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/glu/android/GameLet;->m_lastDialogCloseAt:J

    .line 1014
    return-void
.end method

.method public handlerCloseModalDialog()V
    .locals 2

    .prologue
    .line 797
    iget-object v0, p0, Lcom/glu/android/GameLet;->m_viewManipulationHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 798
    return-void
.end method

.method public handlerDisplayTapjoyInterface()V
    .locals 2

    .prologue
    .line 807
    iget-object v0, p0, Lcom/glu/android/GameLet;->m_viewManipulationHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 808
    return-void
.end method

.method public handlerInitTapjoyUserData()V
    .locals 2

    .prologue
    .line 802
    iget-object v0, p0, Lcom/glu/android/GameLet;->m_viewManipulationHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 803
    return-void
.end method

.method public handlerInitializeOpenFeint()V
    .locals 2

    .prologue
    .line 827
    iget-object v0, p0, Lcom/glu/android/GameLet;->m_viewManipulationHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 828
    return-void
.end method

.method public handlerOpenModalDialog()V
    .locals 2

    .prologue
    .line 791
    iget-boolean v0, p0, Lcom/glu/android/GameLet;->destroyedFromNative:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/glu/android/GameLet;->destroyedFromAndroid:Z

    if-nez v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/glu/android/GameLet;->m_viewManipulationHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 793
    :cond_0
    return-void
.end method

.method public handlerShowTapjoyIAPInterface()V
    .locals 2

    .prologue
    .line 812
    iget-object v0, p0, Lcom/glu/android/GameLet;->m_viewManipulationHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 813
    return-void
.end method

.method public handlerSimulateBackKey()V
    .locals 2

    .prologue
    .line 822
    iget-object v0, p0, Lcom/glu/android/GameLet;->m_viewManipulationHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 823
    return-void
.end method

.method public handlerSimulateHomeKey()V
    .locals 2

    .prologue
    .line 817
    iget-object v0, p0, Lcom/glu/android/GameLet;->m_viewManipulationHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 818
    return-void
.end method

.method public handlerSwitchToResView()V
    .locals 2

    .prologue
    .line 783
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 784
    iget-object v0, p0, Lcom/glu/android/GameLet;->dummyView:Lcom/glu/android/GameLet$DummyGLView;

    invoke-virtual {v0}, Lcom/glu/android/GameLet$DummyGLView;->onPause()V

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/glu/android/GameLet;->m_viewManipulationHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 786
    return-void
.end method

.method public isKeyboardOpen()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1635
    invoke-static {}, Lcom/glu/android/Device;->usesPSPControls()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/glu/android/GameLet;->m_platformVersionI:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_2

    .line 1636
    iget v2, p0, Lcom/glu/android/GameLet;->m_keyboardState:I

    if-ne v2, v0, :cond_1

    .line 1638
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1636
    goto :goto_0

    .line 1638
    :cond_2
    iget v2, p0, Lcom/glu/android/GameLet;->m_keyboardState:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isMoreGamesAvailable()Z
    .locals 2

    .prologue
    .line 1468
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v0, v0, Lcom/glu/android/GameLet;->m_nativeProperties:Lcom/glu/android/CaseInsensitiveHash;

    const-string v1, "Glu-Upsell-URL"

    invoke-virtual {v0, v1}, Lcom/glu/android/CaseInsensitiveHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadDummyView()V
    .locals 2

    .prologue
    .line 617
    invoke-static {}, Lcom/glu/android/Debug;->displayIntegrityModal()V

    .line 619
    sget-boolean v0, Lcom/glu/android/Debug;->sm_appMustClose:Z

    if-nez v0, :cond_1

    .line 621
    new-instance v0, Lcom/glu/android/GameLet$DummyGLView;

    invoke-direct {v0, p0}, Lcom/glu/android/GameLet$DummyGLView;-><init>(Lcom/glu/android/GameLet;)V

    iput-object v0, p0, Lcom/glu/android/GameLet;->dummyView:Lcom/glu/android/GameLet$DummyGLView;

    .line 622
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget v0, v0, Lcom/glu/android/GameLet;->m_platformVersionI:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 623
    iget-object v0, p0, Lcom/glu/android/GameLet;->dummyView:Lcom/glu/android/GameLet$DummyGLView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/glu/android/GluUtil;->reflectedViewSetSystemUiVisibility(Landroid/view/View;I)V

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/glu/android/GameLet;->dummyView:Lcom/glu/android/GameLet$DummyGLView;

    invoke-virtual {p0, v0}, Lcom/glu/android/GameLet;->setContentView(Landroid/view/View;)V

    .line 626
    :cond_1
    return-void
.end method

.method public loadGame()V
    .locals 1

    .prologue
    .line 596
    const-string v0, "EVENT_NATIVE_START"

    invoke-static {v0}, Lcom/glu/android/GluFlurry;->logEvent(Ljava/lang/String;)I

    .line 599
    new-instance v0, Lcom/glu/android/DeviceSound;

    invoke-direct {v0}, Lcom/glu/android/DeviceSound;-><init>()V

    .line 601
    invoke-static {}, Lcom/glu/android/Debug;->printPathFiles()V

    .line 604
    new-instance v0, Lcom/glu/android/GluFrameLayout;

    invoke-direct {v0, p0}, Lcom/glu/android/GluFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/glu/android/GameLet;->gameViewParent:Lcom/glu/android/GluFrameLayout;

    .line 605
    iget-object v0, p0, Lcom/glu/android/GameLet;->gameViewParent:Lcom/glu/android/GluFrameLayout;

    invoke-virtual {v0}, Lcom/glu/android/GluFrameLayout;->initGameLayout()V

    .line 607
    iget-object v0, p0, Lcom/glu/android/GameLet;->gameViewParent:Lcom/glu/android/GluFrameLayout;

    invoke-virtual {p0, v0}, Lcom/glu/android/GameLet;->setContentView(Landroid/view/View;)V

    .line 608
    iget-object v0, p0, Lcom/glu/android/GameLet;->gameViewParent:Lcom/glu/android/GluFrameLayout;

    invoke-virtual {v0}, Lcom/glu/android/GluFrameLayout;->requestFocus()Z

    .line 611
    return-void
.end method

.method public loadResourceMenu()V
    .locals 19

    .prologue
    .line 630
    const-string v1, "EVENT_JAVA_START"

    invoke-static {v1}, Lcom/glu/android/GluFlurry;->logEvent(Ljava/lang/String;)I

    .line 632
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v1

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x1e0

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/glu/android/GluUtil;->sm_canPlayVideo:Z

    .line 634
    const-string v1, "~~ loadResourceMenu()"

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 635
    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/GameLet;->secondRoundCreate()V

    .line 637
    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/GameLet;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v16

    .line 640
    .local v16, "_display":Landroid/view/Display;
    sget-object v1, Lcom/glu/android/GameLet;->LIBRARY:Ljava/lang/String;

    invoke-static {v1}, Lcom/glu/android/GluPlayHaven;->setATLibrary(Ljava/lang/String;)V

    .line 641
    sget-object v1, Lcom/glu/android/GameLet;->LIBRARY:Ljava/lang/String;

    invoke-static {v1}, Lcom/glu/android/GluUtil;->stringToNativeByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/glu/android/GluJNI;->initJNILink([BI)I

    move-result v18

    .line 643
    .local v18, "res":I
    if-eqz v18, :cond_1

    .line 645
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JNI link failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 632
    .end local v16    # "_display":Landroid/view/Display;
    .end local v18    # "res":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 649
    .restart local v16    # "_display":Landroid/view/Display;
    .restart local v18    # "res":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/GameLet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    .line 650
    .local v17, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, v17

    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/glu/android/GameLet;->m_keyboardSupported:Z

    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keyboard: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/glu/android/GameLet;->m_keyboardSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 654
    sget-boolean v1, Lcom/glu/android/Settings;->ADS_ENABLED:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/glu/android/GameLet;->m_lowEndBuild:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/glu/android/GameLet;->m_buildVariant:I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/glu/android/GameLet;->m_keyboardSupported:Z

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/glu/android/GameLet;->m_accelerometerSupported:Z

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/glu/android/GameLet;->m_gyroscopeSupported:Z

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/glu/android/GameLet;->m_multiTouchSupported:Z

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    :goto_7
    invoke-static {}, Lcom/glu/android/Device;->multiTouchBroken()Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    :goto_8
    sget-object v10, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    if-nez v10, :cond_a

    const/4 v10, 0x1

    :goto_9
    invoke-static {}, Lcom/glu/android/Device;->isLowHeapVGA()Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v11, 0x1

    :goto_a
    sget-boolean v12, Lcom/glu/android/Settings;->ONLINE_PLAY_DISABLED:Z

    if-eqz v12, :cond_c

    const/4 v12, 0x1

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/GameLet;->determineDisplayListConfig()I

    move-result v13

    const/4 v14, 0x0

    invoke-static {}, Lcom/glu/android/Device;->usesPSPControls()Z

    move-result v15

    if-eqz v15, :cond_d

    const/4 v15, 0x1

    :goto_c
    invoke-static/range {v1 .. v15}, Lcom/glu/android/GluJNI;->setJavaGeneratedConstants(IIIIIIIIIIIIIII)V

    .line 662
    new-instance v1, Lcom/glu/android/ResDownloadViewGroup;

    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-direct {v1, v2}, Lcom/glu/android/ResDownloadViewGroup;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/glu/android/GameLet;->initialMenuView:Lcom/glu/android/ResDownloadViewGroup;

    .line 664
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/glu/android/GameLet;->initialMenuView:Lcom/glu/android/ResDownloadViewGroup;

    invoke-virtual {v1}, Lcom/glu/android/ResDownloadViewGroup;->init()V

    .line 665
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/glu/android/GameLet;->initialMenuView:Lcom/glu/android/ResDownloadViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/glu/android/GameLet;->setContentView(Landroid/view/View;)V

    .line 666
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/glu/android/GameLet;->initialMenuView:Lcom/glu/android/ResDownloadViewGroup;

    invoke-virtual {v1}, Lcom/glu/android/ResDownloadViewGroup;->requestFocus()Z

    .line 668
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/glu/android/GameLet;->dummyView:Lcom/glu/android/GameLet$DummyGLView;

    .line 669
    return-void

    .line 650
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 654
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    goto :goto_7

    :cond_9
    const/4 v9, 0x0

    goto :goto_8

    :cond_a
    const/4 v10, 0x0

    goto :goto_9

    :cond_b
    const/4 v11, 0x0

    goto :goto_a

    :cond_c
    const/4 v12, 0x0

    goto :goto_b

    :cond_d
    const/4 v15, 0x0

    goto :goto_c
.end method

.method public moreGamesLaunch()V
    .locals 3

    .prologue
    .line 1463
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v0, v0, Lcom/glu/android/GameLet;->m_nativeProperties:Lcom/glu/android/CaseInsensitiveHash;

    const-string v1, "Glu-Upsell-URL"

    invoke-virtual {v0, v1}, Lcom/glu/android/CaseInsensitiveHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/glu/android/GameLet;->platformRequest(Ljava/lang/String;ZZ)V

    .line 1464
    return-void
.end method

.method public nativeDestroying()Z
    .locals 1

    .prologue
    .line 1453
    iget-boolean v0, p0, Lcom/glu/android/GameLet;->m_destroyQueued:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/glu/android/GameLet;->destroyedFromNative:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/glu/android/GameLet;->destroyedFromAndroid:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nativeNotReady()Z
    .locals 1

    .prologue
    .line 1448
    iget-boolean v0, p0, Lcom/glu/android/GameLet;->m_destroyQueued:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/glu/android/GameLet;->destroyedFromNative:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/glu/android/GameLet;->destroyedFromAndroid:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/glu/android/GameLet;->m_JNIinit:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nativeSuspended()Z
    .locals 1

    .prologue
    .line 1458
    iget-boolean v0, p0, Lcom/glu/android/GameLet;->m_nativeSuspended:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .prologue
    .line 1328
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->nativeNotReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1331
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1388
    if-nez p1, :cond_1

    .line 1390
    const-string v0, "Request code 0 -- assuming onActivityResult not configured."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1419
    :cond_0
    :goto_0
    return-void

    .line 1392
    :cond_1
    const v0, -0x53521fe

    if-ne p1, v0, :cond_2

    .line 1394
    sget-object v0, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    instance-of v0, v0, Lcom/glu/android/GluBokuIAP;

    if-eqz v0, :cond_0

    .line 1395
    sget-object v0, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    check-cast v0, Lcom/glu/android/GluBokuIAP;

    invoke-virtual {v0, p1, p2, p3}, Lcom/glu/android/GluBokuIAP;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0

    .line 1397
    :cond_2
    const v0, -0x53521ff

    if-ne p1, v0, :cond_3

    .line 1400
    invoke-static {p1, p2, p3}, Lcom/glu/android/GluPaypal;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 1402
    :cond_3
    const v0, -0x53521fd

    if-eq p1, v0, :cond_0

    .line 1406
    const v0, -0x53521fc

    if-eq p1, v0, :cond_0

    .line 1410
    const v0, -0x53521fb

    if-ne p1, v0, :cond_4

    .line 1413
    sget-object v0, Lcom/glu/android/GluFBConnect;->instance:Lcom/glu/android/GluFBConnect;

    iget-object v0, v0, Lcom/glu/android/GluFBConnect;->m_facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/android/Facebook;->authorizeCallback(IILandroid/content/Intent;)V

    goto :goto_0

    .line 1417
    :cond_4
    const-string v0, "Unhandled onActivityResult()"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1018
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->handleModalDialogClosed()V

    .line 1019
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1025
    const/4 v1, 0x1

    .line 1027
    .local v1, "fail":Z
    iget-object v2, p0, Lcom/glu/android/GameLet;->m_dialogCallback:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 1030
    :try_start_0
    iget-object v2, p0, Lcom/glu/android/GameLet;->m_dialogCallback:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1031
    const/4 v1, 0x0

    .line 1037
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 1039
    const-string v2, "No callback provided (or usable) for this dialog. This onClick action will close the dialog."

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->handleModalDialogClosed()V

    .line 1042
    iget-object v2, p0, Lcom/glu/android/GameLet;->m_modalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1044
    :cond_1
    return-void

    .line 1032
    :catch_0
    move-exception v0

    .line 1033
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "Error: Exception with the modal dialog callback."

    invoke-static {v2, v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 674
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/glu/android/GameLet;->hideSystemUI(Landroid/app/Activity;)V

    .line 680
    invoke-virtual {p0, v3}, Lcom/glu/android/GameLet;->destroySingletons(Z)V

    .line 681
    sput-object p0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    .line 682
    const-string v1, "~~ onCreate"

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 683
    invoke-static {p0}, Lcom/glu/android/OfflineNotificationManager;->loadONMService(Landroid/content/Context;)V

    .line 684
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/glu/android/GameLet;->m_lastDialogCloseAt:J

    .line 685
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 687
    .local v0, "_display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/glu/android/GameLet;->m_screenWidth:I

    .line 688
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/glu/android/GameLet;->m_screenHeight:I

    .line 690
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->fixDirectoryPaths()V

    .line 691
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->retrieveDeviceInformation()V

    .line 692
    invoke-static {}, Lcom/glu/android/Debug;->verifyIntegrity()V

    .line 693
    invoke-static {}, Lcom/glu/android/GluUtil;->createRandomizer()V

    .line 694
    invoke-static {p0}, Lcom/glu/android/GluUtil;->doStandardActivityConfiguration(Landroid/app/Activity;)V

    .line 695
    invoke-static {}, Lcom/glu/android/GluUtil;->copyPropertiesFileToNative()V

    .line 696
    invoke-static {}, Lcom/glu/android/GluUtil;->getNativeProperties()Lcom/glu/android/CaseInsensitiveHash;

    move-result-object v1

    iput-object v1, p0, Lcom/glu/android/GameLet;->m_nativeProperties:Lcom/glu/android/CaseInsensitiveHash;

    .line 697
    invoke-static {}, Lcom/glu/android/Settings;->determineSettingsFromPropertiesFile()V

    .line 698
    invoke-static {}, Lcom/glu/android/IAP;->createIAPInstance()V

    .line 699
    new-instance v1, Lcom/glu/android/GluFBConnect;

    invoke-direct {v1}, Lcom/glu/android/GluFBConnect;-><init>()V

    .line 700
    new-instance v1, Lcom/glu/android/GluTapjoy;

    invoke-direct {v1}, Lcom/glu/android/GluTapjoy;-><init>()V

    .line 701
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->determineLowEndBuild()V

    .line 702
    invoke-static {}, Lcom/glu/android/GluAds;->initializeInstance()V

    .line 703
    new-instance v1, Lcom/glu/android/GlobalNav;

    invoke-direct {v1}, Lcom/glu/android/GlobalNav;-><init>()V

    .line 704
    sget-object v1, Lcom/glu/android/GlobalNav;->instance:Lcom/glu/android/GlobalNav;

    invoke-virtual {v1}, Lcom/glu/android/GlobalNav;->init()V

    .line 705
    sget-object v1, Lcom/glu/android/GlobalNav;->instance:Lcom/glu/android/GlobalNav;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/glu/android/GlobalNav;->setVisibility(I)V

    .line 706
    invoke-static {p0}, Lcom/glu/android/GluFlurry;->init(Landroid/content/Context;)V

    .line 708
    sput-boolean v3, Lcom/glu/android/GameLet;->m_openFeintInitialized:Z

    .line 709
    new-instance v1, Lcom/glu/android/GluVOIP;

    invoke-direct {v1}, Lcom/glu/android/GluVOIP;-><init>()V

    .line 710
    invoke-static {p0}, Lcom/glu/android/GluPlayHaven;->init(Landroid/app/Activity;)V

    .line 712
    invoke-static {}, Lcom/glu/android/GluUtil;->determineMultiTouchPossible()Z

    move-result v1

    iput-boolean v1, p0, Lcom/glu/android/GameLet;->m_multiTouchSupported:Z

    .line 717
    iget-object v1, p0, Lcom/glu/android/GameLet;->m_nativeProperties:Lcom/glu/android/CaseInsensitiveHash;

    if-nez v1, :cond_0

    .line 718
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No properties file!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 720
    :cond_0
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->loadDummyView()V

    .line 721
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1234
    const-string v0, "~~ onDestroy"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1235
    invoke-static {}, Lcom/glu/android/GluFlurry;->destroy()V

    .line 1236
    sput-boolean v2, Lcom/glu/android/GameLet;->sm_lastRunDidNotDestroy:Z

    .line 1238
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->releaseSystemServices()V

    .line 1240
    sget-object v0, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    if-eqz v0, :cond_0

    .line 1241
    sget-object v0, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    invoke-virtual {v0}, Lcom/glu/android/GluDownloadResMgr;->saveFile()V

    .line 1243
    :cond_0
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-boolean v0, v0, Lcom/glu/android/GameLet;->m_JNIinit:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/glu/android/GameLet;->destroyedFromNative:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/glu/android/GameLet;->destroyedFromAndroid:Z

    if-nez v0, :cond_2

    .line 1245
    iput-boolean v3, p0, Lcom/glu/android/GameLet;->destroyedFromAndroid:Z

    .line 1247
    :goto_0
    sget-object v0, Lcom/glu/android/GameRenderer;->instance:Lcom/glu/android/GameRenderer;

    iget-boolean v0, v0, Lcom/glu/android/GameRenderer;->m_immediateSaveAfterTick:Z

    if-eqz v0, :cond_1

    .line 1248
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Lcom/glu/android/GluUtil;->sleep(J)V

    goto :goto_0

    .line 1250
    :cond_1
    const/16 v0, 0x9

    invoke-static {v0, v2, v4}, Lcom/glu/android/GluJNI;->systemEvent(II[B)I

    .line 1251
    const/4 v0, 0x3

    invoke-static {v0, v2, v4}, Lcom/glu/android/GluJNI;->systemEvent(II[B)I

    .line 1254
    :cond_2
    invoke-static {}, Lcom/glu/android/GluUtil;->backupSaveFilesToSDCard()V

    .line 1255
    invoke-static {}, Lcom/glu/android/GluUtil;->hideKeyboard()V

    .line 1257
    invoke-virtual {p0, v3}, Lcom/glu/android/GameLet;->destroySingletons(Z)V

    .line 1259
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1261
    iget-boolean v0, p0, Lcom/glu/android/GameLet;->m_needToSystemExitOnDestroy:Z

    if-eqz v0, :cond_3

    .line 1262
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 1263
    :cond_3
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 444
    sget-object v0, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    if-eqz v0, :cond_0

    .line 445
    sget-object v0, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    invoke-virtual {v0, p1, p2}, Lcom/glu/android/GluView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 447
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 436
    sget-object v0, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    if-eqz v0, :cond_0

    .line 437
    sget-object v0, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    invoke-virtual {v0, p1, p2}, Lcom/glu/android/GluView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 439
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNativeDestroyed()V
    .locals 1

    .prologue
    .line 1423
    const-string v0, "~~ onNativeDestroyed"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/GameLet;->destroyedFromNative:Z

    .line 1427
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    invoke-virtual {v0}, Lcom/glu/android/DeviceSound;->stop()V

    .line 1429
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->finishApp()V

    .line 1430
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1143
    const-string v0, "~~ onPause"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1144
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1146
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->releaseSystemServices()V

    .line 1147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/GameLet;->m_appPaused:Z

    .line 1149
    sget-object v0, Lcom/glu/android/GluVideoView;->instance:Lcom/glu/android/GluVideoView;

    if-eqz v0, :cond_0

    .line 1150
    sget-object v0, Lcom/glu/android/GluVideoView;->instance:Lcom/glu/android/GluVideoView;

    invoke-virtual {v0}, Lcom/glu/android/GluVideoView;->stopPlayback()V

    .line 1152
    :cond_0
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->nativeNotReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1155
    :goto_0
    return-void

    .line 1154
    :cond_1
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->suspendNative()V

    goto :goto_0
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 1321
    const-string v0, "~~ onRestart"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1323
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 1324
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1192
    const-string v0, "~~ onResume"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1193
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1195
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->registerSystemServices()V

    .line 1196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/GameLet;->m_appPaused:Z

    .line 1198
    sget-object v0, Lcom/glu/android/GluVideoView;->instance:Lcom/glu/android/GluVideoView;

    if-eqz v0, :cond_0

    .line 1199
    sget-object v0, Lcom/glu/android/GluVideoView;->instance:Lcom/glu/android/GluVideoView;

    invoke-virtual {v0}, Lcom/glu/android/GluVideoView;->destroyVideo()V

    .line 1200
    :cond_0
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->nativeNotReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1207
    :cond_1
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v9, 0x1

    .line 1337
    sget-object v5, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v5}, Lcom/glu/android/GameLet;->nativeNotReady()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1377
    :cond_0
    :goto_0
    return-void

    .line 1339
    :cond_1
    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    .line 1340
    .local v3, "sensorType":I
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 1342
    .local v4, "values":[F
    if-ne v3, v9, :cond_3

    .line 1349
    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    .line 1350
    .local v0, "maxRange":F
    float-to-double v5, v0

    const-wide/16 v7, 0x0

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_2

    .line 1351
    const v0, 0x411ce80a

    .line 1352
    :cond_2
    const/4 v5, 0x0

    aget v5, v4, v5

    neg-float v5, v5

    div-float/2addr v5, v0

    invoke-static {v5}, Lcom/glu/android/GluUtil;->floatToFixed(F)I

    move-result v1

    .line 1353
    .local v1, "nativeX":I
    aget v5, v4, v9

    const v6, 0x411ce80a

    div-float/2addr v5, v6

    invoke-static {v5}, Lcom/glu/android/GluUtil;->floatToFixed(F)I

    move-result v2

    .line 1354
    .local v2, "nativeY":I
    const/4 v5, 0x2

    aget v5, v4, v5

    neg-float v5, v5

    div-float/2addr v5, v0

    invoke-static {v5}, Lcom/glu/android/GluUtil;->floatToFixed(F)I

    goto :goto_0

    .line 1373
    .end local v0    # "maxRange":F
    .end local v1    # "nativeX":I
    .end local v2    # "nativeY":I
    :cond_3
    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 1048
    const-string v0, "~~ onStart"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1049
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1051
    invoke-static {}, Lcom/glu/android/IAP;->onAppStart()V

    .line 1052
    invoke-static {}, Lcom/glu/android/GluAds;->onAppStart()V

    .line 1053
    invoke-static {}, Lcom/glu/android/GluFlurry;->resume()V

    .line 1054
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1309
    const-string v0, "~~ onStop"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1310
    const/4 v0, 0x1

    sput-boolean v0, Lcom/glu/android/GameLet;->sm_lastRunDidNotDestroy:Z

    .line 1312
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1314
    invoke-static {}, Lcom/glu/android/IAP;->onAppStop()V

    .line 1315
    invoke-static {}, Lcom/glu/android/GluAds;->onAppStop()V

    .line 1316
    invoke-static {}, Lcom/glu/android/GluFlurry;->pause()V

    .line 1317
    return-void
.end method

.method public openGNSDialog()V
    .locals 2

    .prologue
    .line 773
    iget-object v0, p0, Lcom/glu/android/GameLet;->m_viewManipulationHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 774
    return-void
.end method

.method public openWebView()V
    .locals 3

    .prologue
    .line 745
    sget-object v0, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/glu/android/GluCanvasOverlayGroup;->setViewVisibility(IZ)V

    .line 746
    return-void
.end method

.method public platformRequest(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "exitOnLaunch"    # Z

    .prologue
    .line 1483
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/glu/android/GameLet;->platformRequest(Ljava/lang/String;ZZ)V

    .line 1484
    return-void
.end method

.method public platformRequest(Ljava/lang/String;ZZ)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "exitOnLaunch"    # Z
    .param p3, "doNotUseInternalView"    # Z

    .prologue
    .line 1488
    if-nez p1, :cond_1

    .line 1528
    :cond_0
    :goto_0
    return-void

    .line 1491
    :cond_1
    const-string v3, "micro.glu.com"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1494
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IAP url found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1498
    :cond_2
    const-string v3, "calling platorm request"

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1500
    if-nez p2, :cond_4

    sget-object v3, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    if-eqz v3, :cond_4

    if-nez p3, :cond_4

    .line 1502
    sget-object v3, Lcom/glu/android/GluWebView;->instance:Lcom/glu/android/GluWebView;

    if-nez v3, :cond_3

    .line 1503
    const-string v3, "Internal web view is null..."

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1506
    :cond_3
    sget-object v3, Lcom/glu/android/GluWebView;->instance:Lcom/glu/android/GluWebView;

    invoke-virtual {v3, p1}, Lcom/glu/android/GluWebView;->loadUrl(Ljava/lang/String;)V

    .line 1507
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->openWebView()V

    goto :goto_0

    .line 1514
    :cond_4
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1515
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1516
    .local v1, "i":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1517
    invoke-virtual {p0, v1}, Lcom/glu/android/GameLet;->startActivity(Landroid/content/Intent;)V

    .line 1519
    if-eqz p2, :cond_0

    .line 1520
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->finishApp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1522
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 1524
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public queueDestroy()V
    .locals 1

    .prologue
    .line 1434
    const-string v0, "~~ queueDestroy"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/GameLet;->m_destroyQueued:Z

    .line 1437
    return-void
.end method

.method public registerSystemServices()V
    .locals 0

    .prologue
    .line 1112
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->acquireWakeLock()V

    .line 1139
    return-void
.end method

.method public releaseSystemServices()V
    .locals 0

    .prologue
    .line 1102
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->releaseWakeLock()V

    .line 1108
    return-void
.end method

.method public releaseWakeLock()V
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/glu/android/GameLet;->m_wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 1080
    iget-object v0, p0, Lcom/glu/android/GameLet;->m_wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/glu/android/GameLet;->m_wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1082
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/GameLet;->m_wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1084
    :cond_1
    return-void
.end method

.method public reportKeyboardState()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1604
    invoke-static {}, Lcom/glu/android/Device;->usesPSPControls()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/glu/android/GameLet;->m_platformVersionI:I

    const/4 v5, 0x5

    if-lt v4, v5, :cond_3

    .line 1606
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-static {v4}, Lcom/glu/android/GluUtil;->reflectedConfigurationNavigationHidden(Landroid/content/res/Configuration;)I

    move-result v1

    .line 1609
    .local v1, "newKeyboardState":I
    const/4 v0, 0x0

    .line 1610
    .local v0, "changed":Z
    iget v4, p0, Lcom/glu/android/GameLet;->m_keyboardState:I

    if-eq v4, v1, :cond_0

    .line 1611
    const/4 v0, 0x1

    .line 1613
    :cond_0
    iput v1, p0, Lcom/glu/android/GameLet;->m_keyboardState:I

    .line 1615
    if-eqz v0, :cond_1

    .line 1616
    iget v4, p0, Lcom/glu/android/GameLet;->m_keyboardState:I

    if-ne v4, v2, :cond_2

    :goto_0
    invoke-static {v6, v2, v7}, Lcom/glu/android/GluJNI;->systemEventSafe(II[B)V

    .line 1631
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v3

    .line 1616
    goto :goto_0

    .line 1620
    .end local v0    # "changed":Z
    .end local v1    # "newKeyboardState":I
    :cond_3
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v1, v4, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1622
    .restart local v1    # "newKeyboardState":I
    const/4 v0, 0x0

    .line 1623
    .restart local v0    # "changed":Z
    iget v4, p0, Lcom/glu/android/GameLet;->m_keyboardState:I

    if-eq v4, v1, :cond_4

    .line 1624
    const/4 v0, 0x1

    .line 1626
    :cond_4
    iput v1, p0, Lcom/glu/android/GameLet;->m_keyboardState:I

    .line 1628
    if-eqz v0, :cond_1

    .line 1629
    iget v4, p0, Lcom/glu/android/GameLet;->m_keyboardState:I

    if-ne v4, v2, :cond_5

    :goto_2
    invoke-static {v6, v2, v7}, Lcom/glu/android/GluJNI;->systemEventSafe(II[B)V

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_2
.end method

.method public resumeNative()V
    .locals 1

    .prologue
    .line 1211
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->nativeNotReady()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/glu/android/GameLet;->m_gnsIsOpen:Z

    if-eqz v0, :cond_1

    .line 1230
    :cond_0
    :goto_0
    return-void

    .line 1213
    :cond_1
    iget-boolean v0, p0, Lcom/glu/android/GameLet;->m_nativeSuspended:Z

    if-eqz v0, :cond_0

    .line 1219
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    invoke-virtual {v0}, Lcom/glu/android/DeviceSound;->resume()V

    .line 1221
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    invoke-virtual {v0}, Lcom/glu/android/DeviceSound;->resumeMP3()V

    .line 1223
    sget-object v0, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    if-eqz v0, :cond_2

    .line 1224
    sget-object v0, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    invoke-virtual {v0}, Lcom/glu/android/GluView;->onResume()V

    .line 1226
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/GameLet;->m_nativeSuspended:Z

    .line 1228
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/glu/android/GluJNI;->systemEvent(I)V

    goto :goto_0
.end method

.method public retrieveDeviceInformation()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 476
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 479
    .local v4, "locale":Ljava/lang/String;
    const-string v9, "pt"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "br"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 480
    const-string v4, "ptbr"

    .line 482
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Locale found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "   country="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 484
    iput-object v4, p0, Lcom/glu/android/GameLet;->m_locale:Ljava/lang/String;

    .line 485
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/glu/android/GameLet;->m_language:Ljava/lang/String;

    .line 486
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/glu/android/GameLet;->m_countryCode:Ljava/lang/String;

    .line 488
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "android_id"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/glu/android/GameLet;->m_deviceID:Ljava/lang/String;

    .line 489
    iget-object v9, p0, Lcom/glu/android/GameLet;->m_deviceID:Ljava/lang/String;

    if-nez v9, :cond_1

    .line 490
    const-string v9, "unknown"

    iput-object v9, p0, Lcom/glu/android/GameLet;->m_deviceID:Ljava/lang/String;

    .line 492
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UDID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/glu/android/GameLet;->m_deviceID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 495
    :try_start_0
    const-string v9, "android.os.Build"

    const-string v10, "SERIAL"

    invoke-static {v9, v10}, Lcom/glu/android/GluUtil;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, p0, Lcom/glu/android/GameLet;->m_serial:Ljava/lang/String;

    .line 496
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Serial found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/glu/android/GameLet;->m_serial:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :goto_0
    const-string v9, "1"

    iput-object v9, p0, Lcom/glu/android/GameLet;->m_versionMajor:Ljava/lang/String;

    .line 506
    const-string v9, "0"

    iput-object v9, p0, Lcom/glu/android/GameLet;->m_versionMinor:Ljava/lang/String;

    .line 507
    const-string v9, "0"

    iput-object v9, p0, Lcom/glu/android/GameLet;->m_versionMicro:Ljava/lang/String;

    .line 509
    :try_start_1
    invoke-static {}, Lcom/glu/android/GluUtil;->grabVersionString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/glu/android/GameLet;->m_fullVersion:Ljava/lang/String;

    .line 510
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Filtered version string: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/glu/android/GameLet;->m_fullVersion:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 511
    iget-object v9, p0, Lcom/glu/android/GameLet;->m_fullVersion:Ljava/lang/String;

    const-string v10, "."

    invoke-static {v9, v10}, Lcom/glu/android/GluUtil;->simpleTokenizer(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v8

    .line 512
    .local v8, "versionTokens":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, p0, Lcom/glu/android/GameLet;->m_versionMajor:Ljava/lang/String;

    .line 513
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, p0, Lcom/glu/android/GameLet;->m_versionMinor:Ljava/lang/String;

    .line 514
    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, p0, Lcom/glu/android/GameLet;->m_versionMicro:Ljava/lang/String;

    .line 515
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Version is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/glu/android/GameLet;->m_versionMajor:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/glu/android/GameLet;->m_versionMinor:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/glu/android/GameLet;->m_versionMicro:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 520
    .end local v8    # "versionTokens":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NOW is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 521
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Platform version codename: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 522
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Platform version incremental: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 523
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Platform version release: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 524
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Platform version SDK: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 525
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Platform version SDK (int): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 526
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Device model: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 527
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Device manufacturer: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 528
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Device \"name of industrial design\": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 529
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Device product name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 530
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Device fingerprint: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 531
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Device CPU: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 532
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Device Brand/Carrier: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 533
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Device Board: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 534
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Build Host: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 535
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Build Identifier: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 536
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Build Tags: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 537
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Build Time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-wide v10, Landroid/os/Build;->TIME:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 538
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Build Type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 539
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Build User: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 542
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/glu/android/GameLet;->m_platformVersion:Ljava/lang/String;

    .line 543
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v9, p0, Lcom/glu/android/GameLet;->m_platformVersionI:I

    .line 544
    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/16 v10, 0x13

    invoke-static {v9, v10}, Lcom/glu/android/GluUtil;->safeStringTruncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/glu/android/GameLet;->m_platformVersionNice:Ljava/lang/String;

    .line 548
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    .line 550
    .local v7, "tz":Ljava/util/TimeZone;
    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x63

    invoke-static {v9, v10}, Lcom/glu/android/GluUtil;->safeStringTruncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/glu/android/GameLet;->m_timezone:Ljava/lang/String;

    .line 551
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Time zone is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/glu/android/GameLet;->m_timezone:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 554
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/16 v10, 0x31

    invoke-static {v9, v10}, Lcom/glu/android/GluUtil;->safeStringTruncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/glu/android/GameLet;->m_deviceModel:Ljava/lang/String;

    .line 555
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Passing as device model: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/glu/android/GameLet;->m_deviceModel:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 558
    iget-object v9, p0, Lcom/glu/android/GameLet;->m_deviceModel:Ljava/lang/String;

    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v11, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v9, v10, v11}, Lcom/glu/android/Device;->setupDeviceSpec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/glu/android/GameLet;->m_packageID:Ljava/lang/String;

    .line 562
    iget v9, p0, Lcom/glu/android/GameLet;->m_platformVersionI:I

    iget-object v10, p0, Lcom/glu/android/GameLet;->m_deviceModel:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/glu/android/GluUtil;->determineVideoPlaybackSettings(ILjava/lang/String;)V

    .line 565
    const-string v9, "Printing out system properties, k=v pairs..."

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 566
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v5

    .line 567
    .local v5, "props":Ljava/util/Properties;
    invoke-virtual {v5}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v3

    .line 568
    .local v3, "keysS":Ljava/util/Enumeration;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 569
    .local v2, "keys":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 570
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    .line 497
    .end local v2    # "keys":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v3    # "keysS":Ljava/util/Enumeration;
    .end local v5    # "props":Ljava/util/Properties;
    .end local v7    # "tz":Ljava/util/TimeZone;
    :catch_0
    move-exception v6

    .line 498
    .local v6, "t":Ljava/lang/Throwable;
    iput-object v11, p0, Lcom/glu/android/GameLet;->m_serial:Ljava/lang/String;

    .line 499
    const-string v9, "Could not get serial."

    invoke-static {v9, v6}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 516
    .end local v6    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 517
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Warning: Version string unexpected format. Version is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/glu/android/GameLet;->m_versionMajor:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/glu/android/GameLet;->m_versionMinor:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/glu/android/GameLet;->m_versionMicro:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 571
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v2    # "keys":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v3    # "keysS":Ljava/util/Enumeration;
    .restart local v5    # "props":Ljava/util/Properties;
    .restart local v7    # "tz":Ljava/util/TimeZone;
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v1, v9, :cond_3

    .line 572
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v11, "null"

    invoke-virtual {v5, v9, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 571
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 573
    :cond_3
    return-void
.end method

.method public secondRoundCreate()V
    .locals 1

    .prologue
    .line 726
    const-string v0, "~~ secondRoundCreate()"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 728
    invoke-static {}, Lcom/glu/android/GameLet;->setLibraryAndChecksum()V

    .line 729
    new-instance v0, Lcom/glu/android/GluDownloadResMgr;

    invoke-direct {v0}, Lcom/glu/android/GluDownloadResMgr;-><init>()V

    .line 730
    sget-boolean v0, Lcom/glu/android/Settings;->NO_SD_BACKUP:Z

    if-nez v0, :cond_0

    .line 732
    invoke-static {}, Lcom/glu/android/GluUtil;->restoreFilesFromSDCard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    invoke-static {}, Lcom/glu/android/GluUtil;->notifyUserOfDataRestore()V

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    invoke-static {}, Lcom/glu/android/GluUtil;->discloseDataBackupPolicy()V

    goto :goto_0
.end method

.method public setBuildVariant()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput v0, p0, Lcom/glu/android/GameLet;->m_buildVariant:I

    return-void
.end method

.method public startGame()V
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/glu/android/GameLet;->m_viewManipulationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 758
    return-void
.end method

.method public suspendNative()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1159
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->nativeNotReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1188
    :cond_0
    :goto_0
    return-void

    .line 1161
    :cond_1
    iget-boolean v0, p0, Lcom/glu/android/GameLet;->m_nativeSuspended:Z

    if-nez v0, :cond_0

    .line 1163
    sget-object v0, Lcom/glu/android/GameRenderer;->instance:Lcom/glu/android/GameRenderer;

    iget-object v1, v0, Lcom/glu/android/GameRenderer;->SPECIAL_INTERRUPT_HANDLING_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1165
    :try_start_0
    sget-object v0, Lcom/glu/android/GameRenderer;->instance:Lcom/glu/android/GameRenderer;

    iget-boolean v0, v0, Lcom/glu/android/GameRenderer;->m_drawThreadInNative:Z

    if-eqz v0, :cond_3

    .line 1166
    const/16 v0, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/glu/android/GluJNI;->systemEvent(II[B)I

    .line 1169
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1175
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    invoke-virtual {v0}, Lcom/glu/android/DeviceSound;->pause()V

    .line 1177
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    invoke-virtual {v0}, Lcom/glu/android/DeviceSound;->pauseMP3()V

    .line 1179
    invoke-static {}, Lcom/glu/android/GluUtil;->hideKeyboard()V

    .line 1181
    sget-object v0, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    if-eqz v0, :cond_2

    .line 1182
    sget-object v0, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    invoke-virtual {v0}, Lcom/glu/android/GluView;->onPause()V

    .line 1184
    :cond_2
    iput-boolean v4, p0, Lcom/glu/android/GameLet;->m_nativeSuspended:Z

    .line 1186
    invoke-static {v4}, Lcom/glu/android/GluJNI;->systemEvent(I)V

    goto :goto_0

    .line 1168
    :cond_3
    :try_start_1
    sget-object v0, Lcom/glu/android/GameRenderer;->instance:Lcom/glu/android/GameRenderer;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/glu/android/GameRenderer;->m_immediateSaveAfterTick:Z

    goto :goto_1

    .line 1169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public switchToMovieView()V
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Lcom/glu/android/GameLet;->m_viewManipulationHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 763
    return-void
.end method

.method public upgradeLaunch()V
    .locals 2

    .prologue
    .line 1473
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v0, v0, Lcom/glu/android/GameLet;->m_nativeProperties:Lcom/glu/android/CaseInsensitiveHash;

    const-string v1, "Glu-Demo-URL"

    invoke-virtual {v0, v1}, Lcom/glu/android/CaseInsensitiveHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/glu/android/GameLet;->platformRequest(Ljava/lang/String;Z)V

    .line 1474
    return-void
.end method
