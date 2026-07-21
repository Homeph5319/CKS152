.class public Lcom/glu/android/GluCursor;
.super Landroid/view/View;
.source "GluCursor.java"


# static fields
.field public static final CURSOR_POINTER_ID_OFFSET:I = 0x400

.field public static final KEYS_VEL:I = 0x3c

.field public static final MAX_VEL_LEVEL:I = 0x64

.field public static instance:Lcom/glu/android/GluCursor;


# instance fields
.field private m_cursor:Landroid/graphics/drawable/Drawable;

.field private m_cursorHeight:I

.field private m_cursorWidth:I

.field private m_downPressed:Z

.field private m_fixedX:I

.field private m_fixedY:I

.field private m_lastTickTime:J

.field private m_leftPressed:Z

.field private m_rightPressed:Z

.field private m_touchCanvasView:I

.field private m_touchDown:Z

.field public m_touchXVel:I

.field public m_touchYVel:I

.field private m_upPressed:Z

.field private m_x:I

.field private m_y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GluCursor;->instance:Lcom/glu/android/GluCursor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/GluCursor;->m_cursor:Landroid/graphics/drawable/Drawable;

    .line 31
    iput v1, p0, Lcom/glu/android/GluCursor;->m_x:I

    .line 32
    iput v1, p0, Lcom/glu/android/GluCursor;->m_y:I

    .line 33
    iput v2, p0, Lcom/glu/android/GluCursor;->m_cursorWidth:I

    .line 34
    iput v2, p0, Lcom/glu/android/GluCursor;->m_cursorHeight:I

    .line 35
    iput v1, p0, Lcom/glu/android/GluCursor;->m_fixedX:I

    .line 36
    iput v1, p0, Lcom/glu/android/GluCursor;->m_fixedY:I

    .line 43
    iput-boolean v1, p0, Lcom/glu/android/GluCursor;->m_upPressed:Z

    .line 44
    iput-boolean v1, p0, Lcom/glu/android/GluCursor;->m_downPressed:Z

    .line 45
    iput-boolean v1, p0, Lcom/glu/android/GluCursor;->m_leftPressed:Z

    .line 46
    iput-boolean v1, p0, Lcom/glu/android/GluCursor;->m_rightPressed:Z

    .line 49
    iput v1, p0, Lcom/glu/android/GluCursor;->m_touchXVel:I

    .line 50
    iput v1, p0, Lcom/glu/android/GluCursor;->m_touchYVel:I

    .line 53
    iput-boolean v1, p0, Lcom/glu/android/GluCursor;->m_touchDown:Z

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/glu/android/GluCursor;->m_touchCanvasView:I

    .line 203
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/glu/android/GluCursor;->m_lastTickTime:J

    .line 59
    sput-object p0, Lcom/glu/android/GluCursor;->instance:Lcom/glu/android/GluCursor;

    .line 61
    const v0, 0x7f020005

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/glu/android/GluCursor;->m_cursor:Landroid/graphics/drawable/Drawable;

    .line 64
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/glu/android/GluCursor;->m_x:I

    .line 65
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/glu/android/GluCursor;->m_y:I

    .line 66
    iget v0, p0, Lcom/glu/android/GluCursor;->m_x:I

    invoke-static {v0}, Lcom/glu/android/GluUtil;->intToFixed(I)I

    move-result v0

    iput v0, p0, Lcom/glu/android/GluCursor;->m_fixedX:I

    .line 67
    iget v0, p0, Lcom/glu/android/GluCursor;->m_y:I

    invoke-static {v0}, Lcom/glu/android/GluUtil;->intToFixed(I)I

    move-result v0

    iput v0, p0, Lcom/glu/android/GluCursor;->m_fixedY:I

    .line 70
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v0

    shr-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/glu/android/GluCursor;->m_cursorHeight:I

    .line 71
    iget v0, p0, Lcom/glu/android/GluCursor;->m_cursorHeight:I

    iget-object v1, p0, Lcom/glu/android/GluCursor;->m_cursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/glu/android/GluCursor;->m_cursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/glu/android/GluCursor;->m_cursorWidth:I

    .line 72
    return-void
.end method

.method private calculateMovementOffsetFixed(II)I
    .locals 9
    .param p1, "vel"    # I
    .param p2, "deltaMS"    # I

    .prologue
    const-wide/16 v7, 0x64

    .line 272
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v3

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3}, Lcom/glu/android/GluUtil;->intToFixed(I)I

    move-result v3

    int-to-long v0, v3

    .line 273
    .local v0, "fixedPPS":J
    const-wide/16 v3, 0x50

    mul-long/2addr v3, v0

    div-long v0, v3, v7

    .line 275
    int-to-long v3, p2

    mul-long/2addr v3, v0

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    int-to-long v5, p1

    mul-long/2addr v3, v5

    div-long/2addr v3, v7

    long-to-int v2, v3

    .line 277
    .local v2, "ret":I
    return v2
.end method

.method private cursorShouldUseTouch(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 287
    invoke-static {}, Lcom/glu/android/GluCursor;->usesGluCursor()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/glu/android/GluCursor;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v0

    .line 290
    :cond_1
    invoke-static {}, Lcom/glu/android/Device;->usesPSPControls()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    invoke-static {p1}, Lcom/glu/android/PSP;->motionEventIsTouchpad(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method private onCursorRepositioned()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    iget v0, p0, Lcom/glu/android/GluCursor;->m_fixedX:I

    if-gez v0, :cond_2

    .line 166
    iput v2, p0, Lcom/glu/android/GluCursor;->m_fixedX:I

    .line 170
    :cond_0
    :goto_0
    iget v0, p0, Lcom/glu/android/GluCursor;->m_fixedY:I

    if-gez v0, :cond_3

    .line 171
    iput v2, p0, Lcom/glu/android/GluCursor;->m_fixedY:I

    .line 175
    :cond_1
    :goto_1
    iget v0, p0, Lcom/glu/android/GluCursor;->m_fixedX:I

    invoke-static {v0}, Lcom/glu/android/GluUtil;->fixedToInt(I)I

    move-result v0

    iput v0, p0, Lcom/glu/android/GluCursor;->m_x:I

    .line 176
    iget v0, p0, Lcom/glu/android/GluCursor;->m_fixedY:I

    invoke-static {v0}, Lcom/glu/android/GluUtil;->fixedToInt(I)I

    move-result v0

    iput v0, p0, Lcom/glu/android/GluCursor;->m_y:I

    .line 180
    sget-object v0, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/glu/android/GluCursor;->getX1()I

    move-result v2

    invoke-virtual {p0}, Lcom/glu/android/GluCursor;->getY1()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/glu/android/GluCanvasOverlayGroup;->setViewXY(III)V

    .line 181
    return-void

    .line 167
    :cond_2
    iget v0, p0, Lcom/glu/android/GluCursor;->m_fixedX:I

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v1

    invoke-static {v1}, Lcom/glu/android/GluUtil;->intToFixed(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 168
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v0

    invoke-static {v0}, Lcom/glu/android/GluUtil;->intToFixed(I)I

    move-result v0

    invoke-static {v3}, Lcom/glu/android/GluUtil;->intToFixed(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/glu/android/GluCursor;->m_fixedX:I

    goto :goto_0

    .line 172
    :cond_3
    iget v0, p0, Lcom/glu/android/GluCursor;->m_fixedY:I

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v1

    invoke-static {v1}, Lcom/glu/android/GluUtil;->intToFixed(I)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 173
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v0

    invoke-static {v0}, Lcom/glu/android/GluUtil;->intToFixed(I)I

    move-result v0

    invoke-static {v3}, Lcom/glu/android/GluUtil;->intToFixed(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/glu/android/GluCursor;->m_fixedY:I

    goto :goto_1
.end method

.method private sendFakeTouchEvent(Z)V
    .locals 7
    .param p1, "pressed"    # Z

    .prologue
    const/16 v6, 0x400

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 185
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/glu/android/GluCursor;->m_touchDown:Z

    if-eqz v0, :cond_2

    .line 189
    sget-object v0, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    iget v1, p0, Lcom/glu/android/GluCursor;->m_touchCanvasView:I

    iget v2, p0, Lcom/glu/android/GluCursor;->m_x:I

    iget v3, p0, Lcom/glu/android/GluCursor;->m_y:I

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/glu/android/GluCanvasOverlayGroup;->sendFakeTouchEvent(IZII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    sget-object v0, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    iget v1, p0, Lcom/glu/android/GluCursor;->m_x:I

    iget v2, p0, Lcom/glu/android/GluCursor;->m_y:I

    invoke-virtual {v0, v5, v1, v2, v6}, Lcom/glu/android/GluView;->touchEventToNative(IIII)V

    .line 191
    :cond_0
    iput-boolean v4, p0, Lcom/glu/android/GluCursor;->m_touchDown:Z

    .line 201
    :cond_1
    :goto_0
    return-void

    .line 193
    :cond_2
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/glu/android/GluCursor;->m_touchDown:Z

    if-nez v0, :cond_1

    .line 195
    sget-object v0, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    invoke-virtual {v0}, Lcom/glu/android/GluView;->resetTouchManagement()V

    .line 196
    sget-object v0, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    iget v1, p0, Lcom/glu/android/GluCursor;->m_x:I

    iget v2, p0, Lcom/glu/android/GluCursor;->m_y:I

    invoke-virtual {v0, v1, v2}, Lcom/glu/android/GluCanvasOverlayGroup;->findCursorClickableView(II)I

    move-result v0

    iput v0, p0, Lcom/glu/android/GluCursor;->m_touchCanvasView:I

    .line 197
    sget-object v0, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    iget v1, p0, Lcom/glu/android/GluCursor;->m_touchCanvasView:I

    iget v2, p0, Lcom/glu/android/GluCursor;->m_x:I

    iget v3, p0, Lcom/glu/android/GluCursor;->m_y:I

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/glu/android/GluCanvasOverlayGroup;->sendFakeTouchEvent(IZII)Z

    move-result v0

    if-nez v0, :cond_3

    .line 198
    sget-object v0, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    iget v1, p0, Lcom/glu/android/GluCursor;->m_x:I

    iget v2, p0, Lcom/glu/android/GluCursor;->m_y:I

    invoke-virtual {v0, v4, v1, v2, v6}, Lcom/glu/android/GluView;->touchEventToNative(IIII)V

    .line 199
    :cond_3
    iput-boolean v5, p0, Lcom/glu/android/GluCursor;->m_touchDown:Z

    goto :goto_0
.end method

.method public static usesGluCursor()Z
    .locals 1

    .prologue
    .line 282
    invoke-static {}, Lcom/glu/android/Device;->usesPSPControls()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getCenterX()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/glu/android/GluCursor;->m_x:I

    return v0
.end method

.method public getCenterY()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/glu/android/GluCursor;->m_y:I

    return v0
.end method

.method public getX1()I
    .locals 2

    .prologue
    .line 76
    iget v0, p0, Lcom/glu/android/GluCursor;->m_x:I

    iget v1, p0, Lcom/glu/android/GluCursor;->m_cursorWidth:I

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getX2()I
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/glu/android/GluCursor;->getX1()I

    move-result v0

    iget v1, p0, Lcom/glu/android/GluCursor;->m_cursorWidth:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getY1()I
    .locals 2

    .prologue
    .line 77
    iget v0, p0, Lcom/glu/android/GluCursor;->m_y:I

    iget v1, p0, Lcom/glu/android/GluCursor;->m_cursorHeight:I

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getY2()I
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/glu/android/GluCursor;->getY1()I

    move-result v0

    iget v1, p0, Lcom/glu/android/GluCursor;->m_cursorHeight:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public handleGluViewKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-static {}, Lcom/glu/android/GluCursor;->usesGluCursor()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/glu/android/GluCursor;->isActive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v1

    .line 87
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 88
    .local v0, "keyCode":I
    invoke-static {}, Lcom/glu/android/Device;->usesPSPControls()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    const/16 v3, 0x17

    if-ne v0, v3, :cond_0

    .line 92
    const-string v3, "Cursor click."

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    :cond_2
    invoke-direct {p0, v1}, Lcom/glu/android/GluCursor;->sendFakeTouchEvent(Z)V

    move v1, v2

    .line 94
    goto :goto_0
.end method

.method public handleGluViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v8, 0xb4

    const/4 v4, 0x1

    const/16 v7, -0xb4

    const/high16 v6, 0x43340000    # 180.0f

    const/4 v3, 0x0

    .line 122
    invoke-direct {p0, p1}, Lcom/glu/android/GluCursor;->cursorShouldUseTouch(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 126
    .local v0, "action":I
    invoke-static {}, Lcom/glu/android/Device;->usesPSPControls()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {p1}, Lcom/glu/android/PSP;->motionEventIsTouchpad(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 128
    if-eqz v0, :cond_0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_7

    .line 130
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v5, v6

    float-to-int v1, v5

    .line 131
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v5, v6

    float-to-int v5, v5

    neg-int v2, v5

    .line 134
    .local v2, "y":I
    if-ge v1, v7, :cond_5

    .line 135
    const/16 v1, -0xb4

    .line 141
    :cond_1
    if-ge v2, v7, :cond_6

    .line 142
    const/16 v2, -0xb4

    .line 146
    :cond_2
    :goto_0
    mul-int/lit8 v3, v1, 0x64

    div-int/lit16 v3, v3, 0xb4

    iput v3, p0, Lcom/glu/android/GluCursor;->m_touchXVel:I

    .line 147
    mul-int/lit8 v3, v2, 0x64

    div-int/lit16 v3, v3, 0xb4

    iput v3, p0, Lcom/glu/android/GluCursor;->m_touchYVel:I

    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_3
    :goto_1
    move v3, v4

    .line 158
    .end local v0    # "action":I
    :cond_4
    :goto_2
    return v3

    .line 138
    .restart local v0    # "action":I
    .restart local v1    # "x":I
    .restart local v2    # "y":I
    :cond_5
    if-le v1, v8, :cond_1

    goto :goto_2

    .line 143
    :cond_6
    if-le v2, v8, :cond_2

    .line 144
    const/16 v2, 0xb4

    goto :goto_0

    .line 149
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_7
    if-eq v0, v4, :cond_8

    const/4 v5, 0x6

    if-ne v0, v5, :cond_3

    .line 151
    :cond_8
    iput v3, p0, Lcom/glu/android/GluCursor;->m_touchXVel:I

    .line 152
    iput v3, p0, Lcom/glu/android/GluCursor;->m_touchYVel:I

    goto :goto_1
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/glu/android/GluCursor;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "g"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 221
    .local v1, "now":J
    iget-wide v3, p0, Lcom/glu/android/GluCursor;->m_lastTickTime:J

    sub-long v3, v1, v3

    long-to-int v0, v3

    .line 222
    .local v0, "deltaMS":I
    iput-wide v1, p0, Lcom/glu/android/GluCursor;->m_lastTickTime:J

    .line 224
    invoke-static {}, Lcom/glu/android/Device;->usesPSPControls()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    sget-object v3, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v3}, Lcom/glu/android/GameLet;->isKeyboardOpen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/glu/android/GluCursor;->invalidate()V

    .line 268
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v3, p0, Lcom/glu/android/GluCursor;->m_cursor:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/glu/android/GluCursor;->m_cursorWidth:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/glu/android/GluCursor;->m_cursorHeight:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 235
    iget-object v3, p0, Lcom/glu/android/GluCursor;->m_cursor:Landroid/graphics/drawable/Drawable;

    const/16 v4, 0xe0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 236
    iget-object v3, p0, Lcom/glu/android/GluCursor;->m_cursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 262
    iget v3, p0, Lcom/glu/android/GluCursor;->m_fixedX:I

    iget v4, p0, Lcom/glu/android/GluCursor;->m_touchXVel:I

    invoke-direct {p0, v4, v0}, Lcom/glu/android/GluCursor;->calculateMovementOffsetFixed(II)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/glu/android/GluCursor;->m_fixedX:I

    .line 263
    iget v3, p0, Lcom/glu/android/GluCursor;->m_fixedY:I

    iget v4, p0, Lcom/glu/android/GluCursor;->m_touchYVel:I

    invoke-direct {p0, v4, v0}, Lcom/glu/android/GluCursor;->calculateMovementOffsetFixed(II)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/glu/android/GluCursor;->m_fixedY:I

    .line 265
    invoke-direct {p0}, Lcom/glu/android/GluCursor;->onCursorRepositioned()V

    .line 267
    invoke-virtual {p0}, Lcom/glu/android/GluCursor;->invalidate()V

    goto :goto_0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cursor visibility changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/glu/android/GluUtil;->viewVisibilityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/glu/android/GluCursor;->m_lastTickTime:J

    .line 210
    sget-object v0, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    if-eqz v0, :cond_0

    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/glu/android/GluCursor;->sendFakeTouchEvent(Z)V

    .line 213
    sget-object v0, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    invoke-virtual {v0}, Lcom/glu/android/GluView;->resetTouchManagement()V

    .line 216
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 217
    return-void
.end method

.method public setActive(Z)V
    .locals 2
    .param p1, "active"    # Z

    .prologue
    .line 301
    invoke-static {}, Lcom/glu/android/GluCursor;->usesGluCursor()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    :goto_0
    return-void

    .line 304
    :cond_0
    sget-object v0, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Lcom/glu/android/GluCanvasOverlayGroup;->setViewVisibility(IZ)V

    goto :goto_0
.end method
