.class public Lcom/glu/android/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/glu/android/Debug$Watermark;,
        Lcom/glu/android/Debug$Console;
    }
.end annotation


# static fields
.field public static CONSOLE:Lcom/glu/android/Debug$Console; = null

.field public static final DEBUG:Z = false

.field public static final DEBUG_FILE:Ljava/lang/String; = "debug.txt"

.field private static final DEBUG_INTEGRITY_FILE:Ljava/lang/String; = "d"

.field public static final DEBUG_LOCALES:Z

.field public static final DEBUG_LOG_TO_FILE:Z

.field public static final EGL_ATTRIBUTES:[I

.field public static final EGL_ATTRIBUTE_NAMES:[Ljava/lang/String;

.field private static m_debugFile:Ljava/io/File;

.field public static rawLine:[C

.field protected static sm_appMustClose:Z

.field protected static sm_debugPopupMessage:Ljava/lang/String;

.field protected static sm_fileInvalid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x21

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 113
    sput-object v1, Lcom/glu/android/Debug;->m_debugFile:Ljava/io/File;

    .line 170
    const/16 v0, 0x50

    new-array v0, v0, [C

    sput-object v0, Lcom/glu/android/Debug;->rawLine:[C

    .line 503
    sput-boolean v2, Lcom/glu/android/Debug;->sm_fileInvalid:Z

    .line 504
    sput-boolean v2, Lcom/glu/android/Debug;->sm_appMustClose:Z

    .line 505
    sput-object v1, Lcom/glu/android/Debug;->sm_debugPopupMessage:Ljava/lang/String;

    .line 607
    sput-object v1, Lcom/glu/android/Debug;->CONSOLE:Lcom/glu/android/Debug$Console;

    .line 1355
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/glu/android/Debug;->EGL_ATTRIBUTES:[I

    .line 1390
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "EGL_BUFFER_SIZE"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "EGL_ALPHA_SIZE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "EGL_BLUE_SIZE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "EGL_GREEN_SIZE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "EGL_RED_SIZE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "EGL_DEPTH_SIZE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EGL_STENCIL_SIZE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EGL_CONFIG_CAVEAT"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "EGL_CONFIG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EGL_LEVEL"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "EGL_MAX_PBUFFER_HEIGHT"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "EGL_MAX_PBUFFER_PIXELS"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "EGL_MAX_PBUFFER_WIDTH"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "EGL_NATIVE_RENDERABLE"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "EGL_NATIVE_VISUAL_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "EGL_NATIVE_VISUAL_TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "EGL_PRESERVED_RESOURCES"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "EGL_SAMPLES"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "EGL_SAMPLE_BUFFERS"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "EGL_SURFACE_TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "EGL_TRANSPARENT_TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "EGL_TRANSPARENT_RED_VALUE"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "EGL_TRANSPARENT_GREEN_VALUE"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "EGL_TRANSPARENT_BLUE_VALUE"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "EGL_BIND_TO_TEXTURE_RGB"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "EGL_BIND_TO_TEXTURE_RGBA"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "EGL_MIN_SWAP_INTERVAL"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "EGL_MAX_SWAP_INTERVAL"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "EGL_LUMINANCE_SIZE"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "EGL_ALPHA_MASK_SIZE"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "EGL_COLOR_BUFFER_TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "EGL_RENDERABLE_TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "EGL_CONFORMANT"

    aput-object v2, v0, v1

    sput-object v0, Lcom/glu/android/Debug;->EGL_ATTRIBUTE_NAMES:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x3020
        0x3021
        0x3022
        0x3023
        0x3024
        0x3025
        0x3026
        0x3027
        0x3028
        0x3029
        0x302a
        0x302b
        0x302c
        0x302d
        0x302e
        0x302f
        0x3030
        0x3031
        0x3032
        0x3033
        0x3034
        0x3037
        0x3036
        0x3035
        0x3039
        0x303a
        0x303b
        0x303c
        0x303d
        0x303e
        0x303f
        0x3040
        0x3042
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1288
    return-void
.end method

.method public static checkDataEmpty([B)V
    .locals 0
    .param p0, "data"    # [B

    .prologue
    .line 270
    return-void
.end method

.method public static debugEGL(Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 0
    .param p0, "egl"    # Ljavax/microedition/khronos/egl/EGL10;

    .prologue
    .line 206
    return-void
.end method

.method public static devDie(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 472
    const-string v0, "GluGame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SERIOUS ISSUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return-void
.end method

.method protected static displayIntegrityModal()V
    .locals 5

    .prologue
    .line 590
    sget-object v0, Lcom/glu/android/Debug;->sm_debugPopupMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 592
    const/high16 v0, 0x7f070000

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/glu/android/Debug;->sm_debugPopupMessage:Ljava/lang/String;

    sget-boolean v0, Lcom/glu/android/Debug;->sm_appMustClose:Z

    if-eqz v0, :cond_1

    const v0, 0x7f07000d

    :goto_0
    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "GluCallbacks"

    const-string v4, "iCallback"

    invoke-static {v3, v4}, Lcom/glu/android/GluUtil;->getMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/glu/android/GluUtil;->openModalDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 596
    :cond_0
    return-void

    .line 592
    :cond_1
    const v0, 0x7f070007

    goto :goto_0
.end method

.method private static getDebugKey()I
    .locals 5

    .prologue
    .line 557
    sget-object v3, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v3, v3, Lcom/glu/android/GameLet;->m_packageID:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 558
    const-string v3, "Critical file saved or loaded with key null."

    invoke-static {v3}, Lcom/glu/android/Debug;->devDie(Ljava/lang/String;)V

    .line 560
    :cond_0
    sget-object v3, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v3, v3, Lcom/glu/android/GameLet;->m_packageID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 561
    .local v1, "keyCA":[C
    const/4 v2, 0x0

    .line 563
    .local v2, "sum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 564
    aget-char v3, v1, v0

    rem-int/lit8 v4, v0, 0x18

    shl-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 563
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 566
    :cond_1
    return v2
.end method

.method public static getKeyEventAsString(I)Ljava/lang/String;
    .locals 2
    .param p0, "event"    # I

    .prologue
    .line 414
    if-nez p0, :cond_0

    .line 415
    const-string v0, "ACTION_DOWN"

    .line 421
    :goto_0
    return-object v0

    .line 416
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 417
    const-string v0, "ACTION_UP"

    goto :goto_0

    .line 418
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 419
    const-string v0, "ACTION_MULTIPLE"

    goto :goto_0

    .line 421
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getKeyEventAsString(Landroid/view/KeyEvent;)Ljava/lang/String;
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 411
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Lcom/glu/android/Debug;->getKeyEventAsString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMapKeys(Ljava/util/Map;)[Ljava/lang/Object;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;

    .prologue
    .line 305
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getMapValues(Ljava/util/Map;)[Ljava/lang/Object;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;

    .prologue
    .line 310
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getSourceAsString(I)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # I

    .prologue
    .line 426
    if-nez p0, :cond_0

    .line 427
    const-string v0, "SOURCE_UNKNOWN"

    .line 441
    :goto_0
    return-object v0

    .line 428
    :cond_0
    const/16 v0, 0x201

    if-ne p0, v0, :cond_1

    .line 429
    const-string v0, "SOURCE_DPAD"

    goto :goto_0

    .line 430
    :cond_1
    const/16 v0, 0x101

    if-ne p0, v0, :cond_2

    .line 431
    const-string v0, "SOURCE_KEYBOARD"

    goto :goto_0

    .line 432
    :cond_2
    const/16 v0, 0x2002

    if-ne p0, v0, :cond_3

    .line 433
    const-string v0, "SOURCE_MOUSE"

    goto :goto_0

    .line 434
    :cond_3
    const v0, 0x100008

    if-ne p0, v0, :cond_4

    .line 435
    const-string v0, "SOURCE_TOUCHPAD"

    goto :goto_0

    .line 436
    :cond_4
    const/16 v0, 0x1002

    if-ne p0, v0, :cond_5

    .line 437
    const-string v0, "SOURCE_TOUCHSCREEN"

    goto :goto_0

    .line 438
    :cond_5
    const v0, 0x10004

    if-ne p0, v0, :cond_6

    .line 439
    const-string v0, "SOURCE_TRACKBALL"

    goto :goto_0

    .line 441
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN(0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getStringSafe([Ljava/lang/Object;I)Ljava/lang/String;
    .locals 1
    .param p0, "arr"    # [Ljava/lang/Object;
    .param p1, "i"    # I

    .prologue
    .line 293
    array-length v0, p0

    if-lt p1, v0, :cond_0

    .line 294
    const-string v0, "OUTOFRANGE"

    .line 300
    :goto_0
    return-object v0

    .line 295
    :cond_0
    aget-object v0, p0, p1

    if-nez v0, :cond_1

    .line 296
    const-string v0, "NULL"

    goto :goto_0

    .line 297
    :cond_1
    aget-object v0, p0, p1

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 298
    aget-object v0, p0, p1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 300
    :cond_2
    const-string v0, "NOTSTRING"

    goto :goto_0
.end method

.method public static getTouchEventAsString(I)Ljava/lang/String;
    .locals 2
    .param p0, "event"    # I

    .prologue
    .line 397
    if-nez p0, :cond_0

    .line 398
    const-string v0, "ACTION_DOWN"

    .line 408
    :goto_0
    return-object v0

    .line 399
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 400
    const-string v0, "ACTION_UP"

    goto :goto_0

    .line 401
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 402
    const-string v0, "ACTION_MOVE"

    goto :goto_0

    .line 403
    :cond_2
    and-int/lit16 v0, p0, 0xff

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_POINTER_DOWN (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 405
    :cond_3
    and-int/lit16 v0, p0, 0xff

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_POINTER_UP (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 408
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") (probably multi-touch)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTouchEventAsString(Landroid/view/MotionEvent;)Ljava/lang/String;
    .locals 1
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 394
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Lcom/glu/android/Debug;->getTouchEventAsString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static iCallback(I)V
    .locals 1
    .param p0, "which"    # I

    .prologue
    .line 600
    sget-boolean v0, Lcom/glu/android/Debug;->sm_appMustClose:Z

    if-eqz v0, :cond_0

    .line 601
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->finishApp()V

    .line 602
    :cond_0
    return-void
.end method

.method private static loadFile()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 508
    sput-boolean v7, Lcom/glu/android/Debug;->sm_fileInvalid:Z

    .line 509
    sput-boolean v7, Lcom/glu/android/Debug;->sm_appMustClose:Z

    .line 510
    const/4 v5, 0x0

    sput-object v5, Lcom/glu/android/Debug;->sm_debugPopupMessage:Ljava/lang/String;

    .line 516
    invoke-static {}, Lcom/glu/android/Debug;->getDebugKey()I

    move-result v2

    .line 517
    .local v2, "expected":I
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/glu/android/GluUtil;->getSecureSaveDirectory()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "d"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 518
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 520
    invoke-static {}, Lcom/glu/android/Debug;->saveFile()V

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 526
    .local v4, "fis":Ljava/io/FileInputStream;
    invoke-static {v4}, Lcom/glu/android/GluUtil;->readInt(Ljava/io/FileInputStream;)I

    move-result v0

    .line 527
    .local v0, "actual":I
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 528
    if-eq v2, v0, :cond_3

    move v5, v6

    :goto_1
    sput-boolean v5, Lcom/glu/android/Debug;->sm_fileInvalid:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    .end local v0    # "actual":I
    .end local v4    # "fis":Ljava/io/FileInputStream;
    :goto_2
    sget-boolean v5, Lcom/glu/android/Debug;->sm_fileInvalid:Z

    if-eqz v5, :cond_2

    :cond_2
    sput-boolean v7, Lcom/glu/android/Debug;->sm_appMustClose:Z

    .line 536
    sget-boolean v5, Lcom/glu/android/Debug;->sm_appMustClose:Z

    if-nez v5, :cond_0

    .line 537
    invoke-static {}, Lcom/glu/android/Debug;->saveFile()V

    goto :goto_0

    .restart local v0    # "actual":I
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :cond_3
    move v5, v7

    .line 528
    goto :goto_1

    .line 529
    .end local v0    # "actual":I
    .end local v4    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 530
    .local v1, "ex":Ljava/lang/Exception;
    const-string v5, "Content of file is wrong. Counting file invalid."

    invoke-static {v5}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 531
    sput-boolean v6, Lcom/glu/android/Debug;->sm_fileInvalid:Z

    goto :goto_2
.end method

.method public static log(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 71
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 87
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 79
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 105
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 96
    return-void
.end method

.method public static log([C)V
    .locals 0
    .param p0, "ca"    # [C

    .prologue
    .line 47
    return-void
.end method

.method public static logSafe(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 56
    return-void
.end method

.method public static logSafe(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 63
    return-void
.end method

.method private static logToFile(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 117
    return-void
.end method

.method public static printClipBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/glu/android/Debug;->printClipBounds(Landroid/graphics/Rect;Ljava/lang/String;)V

    return-void
.end method

.method public static printClipBounds(Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 0
    .param p0, "r"    # Landroid/graphics/Rect;
    .param p1, "detail"    # Ljava/lang/String;

    .prologue
    .line 217
    return-void
.end method

.method public static printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .param p0, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 237
    return-void
.end method

.method public static printDirectoryRecursive(Ljava/io/File;)V
    .locals 1
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 360
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/glu/android/Debug;->printDirectoryRecursive(Ljava/io/File;I)V

    return-void
.end method

.method public static printDirectoryRecursive(Ljava/io/File;I)V
    .locals 0
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "level"    # I

    .prologue
    .line 363
    return-void
.end method

.method public static printDirectoryRecursive(Ljava/lang/String;)V
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 359
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/glu/android/Debug;->printDirectoryRecursive(Ljava/io/File;)V

    return-void
.end method

.method public static printFilesNice(Ljava/io/File;)V
    .locals 1
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 135
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/glu/android/Debug;->printFilesNice(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static printFilesNice(Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 149
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 143
    .local v0, "blah":[Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "##: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 145
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/GluUtil;->getRelativeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "[[directory]]"

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 146
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " bytes"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 148
    :cond_2
    const-string v2, " "

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static printFreeMemory()V
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/glu/android/Debug;->printFreeMemory(Ljava/lang/String;)V

    return-void
.end method

.method public static printFreeMemory(Ljava/lang/String;)V
    .locals 0
    .param p0, "point"    # Ljava/lang/String;

    .prologue
    .line 258
    return-void
.end method

.method public static printHexDump([B)V
    .locals 0
    .param p0, "data"    # [B

    .prologue
    .line 174
    return-void
.end method

.method public static printKey(Ljava/lang/String;Landroid/view/KeyEvent;)V
    .locals 0
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 453
    return-void
.end method

.method public static printMapListStringProperties(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    return-void
.end method

.method public static printMapProperties(Ljava/util/Map;)V
    .locals 0
    .param p0, "map"    # Ljava/util/Map;

    .prologue
    .line 315
    return-void
.end method

.method public static printPathFiles()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public static printRect(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 0
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 389
    return-void
.end method

.method public static printStatFs(Ljava/lang/String;Landroid/os/StatFs;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "sfs"    # Landroid/os/StatFs;

    .prologue
    .line 489
    return-void
.end method

.method public static printTouch(Ljava/lang/String;III)V
    .locals 0
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "action"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 460
    return-void
.end method

.method public static printTouch(Ljava/lang/String;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 446
    return-void
.end method

.method public static relDie(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 483
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Post-sterilization FAILURE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static saveFile()V
    .locals 6

    .prologue
    .line 542
    invoke-static {}, Lcom/glu/android/Debug;->getDebugKey()I

    move-result v1

    .line 543
    .local v1, "expected":I
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/glu/android/GluUtil;->getSecureSaveDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 545
    .local v2, "f":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 546
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-static {v3, v1}, Lcom/glu/android/GluUtil;->writeInt(Ljava/io/FileOutputStream;I)V

    .line 547
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "ex":Ljava/lang/Exception;
    const-string v4, "Couldn\'t write file..."

    invoke-static {v4}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 551
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method protected static verifyIntegrity()V
    .locals 4

    .prologue
    .line 571
    invoke-static {}, Lcom/glu/android/Debug;->loadFile()V

    .line 573
    sget-boolean v0, Lcom/glu/android/Debug;->sm_fileInvalid:Z

    if-eqz v0, :cond_0

    .line 575
    sget-boolean v0, Lcom/glu/android/Debug;->sm_appMustClose:Z

    if-eqz v0, :cond_1

    .line 577
    const v0, 0x7f070074

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v3, v3, Lcom/glu/android/GameLet;->m_fullVersion:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/glu/android/Debug;->sm_debugPopupMessage:Ljava/lang/String;

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/glu/android/GluUtil;->getSecureSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/glu/android/GluUtil;->rmrf(Ljava/io/File;)V

    .line 582
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/glu/android/GluUtil;->getLocalSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/glu/android/GluUtil;->rmrf(Ljava/io/File;)V

    .line 583
    const v0, 0x7f070073

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/glu/android/Debug;->sm_debugPopupMessage:Ljava/lang/String;

    goto :goto_0
.end method
