.class public Lcom/glu/android/GluJNI;
.super Ljava/lang/Object;
.source "GluJNI.java"


# static fields
.field public static final COLOR_RGB444:I = 0x1bc

.field public static final COLOR_RGB565:I = 0x235

.field public static final COLOR_RGB888:I = 0x378

.field public static final NATIVE_SYSTEM_EVENT_DISABLE_WAKE_LOCK:I = 0x3

.field public static final NATIVE_SYSTEM_EVENT_ENABLE_WAKE_LOCK:I = 0x4

.field public static final NATIVE_SYSTEM_EVENT_FORCED_UPGRADE:I = 0xf

.field public static final NATIVE_SYSTEM_EVENT_FORCE_UPDATE_TIME:I = 0x5

.field public static final NATIVE_SYSTEM_EVENT_GET_TIME_SECONDS:I = 0xd

.field public static final NATIVE_SYSTEM_EVENT_HIDE_VIRTUAL_KEYBOARD:I = 0x7

.field public static final NATIVE_SYSTEM_EVENT_IS_MORE_GAMES_AVAILABLE:I = 0x15

.field public static final NATIVE_SYSTEM_EVENT_IS_RESOURCE_FILE:I = 0x8

.field public static final NATIVE_SYSTEM_EVENT_IS_USER_WAKE_LOCK_ON:I = 0x12

.field public static final NATIVE_SYSTEM_EVENT_MORE_GAMES:I = 0xb

.field public static final NATIVE_SYSTEM_EVENT_NETWORK_AVAIL:I = 0x17

.field public static final NATIVE_SYSTEM_EVENT_NOTIFY_DESTROYED:I = 0x1

.field public static final NATIVE_SYSTEM_EVENT_OPEN_QUIT_PROMPT:I = 0x9

.field public static final NATIVE_SYSTEM_EVENT_OPEN_URL:I = 0xc

.field public static final NATIVE_SYSTEM_EVENT_QUEUE_DESTROY:I = 0x2

.field public static final NATIVE_SYSTEM_EVENT_SET_BACK_BUTTON_LOCATION:I = 0x11

.field public static final NATIVE_SYSTEM_EVENT_SET_CURSOR_VISIBILITY:I = 0x14

.field public static final NATIVE_SYSTEM_EVENT_SET_HOME_BUTTON_LOCATION:I = 0x10

.field public static final NATIVE_SYSTEM_EVENT_SET_IN_GAME_STATUS:I = 0xe

.field public static final NATIVE_SYSTEM_EVENT_SET_USER_WAKE_LOCK_SETTING:I = 0x13

.field public static final NATIVE_SYSTEM_EVENT_SHOW_VIRTUAL_KEYBOARD:I = 0x6

.field public static final NATIVE_SYSTEM_EVENT_UPGRADE:I = 0xa

.field public static final SYSTEM_EVENT_CHECKSUM:I = 0x7

.field public static final SYSTEM_EVENT_CSTRINGTOKEY:I = 0xb

.field public static final SYSTEM_EVENT_DESTROY:I = 0x3

.field public static final SYSTEM_EVENT_DIMENSIONS_CHANGED:I = 0x6

.field public static final SYSTEM_EVENT_GL_TEXTURES_LOST:I = 0x4

.field public static final SYSTEM_EVENT_IAP_RESUME:I = 0x5

.field public static final SYSTEM_EVENT_INGAME_PAUSE:I = 0x8

.field public static final SYSTEM_EVENT_RESUME:I = 0x2

.field public static final SYSTEM_EVENT_SAVE_IMMEDIATELY:I = 0x9

.field public static final SYSTEM_EVENT_SET_KEYPAD_OPEN:I = 0xa

.field public static final SYSTEM_EVENT_SUSPEND:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native doReferenceHandlingTest([[C)V
.end method

.method public static native gnsCallbackEvent(II[B)V
.end method

.method public static native iapCallbackEvent(II[B)I
.end method

.method public static iapCallbackEventS(IILjava/lang/String;)I
    .locals 2
    .param p0, "event"    # I
    .param p1, "iParam"    # I
    .param p2, "originalProductId"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/glu/android/GluUtil;->charArrayToByteArray([CZ)[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/glu/android/GluJNI;->iapCallbackEvent(II[B)I

    move-result v0

    return v0
.end method

.method public static native initGLAttributes(IIIII)V
.end method

.method public static native initInternalResFile(Ljava/io/FileDescriptor;[BII)I
.end method

.method public static native initJNILink([BI)I
.end method

.method public static native initNativeLibrary(III[B[B[B[B[B[B[B[B[B[B[B[B)I
.end method

.method public static initResFileJ()I
    .locals 5

    .prologue
    .line 138
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    .line 142
    .local v0, "game":Lcom/glu/android/GameLet;
    invoke-static {}, Lcom/glu/android/GluUtil;->getResourceSDDirFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/GluUtil;->filePathNoEnder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "sdPath":Ljava/lang/String;
    invoke-static {v1}, Lcom/glu/android/GluUtil;->createNoMedia(Ljava/lang/String;)V

    .line 148
    invoke-static {v1}, Lcom/glu/android/GluUtil;->stringToNativeByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {}, Lcom/glu/android/GluUtil;->getLocalSaveDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/GluUtil;->filePathNoEnder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/GluUtil;->stringToNativeByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {}, Lcom/glu/android/GluUtil;->getFacebookSaveDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/glu/android/GluUtil;->filePathWithEnder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/glu/android/GluUtil;->stringToNativeByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/glu/android/GluJNI;->initResPaths([B[B[B)V

    .line 152
    const/4 v2, 0x0

    return v2
.end method

.method public static native initResPaths([B[B[B)V
.end method

.method public static javaToNativeFacebook(II[B)V
    .locals 1
    .param p0, "eventID"    # I
    .param p1, "paramInt"    # I
    .param p2, "paramBA"    # [B

    .prologue
    .line 111
    const/4 v0, 0x0

    check-cast v0, [[C

    invoke-static {p0, p1, p2, v0}, Lcom/glu/android/GluJNI;->javaToNativeFacebook(II[B[[C)V

    return-void
.end method

.method public static native javaToNativeFacebook(II[B[[C)V
.end method

.method public static javaToNativeFacebookSafe(II)V
    .locals 2
    .param p0, "eventID"    # I
    .param p1, "paramInt"    # I

    .prologue
    .line 113
    sget-object v0, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 116
    :cond_0
    sget-object v0, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    new-instance v1, Lcom/glu/android/GluJNI$2;

    invoke-direct {v1, p0, p1}, Lcom/glu/android/GluJNI$2;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/glu/android/GluView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static native keyPressed(I)V
.end method

.method public static native keyReleased(I)V
.end method

.method public static native nativeChecksum([BIIII)J
.end method

.method public static nativeChecksumJ(Ljava/lang/String;III)J
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "filesize"    # I
    .param p2, "blockBit"    # I
    .param p3, "nextBlockBit"    # I

    .prologue
    .line 132
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/GluUtil;->charArrayToByteArray([C)[B

    move-result-object v0

    .line 134
    .local v0, "filenameBA":[B
    array-length v1, v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/glu/android/GluJNI;->nativeChecksum([BIIII)J

    move-result-wide v1

    return-wide v1
.end method

.method public static native pointerDragged(III)V
.end method

.method public static native pointerPressed(III)V
.end method

.method public static native pointerReleased(III)V
.end method

.method public static native reportAccelerometerPosition(III)V
.end method

.method public static native requestAudioData()V
.end method

.method public static native setAdDimensions(IIIIII)V
.end method

.method public static native setJavaGeneratedConstants(IIIIIIIIIIIIIII)V
.end method

.method public static native systemEvent(II[B)I
.end method

.method public static systemEvent(I)V
    .locals 2
    .param p0, "event"    # I

    .prologue
    .line 77
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/glu/android/GluJNI;->systemEventSafe(II[B)V

    return-void
.end method

.method public static systemEventSafe(II[B)V
    .locals 3
    .param p0, "event"    # I
    .param p1, "iParam"    # I
    .param p2, "param"    # [B

    .prologue
    .line 68
    sget-object v1, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    if-nez v1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 71
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    .line 72
    .local v0, "param_":[B
    :goto_1
    sget-object v1, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    new-instance v2, Lcom/glu/android/GluJNI$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/glu/android/GluJNI$1;-><init>(II[B)V

    invoke-virtual {v1, v2}, Lcom/glu/android/GluView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 71
    .end local v0    # "param_":[B
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static native testNotification(J)V
.end method

.method public static native tickAndDraw(II)V
.end method

.method public static native updateTime(I)V
.end method
