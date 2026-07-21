.class public Lcom/glu/android/GluView;
.super Lcom/glu/android/ModifiedGLSurfaceView;
.source "GluView.java"


# static fields
.field public static final ACTION_MT_POINTER_DOWN:I = 0x5

.field public static final ACTION_MT_POINTER_UP:I = 0x6

.field public static final MAX_TOUCHES:I = 0x4

.field public static final MT_ACTION_MASK:I = 0xff

.field public static final MT_ACTION_SHIFT:I = 0x8

.field private static final TOUCHES_LIMIT:I = 0x2

.field private static TOUCH_MOVE_THRESHOLD:I

.field public static instance:Lcom/glu/android/GluView;

.field public static m_glVersionMajor:I

.field public static m_glVersionMinor:I


# instance fields
.field private final NO_TOUCH:I

.field private m_blockMenuKeys:Z

.field private m_keyBlocklist:[Z

.field public m_keyStates:[Z

.field private m_lastX:I

.field private m_lastY:I

.field private m_realPointerIds:[I

.field public m_renderer:Lcom/glu/android/GameRenderer;

.field private m_touchCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    .line 24
    sput v1, Lcom/glu/android/GluView;->m_glVersionMinor:I

    .line 25
    sput v1, Lcom/glu/android/GluView;->m_glVersionMajor:I

    .line 442
    const/4 v0, -0x1

    sput v0, Lcom/glu/android/GluView;->TOUCH_MOVE_THRESHOLD:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 34
    invoke-direct {p0, p1}, Lcom/glu/android/ModifiedGLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/glu/android/GluView;->m_renderer:Lcom/glu/android/GameRenderer;

    .line 27
    const/16 v1, 0xff

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/glu/android/GluView;->m_keyStates:[Z

    .line 214
    const/16 v1, 0x100

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/glu/android/GluView;->m_keyBlocklist:[Z

    .line 430
    iput-boolean v3, p0, Lcom/glu/android/GluView;->m_blockMenuKeys:Z

    .line 431
    iput v3, p0, Lcom/glu/android/GluView;->m_touchCount:I

    .line 435
    iput v2, p0, Lcom/glu/android/GluView;->NO_TOUCH:I

    .line 436
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/glu/android/GluView;->m_realPointerIds:[I

    .line 440
    iput v2, p0, Lcom/glu/android/GluView;->m_lastX:I

    .line 441
    iput v2, p0, Lcom/glu/android/GluView;->m_lastY:I

    .line 36
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/glu/android/GluView;->m_realPointerIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/glu/android/GluView;->m_realPointerIds:[I

    aput v2, v1, v0

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method private getAdjustedPSPX(Landroid/view/MotionEvent;I)I
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 570
    invoke-static {p1, p2}, Lcom/glu/android/GluUtil;->reflectedMotionEventGetX(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 571
    .local v0, "raw":I
    const/16 v1, 0x168

    if-le v0, v1, :cond_0

    .line 572
    const/4 v1, -0x1

    .line 575
    :goto_0
    return v1

    .line 573
    :cond_0
    if-gez v0, :cond_1

    .line 574
    const/16 v0, 0x168

    :cond_1
    move v1, v0

    .line 575
    goto :goto_0
.end method

.method private getAdjustedPSPY(Landroid/view/MotionEvent;I)I
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 579
    invoke-static {p1, p2}, Lcom/glu/android/GluUtil;->reflectedMotionEventGetX(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 580
    .local v0, "raw":I
    const/16 v1, 0x168

    if-le v0, v1, :cond_0

    .line 581
    const/4 v1, -0x1

    .line 585
    :goto_0
    return v1

    .line 582
    :cond_0
    invoke-static {p1, p2}, Lcom/glu/android/GluUtil;->reflectedMotionEventGetY(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 583
    if-gez v0, :cond_1

    .line 584
    const/4 v0, 0x0

    :cond_1
    move v1, v0

    .line 585
    goto :goto_0
.end method

.method private isDPADOrNumber(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 206
    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    const/16 v0, 0x17

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-lt p1, v0, :cond_0

    const/16 v0, 0x10

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x1d

    if-lt p1, v0, :cond_2

    const/16 v0, 0x36

    if-gt p1, v0, :cond_2

    .line 209
    :cond_1
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onPSPEvent(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 591
    sget-object v7, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-boolean v7, v7, Lcom/glu/android/GameLet;->m_multiTouchSupported:Z

    if-nez v7, :cond_1

    .line 593
    const-string v7, "How did some random non-MT device get into PSP code?"

    invoke-static {v7, p1}, Lcom/glu/android/Debug;->printTouch(Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    shr-int/lit8 v3, v7, 0x8

    .line 602
    .local v3, "pointerIndex":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v4, v7, 0xff

    .line 605
    .local v4, "trueAction":I
    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 609
    :pswitch_1
    invoke-static {p1, v10}, Lcom/glu/android/GluUtil;->reflectedMotionEventGetPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    add-int/lit16 v2, v7, 0x200

    .line 610
    .local v2, "pointerId":I
    invoke-direct {p0, p1, v10}, Lcom/glu/android/GluView;->getAdjustedPSPX(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 611
    .local v5, "x":I
    invoke-direct {p0, p1, v10}, Lcom/glu/android/GluView;->getAdjustedPSPY(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 613
    .local v6, "y":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending action "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to point ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") from pointerID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 615
    if-eq v5, v9, :cond_0

    if-eq v6, v9, :cond_0

    .line 616
    invoke-virtual {p0, v4, v5, v6, v2}, Lcom/glu/android/GluView;->touchEventToNative(IIII)V

    goto :goto_0

    .line 621
    .end local v2    # "pointerId":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :pswitch_2
    invoke-static {p1}, Lcom/glu/android/GluUtil;->reflectedMotionEventGetPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    .line 623
    .local v0, "eventCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 625
    invoke-static {p1, v1}, Lcom/glu/android/GluUtil;->reflectedMotionEventGetPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    add-int/lit16 v2, v7, 0x200

    .line 626
    .restart local v2    # "pointerId":I
    invoke-direct {p0, p1, v1}, Lcom/glu/android/GluView;->getAdjustedPSPX(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 627
    .restart local v5    # "x":I
    invoke-direct {p0, p1, v1}, Lcom/glu/android/GluView;->getAdjustedPSPY(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 629
    .restart local v6    # "y":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending action "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to point ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") from pointerID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 631
    if-eq v5, v9, :cond_2

    if-eq v6, v9, :cond_2

    .line 632
    const/4 v7, 0x2

    invoke-virtual {p0, v7, v5, v6, v2}, Lcom/glu/android/GluView;->touchEventToNative(IIII)V

    .line 623
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 639
    .end local v0    # "eventCount":I
    .end local v1    # "i":I
    .end local v2    # "pointerId":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :pswitch_3
    invoke-static {p1, v3}, Lcom/glu/android/GluUtil;->reflectedMotionEventGetPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    add-int/lit16 v2, v7, 0x200

    .line 640
    .restart local v2    # "pointerId":I
    invoke-direct {p0, p1, v3}, Lcom/glu/android/GluView;->getAdjustedPSPX(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 641
    .restart local v5    # "x":I
    invoke-direct {p0, p1, v3}, Lcom/glu/android/GluView;->getAdjustedPSPY(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 643
    .restart local v6    # "y":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending action "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to point ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") from pointerID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 645
    if-eq v5, v9, :cond_0

    if-eq v6, v9, :cond_0

    .line 647
    const/4 v7, 0x6

    if-ne v4, v7, :cond_3

    .line 648
    const/4 v7, 0x1

    invoke-virtual {p0, v7, v5, v6, v2}, Lcom/glu/android/GluView;->touchEventToNative(IIII)V

    goto/16 :goto_0

    .line 649
    :cond_3
    const/4 v7, 0x5

    if-ne v4, v7, :cond_0

    .line 650
    invoke-virtual {p0, v10, v5, v6, v2}, Lcom/glu/android/GluView;->touchEventToNative(IIII)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private resetInputManagement()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/glu/android/GluView;->m_blockMenuKeys:Z

    .line 141
    iput v0, p0, Lcom/glu/android/GluView;->m_touchCount:I

    .line 142
    iget-object v0, p0, Lcom/glu/android/GluView;->m_keyBlocklist:[Z

    invoke-static {v0}, Lcom/glu/android/GluUtil;->zero([Z)V

    .line 143
    invoke-virtual {p0}, Lcom/glu/android/GluView;->resetTouchManagement()V

    .line 144
    return-void
.end method

.method private shouldBlockKey(IZ)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "pressed"    # Z

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/glu/android/GluView;->m_blockMenuKeys:Z

    if-eqz v1, :cond_1

    .line 219
    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x54

    if-ne p1, v1, :cond_1

    .line 220
    :cond_0
    const/4 v0, 0x1

    .line 223
    :cond_1
    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/glu/android/GluView;->m_keyBlocklist:[Z

    array-length v1, v1

    if-ge p1, v1, :cond_2

    .line 225
    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    .line 228
    iget-object v1, p0, Lcom/glu/android/GluView;->m_keyBlocklist:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 237
    :cond_2
    :goto_0
    return v0

    .line 230
    :cond_3
    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/glu/android/GluView;->m_keyBlocklist:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_2

    .line 232
    const/4 v0, 0x1

    .line 233
    iget-object v1, p0, Lcom/glu/android/GluView;->m_keyBlocklist:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p1

    goto :goto_0
.end method

.method private shouldIgnoreKey(IZ)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "pressed"    # Z

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 246
    .local v0, "ret":Z
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_2

    .line 247
    :cond_0
    const/4 v0, 0x1

    .line 253
    :cond_1
    :goto_0
    return v0

    .line 248
    :cond_2
    invoke-static {}, Lcom/glu/android/Device;->usesPSPControls()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    const/4 v0, 0x0

    goto :goto_0

    .line 250
    :cond_3
    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/16 v1, 0x52

    if-eq p1, v1, :cond_1

    .line 251
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 9

    .prologue
    const/16 v5, 0x10

    const/4 v1, 0x5

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 42
    sput-object p0, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    .line 44
    iget-object v0, p0, Lcom/glu/android/GluView;->m_keyBlocklist:[Z

    invoke-static {v0}, Lcom/glu/android/GluUtil;->zero([Z)V

    .line 46
    new-instance v0, Lcom/glu/android/GameRenderer;

    invoke-direct {v0}, Lcom/glu/android/GameRenderer;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GluView;->m_renderer:Lcom/glu/android/GameRenderer;

    .line 48
    const/4 v7, 0x0

    .line 75
    .local v7, "supportsGL20":Z
    const/4 v2, 0x6

    move-object v0, p0

    move v3, v1

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/glu/android/GluView;->setEGLConfigChooser(IIIIII)V

    .line 76
    const/16 v0, 0x235

    invoke-static {v0, v8, v8, v5, v4}, Lcom/glu/android/GluJNI;->initGLAttributes(IIIII)V

    .line 77
    iget-object v0, p0, Lcom/glu/android/GluView;->m_renderer:Lcom/glu/android/GameRenderer;

    invoke-virtual {p0, v0}, Lcom/glu/android/GluView;->setRenderer(Lcom/glu/android/ModifiedGLSurfaceView$Renderer;)V

    .line 79
    invoke-virtual {p0, v8}, Lcom/glu/android/GluView;->setFocusable(Z)V

    .line 80
    invoke-virtual {p0, v8}, Lcom/glu/android/GluView;->setFocusableInTouchMode(Z)V

    .line 83
    invoke-static {}, Lcom/glu/android/GluUtil;->loadUserWakeLockSettings()V

    .line 85
    invoke-static {}, Lcom/glu/android/PSP;->enablePSPControls()V

    .line 86
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 187
    const-string v0, "~~ onAttachedToWindow()"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 189
    invoke-super {p0}, Lcom/glu/android/ModifiedGLSurfaceView;->onAttachedToWindow()V

    .line 190
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 180
    const-string v0, "~~ onDetachedFromWindow()"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 182
    invoke-super {p0}, Lcom/glu/android/ModifiedGLSurfaceView;->onDetachedFromWindow()V

    .line 183
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 1

    .prologue
    .line 173
    const-string v0, "~~ onFinishTemporaryDetach()"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 175
    invoke-super {p0}, Lcom/glu/android/ModifiedGLSurfaceView;->onFinishTemporaryDetach()V

    .line 176
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gluview down keyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 296
    sget-object v3, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v3}, Lcom/glu/android/GameLet;->nativeNotReady()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 333
    :cond_0
    :goto_0
    return v1

    .line 297
    :cond_1
    sget-object v3, Lcom/glu/android/Debug;->CONSOLE:Lcom/glu/android/Debug$Console;

    if-eqz v3, :cond_0

    .line 298
    sget-object v3, Lcom/glu/android/Debug;->CONSOLE:Lcom/glu/android/Debug$Console;

    invoke-virtual {v3, p2}, Lcom/glu/android/Debug$Console;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 299
    const/16 v3, 0x18

    if-eq p1, v3, :cond_2

    const/16 v3, 0x19

    if-ne p1, v3, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    .line 302
    :cond_3
    sget-object v3, Lcom/glu/android/GluCursor;->instance:Lcom/glu/android/GluCursor;

    invoke-virtual {v3, p2}, Lcom/glu/android/GluCursor;->handleGluViewKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 307
    invoke-static {p2}, Lcom/glu/android/PSP;->translatePSPKey(Landroid/view/KeyEvent;)I

    move-result p1

    .line 309
    sget-object v3, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    if-eqz v3, :cond_4

    sget-object v3, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    invoke-virtual {v3, p1, p2}, Lcom/glu/android/GluCanvasOverlayGroup;->handleKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 312
    :cond_4
    invoke-direct {p0, p1, v1}, Lcom/glu/android/GluView;->shouldBlockKey(IZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 314
    invoke-direct {p0, p1, v1}, Lcom/glu/android/GluView;->shouldIgnoreKey(IZ)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    .line 315
    goto :goto_0

    .line 318
    :cond_5
    if-ltz p1, :cond_6

    iget-object v2, p0, Lcom/glu/android/GluView;->m_keyStates:[Z

    array-length v2, v2

    if-ge p1, v2, :cond_6

    .line 320
    iget-object v2, p0, Lcom/glu/android/GluView;->m_keyStates:[Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_0

    .line 323
    iget-object v2, p0, Lcom/glu/android/GluView;->m_keyStates:[Z

    aput-boolean v1, v2, p1

    .line 326
    :cond_6
    const/16 v2, 0x42

    if-ne p1, v2, :cond_7

    .line 327
    invoke-static {}, Lcom/glu/android/GluUtil;->hideKeyboard()V

    .line 329
    :cond_7
    move v0, p1

    .line 330
    .local v0, "keyCode_":I
    new-instance v2, Lcom/glu/android/GluView$2;

    invoke-direct {v2, p0, v0}, Lcom/glu/android/GluView$2;-><init>(Lcom/glu/android/GluView;I)V

    invoke-virtual {p0, v2}, Lcom/glu/android/GluView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gluview up keyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 259
    sget-object v3, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v3}, Lcom/glu/android/GameLet;->nativeNotReady()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v1

    .line 260
    :cond_1
    sget-object v3, Lcom/glu/android/Debug;->CONSOLE:Lcom/glu/android/Debug$Console;

    if-eqz v3, :cond_0

    .line 261
    sget-object v3, Lcom/glu/android/Debug;->CONSOLE:Lcom/glu/android/Debug$Console;

    invoke-virtual {v3, p2}, Lcom/glu/android/Debug$Console;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 263
    sget-object v3, Lcom/glu/android/GluCursor;->instance:Lcom/glu/android/GluCursor;

    invoke-virtual {v3, p2}, Lcom/glu/android/GluCursor;->handleGluViewKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 265
    const/16 v3, 0x18

    if-eq p1, v3, :cond_2

    const/16 v3, 0x19

    if-ne p1, v3, :cond_3

    :cond_2
    move v1, v2

    .line 266
    goto :goto_0

    .line 267
    :cond_3
    invoke-static {p2}, Lcom/glu/android/PSP;->translatePSPKey(Landroid/view/KeyEvent;)I

    move-result p1

    .line 269
    sget-object v3, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    if-eqz v3, :cond_4

    sget-object v3, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    invoke-virtual {v3, p1, p2}, Lcom/glu/android/GluCanvasOverlayGroup;->handleKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 272
    :cond_4
    invoke-direct {p0, p1, v2}, Lcom/glu/android/GluView;->shouldBlockKey(IZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 274
    invoke-direct {p0, p1, v2}, Lcom/glu/android/GluView;->shouldIgnoreKey(IZ)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    .line 275
    goto :goto_0

    .line 278
    :cond_5
    if-ltz p1, :cond_6

    iget-object v3, p0, Lcom/glu/android/GluView;->m_keyStates:[Z

    array-length v3, v3

    if-ge p1, v3, :cond_6

    .line 280
    iget-object v3, p0, Lcom/glu/android/GluView;->m_keyStates:[Z

    aput-boolean v2, v3, p1

    .line 283
    :cond_6
    const/16 v2, 0x52

    if-ne p1, v2, :cond_7

    .line 284
    const/16 v2, 0x8

    invoke-static {v2}, Lcom/glu/android/GluJNI;->systemEvent(I)V

    .line 285
    :cond_7
    move v0, p1

    .line 286
    .local v0, "keyCode_":I
    new-instance v2, Lcom/glu/android/GluView$1;

    invoke-direct {v2, p0, v0}, Lcom/glu/android/GluView$1;-><init>(Lcom/glu/android/GluView;I)V

    invoke-virtual {p0, v2}, Lcom/glu/android/GluView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 114
    invoke-super/range {p0 .. p5}, Lcom/glu/android/ModifiedGLSurfaceView;->onLayout(ZIIII)V

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "~~ onLayout("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Lcom/glu/android/ModifiedGLSurfaceView;->onMeasure(II)V

    .line 95
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v1

    .line 96
    .local v1, "desiredWidth":I
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v0

    .line 98
    .local v0, "desiredHeight":I
    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget v2, v2, Lcom/glu/android/GameLet;->m_platformVersionI:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 100
    sget-object v2, Lcom/glu/android/GluVideoView;->instance:Lcom/glu/android/GluVideoView;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/glu/android/GluVideoView;->instance:Lcom/glu/android/GluVideoView;

    iget-boolean v2, v2, Lcom/glu/android/GluVideoView;->m_visible:Z

    if-eqz v2, :cond_0

    .line 102
    const/4 v1, 0x1

    .line 103
    const/4 v0, 0x1

    .line 107
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling (in game view) setMeasuredDimension("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, v1, v0}, Lcom/glu/android/GluView;->setMeasuredDimension(II)V

    .line 109
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 1

    .prologue
    .line 166
    const-string v0, "~~ onStartTemporaryDetach()"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 168
    invoke-super {p0}, Lcom/glu/android/ModifiedGLSurfaceView;->onStartTemporaryDetach()V

    .line 169
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 344
    sget-object v6, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v6}, Lcom/glu/android/GameLet;->nativeNotReady()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 426
    :cond_0
    :goto_0
    return v9

    .line 345
    :cond_1
    sget-object v6, Lcom/glu/android/GluCursor;->instance:Lcom/glu/android/GluCursor;

    invoke-virtual {v6, p1}, Lcom/glu/android/GluCursor;->handleGluViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 349
    invoke-static {p1}, Lcom/glu/android/GluUtil;->reflectedMotionEventGetSource(Landroid/view/MotionEvent;)I

    move-result v4

    .line 350
    .local v4, "source":I
    const v6, 0x100008

    if-ne v4, v6, :cond_2

    invoke-static {}, Lcom/glu/android/Device;->usesPSPControls()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 352
    invoke-direct {p0, p1}, Lcom/glu/android/GluView;->onPSPEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 355
    :cond_2
    const/16 v6, 0x1002

    if-eq v4, v6, :cond_3

    const/16 v6, 0x2002

    if-eq v4, v6, :cond_3

    .line 357
    const-string v6, "Input event from invalid source"

    invoke-static {v6, p1}, Lcom/glu/android/Debug;->printTouch(Ljava/lang/String;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 361
    :cond_3
    sget-object v6, Lcom/glu/android/GluWebView;->instance:Lcom/glu/android/GluWebView;

    if-eqz v6, :cond_4

    sget-object v6, Lcom/glu/android/GluWebView;->instance:Lcom/glu/android/GluWebView;

    invoke-virtual {v6}, Lcom/glu/android/GluWebView;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 363
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_0

    .line 364
    sget-object v6, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v6}, Lcom/glu/android/GameLet;->closeWebView()V

    goto :goto_0

    .line 369
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    shr-int/lit8 v3, v6, 0x8

    .line 370
    .local v3, "pointerIndex":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v5, v6, 0xff

    .line 372
    .local v5, "trueAction":I
    sget-object v6, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-boolean v6, v6, Lcom/glu/android/GameLet;->m_multiTouchSupported:Z

    if-nez v6, :cond_5

    .line 374
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 379
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0, v8, v6, v7, v8}, Lcom/glu/android/GluView;->touchEventToNative(IIII)V

    goto :goto_0

    .line 376
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0, v10, v6, v7, v8}, Lcom/glu/android/GluView;->touchEventToNative(IIII)V

    goto :goto_0

    .line 382
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0, v9, v6, v7, v8}, Lcom/glu/android/GluView;->touchEventToNative(IIII)V

    goto/16 :goto_0

    .line 390
    :cond_5
    packed-switch v5, :pswitch_data_1

    :pswitch_3
    goto/16 :goto_0

    .line 393
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-static {p1, v8}, Lcom/glu/android/GluUtil;->reflectedMotionEventGetPointerId(Landroid/view/MotionEvent;I)I

    move-result v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/glu/android/GluView;->touchEventToNative(IIII)V

    goto/16 :goto_0

    .line 397
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-static {p1, v8}, Lcom/glu/android/GluUtil;->reflectedMotionEventGetPointerId(Landroid/view/MotionEvent;I)I

    move-result v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/glu/android/GluView;->touchEventToNative(IIII)V

    goto/16 :goto_0

    .line 401
    :pswitch_6
    invoke-static {p1}, Lcom/glu/android/GluUtil;->reflectedMotionEventGetPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    .line 403
    .local v0, "eventCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 405
    invoke-static {p1, v1}, Lcom/glu/android/GluUtil;->reflectedMotionEventGetPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 407
    .local v2, "pointerId":I
    invoke-static {p1, v1}, Lcom/glu/android/GluUtil;->reflectedMotionEventGetX(Landroid/view/MotionEvent;I)I

    move-result v6

    invoke-static {p1, v1}, Lcom/glu/android/GluUtil;->reflectedMotionEventGetY(Landroid/view/MotionEvent;I)I

    move-result v7

    invoke-virtual {p0, v10, v6, v7, v2}, Lcom/glu/android/GluView;->touchEventToNative(IIII)V

    .line 403
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 414
    .end local v0    # "eventCount":I
    .end local v1    # "i":I
    .end local v2    # "pointerId":I
    :pswitch_7
    invoke-static {p1, v3}, Lcom/glu/android/GluUtil;->reflectedMotionEventGetPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 416
    .restart local v2    # "pointerId":I
    const/4 v6, 0x6

    if-ne v5, v6, :cond_6

    .line 417
    invoke-static {p1, v3}, Lcom/glu/android/GluUtil;->reflectedMotionEventGetX(Landroid/view/MotionEvent;I)I

    move-result v6

    invoke-static {p1, v3}, Lcom/glu/android/GluUtil;->reflectedMotionEventGetY(Landroid/view/MotionEvent;I)I

    move-result v7

    invoke-virtual {p0, v9, v6, v7, v2}, Lcom/glu/android/GluView;->touchEventToNative(IIII)V

    goto/16 :goto_0

    .line 418
    :cond_6
    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    .line 419
    invoke-static {p1, v3}, Lcom/glu/android/GluUtil;->reflectedMotionEventGetX(Landroid/view/MotionEvent;I)I

    move-result v6

    invoke-static {p1, v3}, Lcom/glu/android/GluUtil;->reflectedMotionEventGetY(Landroid/view/MotionEvent;I)I

    move-result v7

    invoke-virtual {p0, v8, v6, v7, v2}, Lcom/glu/android/GluView;->touchEventToNative(IIII)V

    goto/16 :goto_0

    .line 374
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 390
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 562
    const-string v0, "trackball"

    invoke-static {v0, p1}, Lcom/glu/android/Debug;->printTouch(Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 564
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "~~ onWindowFocusChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Lcom/glu/android/GluView;->resetInputManagement()V

    .line 130
    if-eqz p1, :cond_0

    .line 131
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->resumeNative()V

    .line 135
    :cond_0
    invoke-super {p0, p1}, Lcom/glu/android/ModifiedGLSurfaceView;->onWindowFocusChanged(Z)V

    .line 136
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "~~ onWindowVisibilityChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 195
    invoke-direct {p0}, Lcom/glu/android/GluView;->resetInputManagement()V

    .line 196
    if-nez p1, :cond_0

    .line 197
    invoke-static {}, Lcom/glu/android/PSP;->enablePSPControls()V

    .line 201
    :goto_0
    invoke-super {p0, p1}, Lcom/glu/android/ModifiedGLSurfaceView;->onWindowVisibilityChanged(I)V

    .line 202
    return-void

    .line 199
    :cond_0
    invoke-static {}, Lcom/glu/android/PSP;->disablePSPControls()V

    goto :goto_0
.end method

.method public resetKeyStates()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/glu/android/GluView;->m_keyStates:[Z

    invoke-static {v0}, Lcom/glu/android/GluUtil;->zero([Z)V

    .line 122
    return-void
.end method

.method public resetTouchManagement()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 151
    sget-object v1, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v1}, Lcom/glu/android/GameLet;->nativeNotReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 153
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/glu/android/GluView;->m_realPointerIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/glu/android/GluView;->m_realPointerIds:[I

    aget v1, v1, v0

    if-eq v1, v3, :cond_0

    .line 157
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/glu/android/GluView;->m_realPointerIds:[I

    aget v2, v2, v0

    invoke-virtual {p0, v1, v4, v4, v2}, Lcom/glu/android/GluView;->touchEventToNative(IIII)V

    .line 158
    iget-object v1, p0, Lcom/glu/android/GluView;->m_realPointerIds:[I

    aput v3, v1, v0

    .line 153
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public touchEventToNative(IIII)V
    .locals 11
    .param p1, "eventId"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "pointerId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 445
    const/16 v0, 0x201

    if-ne p4, v0, :cond_0

    .line 446
    const p4, 0x100008

    .line 447
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/glu/android/Debug;->getTouchEventAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 448
    sget v0, Lcom/glu/android/GluView;->TOUCH_MOVE_THRESHOLD:I

    if-ne v0, v9, :cond_1

    .line 449
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GluView;->TOUCH_MOVE_THRESHOLD:I

    .line 451
    :cond_1
    if-gez p2, :cond_4

    .line 452
    const/4 p2, 0x0

    .line 456
    :cond_2
    :goto_0
    if-gez p3, :cond_5

    .line 457
    const/4 p3, 0x0

    .line 461
    :cond_3
    :goto_1
    move v3, p2

    .local v3, "x_":I
    move v4, p3

    .local v4, "y_":I
    move v2, p4

    .line 462
    .local v2, "pointerId_":I
    if-ne p1, v10, :cond_b

    .line 470
    iget v0, p0, Lcom/glu/android/GluView;->m_lastX:I

    if-eq v0, v9, :cond_7

    iget v0, p0, Lcom/glu/android/GluView;->m_lastY:I

    if-eq v0, v9, :cond_7

    if-nez p4, :cond_7

    .line 472
    iget v0, p0, Lcom/glu/android/GluView;->m_lastX:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v1, Lcom/glu/android/GluView;->TOUCH_MOVE_THRESHOLD:I

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/glu/android/GluView;->m_lastY:I

    sub-int v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v1, Lcom/glu/android/GluView;->TOUCH_MOVE_THRESHOLD:I

    if-ge v0, v1, :cond_6

    .line 558
    :goto_2
    return-void

    .line 453
    .end local v2    # "pointerId_":I
    .end local v3    # "x_":I
    .end local v4    # "y_":I
    :cond_4
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v0

    if-lt p2, v0, :cond_2

    .line 454
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v0

    add-int/lit8 p2, v0, -0x1

    goto :goto_0

    .line 458
    :cond_5
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v0

    if-lt p3, v0, :cond_3

    .line 459
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v0

    add-int/lit8 p3, v0, -0x1

    goto :goto_1

    .line 475
    .restart local v2    # "pointerId_":I
    .restart local v3    # "x_":I
    .restart local v4    # "y_":I
    :cond_6
    iput v9, p0, Lcom/glu/android/GluView;->m_lastX:I

    .line 476
    iput v9, p0, Lcom/glu/android/GluView;->m_lastY:I

    .line 480
    :cond_7
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    iget-object v0, p0, Lcom/glu/android/GluView;->m_realPointerIds:[I

    array-length v0, v0

    if-ge v6, v0, :cond_8

    .line 482
    iget-object v0, p0, Lcom/glu/android/GluView;->m_realPointerIds:[I

    aget v0, v0, v6

    if-ne v0, p4, :cond_a

    .line 484
    move v5, v6

    .line 485
    .local v5, "i_":I
    new-instance v0, Lcom/glu/android/GluView$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/glu/android/GluView$3;-><init>(Lcom/glu/android/GluView;IIII)V

    invoke-virtual {p0, v0}, Lcom/glu/android/GluView;->queueEvent(Ljava/lang/Runnable;)V

    .line 552
    .end local v5    # "i_":I
    .end local v6    # "i":I
    :cond_8
    :goto_4
    iget v0, p0, Lcom/glu/android/GluView;->m_touchCount:I

    if-le v0, v10, :cond_11

    .line 553
    iput v10, p0, Lcom/glu/android/GluView;->m_touchCount:I

    .line 557
    :cond_9
    :goto_5
    invoke-static {}, Lcom/glu/android/Device;->badlyPositionedMenuKeys()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/glu/android/GluView;->m_touchCount:I

    if-eqz v0, :cond_12

    move v0, v7

    :goto_6
    iput-boolean v0, p0, Lcom/glu/android/GluView;->m_blockMenuKeys:Z

    goto :goto_2

    .line 480
    .restart local v6    # "i":I
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 496
    .end local v6    # "i":I
    :cond_b
    if-nez p1, :cond_e

    .line 498
    if-nez p4, :cond_c

    .line 500
    iput p2, p0, Lcom/glu/android/GluView;->m_lastX:I

    .line 501
    iput p3, p0, Lcom/glu/android/GluView;->m_lastY:I

    .line 506
    :cond_c
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_7
    iget-object v0, p0, Lcom/glu/android/GluView;->m_realPointerIds:[I

    array-length v0, v0

    if-ge v6, v0, :cond_8

    .line 508
    iget-object v0, p0, Lcom/glu/android/GluView;->m_realPointerIds:[I

    aget v0, v0, v6

    if-ne v0, v9, :cond_d

    .line 510
    iget-object v0, p0, Lcom/glu/android/GluView;->m_realPointerIds:[I

    aput p4, v0, v6

    .line 511
    move v5, v6

    .line 512
    .restart local v5    # "i_":I
    new-instance v0, Lcom/glu/android/GluView$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/glu/android/GluView$4;-><init>(Lcom/glu/android/GluView;IIII)V

    invoke-virtual {p0, v0}, Lcom/glu/android/GluView;->queueEvent(Ljava/lang/Runnable;)V

    .line 519
    iget v0, p0, Lcom/glu/android/GluView;->m_touchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/glu/android/GluView;->m_touchCount:I

    goto :goto_4

    .line 506
    .end local v5    # "i_":I
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 524
    .end local v6    # "i":I
    :cond_e
    if-ne p1, v7, :cond_8

    .line 526
    if-nez p4, :cond_f

    .line 528
    iput v9, p0, Lcom/glu/android/GluView;->m_lastX:I

    .line 529
    iput v9, p0, Lcom/glu/android/GluView;->m_lastY:I

    .line 533
    :cond_f
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_8
    iget-object v0, p0, Lcom/glu/android/GluView;->m_realPointerIds:[I

    array-length v0, v0

    if-ge v6, v0, :cond_8

    .line 535
    iget-object v0, p0, Lcom/glu/android/GluView;->m_realPointerIds:[I

    aget v0, v0, v6

    if-ne v0, p4, :cond_10

    .line 537
    iget-object v0, p0, Lcom/glu/android/GluView;->m_realPointerIds:[I

    aput v9, v0, v6

    .line 538
    move v5, v6

    .line 539
    .restart local v5    # "i_":I
    new-instance v0, Lcom/glu/android/GluView$5;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/glu/android/GluView$5;-><init>(Lcom/glu/android/GluView;IIII)V

    invoke-virtual {p0, v0}, Lcom/glu/android/GluView;->queueEvent(Ljava/lang/Runnable;)V

    .line 546
    iget v0, p0, Lcom/glu/android/GluView;->m_touchCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/glu/android/GluView;->m_touchCount:I

    goto :goto_4

    .line 533
    .end local v5    # "i_":I
    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 554
    .end local v6    # "i":I
    :cond_11
    iget v0, p0, Lcom/glu/android/GluView;->m_touchCount:I

    if-gez v0, :cond_9

    .line 555
    iput v8, p0, Lcom/glu/android/GluView;->m_touchCount:I

    goto :goto_5

    :cond_12
    move v0, v8

    .line 557
    goto :goto_6

    :cond_13
    move v0, v8

    goto :goto_6
.end method
