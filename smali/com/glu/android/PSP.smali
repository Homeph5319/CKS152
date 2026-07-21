.class public Lcom/glu/android/PSP;
.super Ljava/lang/Object;
.source "PSP.java"


# static fields
.field public static final GAMEPAD_OFFSET:I = 0x10000000

.field public static final KEYCODE_BUTTON_L1:I = 0x66

.field public static final KEYCODE_BUTTON_R1:I = 0x67

.field public static final KEYS_DEVICE_ID:I = 0x30003

.field public static final KEYS_DEVICE_ID_START_SELECT:I = 0x10001

.field public static final PSP_POINTER_ID_OFFSET:I = 0x200

.field public static final PSP_TOUCH_DIAMETER:I = 0x168

.field public static final PSP_TOUCH_INVALID:I = -0x1

.field public static final PSP_TOUCH_LEFT_MAX_X:I = 0x168

.field public static final PSP_TOUCH_LEFT_MIDPOINT_X:I = 0xb4

.field public static final PSP_TOUCH_LEFT_MIN_X:I = 0x0

.field public static final PSP_TOUCH_MIDPOINT_Y:I = 0xb4

.field public static final PSP_TOUCH_RIGHT_MAX_X:I = 0x3c6

.field public static final PSP_TOUCH_RIGHT_MIDPOINT_X:I = 0x312

.field public static final PSP_TOUCH_RIGHT_MIN_X:I = 0x25e

.field public static final TOUCH_DEVICE_ID:I = 0x10004

.field public static sm_pspControlsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/glu/android/PSP;->sm_pspControlsEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disablePSPControls()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-static {}, Lcom/glu/android/Device;->usesPSPControls()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/glu/android/PSP;->sm_pspControlsEnabled:Z

    if-nez v0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-static {v1}, Lcom/glu/android/GluUtil;->reflectedViewRootProcessPositionEvents(Z)V

    .line 53
    sput-boolean v1, Lcom/glu/android/PSP;->sm_pspControlsEnabled:Z

    goto :goto_0
.end method

.method public static enablePSPControls()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 40
    invoke-static {}, Lcom/glu/android/Device;->usesPSPControls()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/glu/android/PSP;->sm_pspControlsEnabled:Z

    if-eqz v0, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-static {v1}, Lcom/glu/android/GluUtil;->reflectedViewRootProcessPositionEvents(Z)V

    .line 44
    sput-boolean v1, Lcom/glu/android/PSP;->sm_pspControlsEnabled:Z

    goto :goto_0
.end method

.method public static motionEventIsTouchpad(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 69
    invoke-static {p0}, Lcom/glu/android/GluUtil;->reflectedMotionEventGetSource(Landroid/view/MotionEvent;)I

    move-result v0

    const v1, 0x100008

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/glu/android/PSP;->sm_pspControlsEnabled:Z

    .line 36
    return-void
.end method

.method public static translatePSPKey(Landroid/view/KeyEvent;)I
    .locals 2
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    const v1, 0x30003

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    const v1, 0x10001

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/glu/android/Device;->usesPSPControls()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/high16 v1, 0x10000000

    add-int/2addr v0, v1

    .line 64
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    goto :goto_0
.end method
