.class public Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;
.super Landroid/view/View;
.source "GluCanvasOverlayGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GluCanvasOverlayGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HoneycombHomeBackButton"
.end annotation


# instance fields
.field public m_image:Landroid/graphics/drawable/Drawable;

.field public m_isHome:Z

.field public m_selected:Z

.field public m_tweakedRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isHome"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->m_image:Landroid/graphics/drawable/Drawable;

    .line 82
    iput-boolean v1, p0, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->m_selected:Z

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->m_tweakedRect:Landroid/graphics/Rect;

    .line 84
    iput-boolean v1, p0, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->m_isHome:Z

    .line 90
    iput-boolean p2, p0, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->m_isHome:Z

    .line 92
    iget-boolean v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->m_isHome:Z

    if-eqz v0, :cond_0

    const v0, 0x7f02001b

    :goto_0
    invoke-static {v0}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->m_image:Landroid/graphics/drawable/Drawable;

    .line 94
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->m_tweakedRect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 95
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->m_tweakedRect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 96
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->m_tweakedRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->getDesiredHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 97
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->m_tweakedRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->getDesiredWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 99
    invoke-virtual {p0, v2}, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->setFocusable(Z)V

    .line 100
    invoke-virtual {p0, v2}, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->setFocusableInTouchMode(Z)V

    .line 101
    return-void

    .line 92
    :cond_0
    const v0, 0x7f02001a

    goto :goto_0
.end method


# virtual methods
.method public getDesiredHeight()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->m_image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToXoom(I)I

    move-result v0

    return v0
.end method

.method public getDesiredWidth()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->m_image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToXoom(I)I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "g"    # Landroid/graphics/Canvas;

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 116
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->m_image:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->m_tweakedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 117
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->m_image:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/glu/android/GluUtil;->getVirtualButtonAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 118
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->m_image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 119
    invoke-virtual {p0}, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->invalidate()V

    .line 120
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 124
    iget-boolean v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->m_selected:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 125
    iput-boolean v3, p0, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->m_selected:Z

    .line 145
    :cond_0
    :goto_0
    return v3

    .line 126
    :cond_1
    iget-boolean v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->m_selected:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 128
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->m_tweakedRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/glu/android/GluUtil;->isInRect(Landroid/graphics/Rect;FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-boolean v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->m_isHome:Z

    if-eqz v0, :cond_3

    .line 132
    const-string v0, "Sending fake HOME event..."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 133
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->handlerSimulateHomeKey()V

    .line 142
    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$HoneycombHomeBackButton;->m_selected:Z

    goto :goto_0

    .line 137
    :cond_3
    const-string v0, "Sending fake BACK event..."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->handlerSimulateBackKey()V

    goto :goto_1
.end method
