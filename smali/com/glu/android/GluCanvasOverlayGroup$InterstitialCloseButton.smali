.class public Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;
.super Landroid/view/View;
.source "GluCanvasOverlayGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GluCanvasOverlayGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterstitialCloseButton"
.end annotation


# instance fields
.field public m_buttonId:I

.field public m_buttonLabel:Ljava/lang/String;

.field public m_buttonPaint:Landroid/graphics/Paint;

.field public m_selected:Z

.field public m_tweakedRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 161
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 152
    iput-object v1, p0, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;->m_buttonPaint:Landroid/graphics/Paint;

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;->m_buttonId:I

    .line 154
    iput-object v1, p0, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;->m_buttonLabel:Ljava/lang/String;

    .line 155
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;->m_tweakedRect:Landroid/graphics/Rect;

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;->m_selected:Z

    .line 163
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;->m_buttonPaint:Landroid/graphics/Paint;

    .line 164
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;->m_buttonPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;->m_buttonPaint:Landroid/graphics/Paint;

    sget v1, Lcom/glu/android/ResFileDownloadView;->FONT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 166
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;->m_buttonPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 167
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;->m_buttonPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 168
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;->m_buttonPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 170
    iput p3, p0, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;->m_buttonId:I

    .line 171
    iput-object p2, p0, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;->m_buttonLabel:Ljava/lang/String;

    .line 173
    invoke-virtual {p0, v2}, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;->setFocusable(Z)V

    .line 174
    invoke-virtual {p0, v2}, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;->setFocusableInTouchMode(Z)V

    .line 175
    return-void
.end method

.method private setTweakedRect()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 180
    sget-object v1, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    iget-object v1, v1, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    .line 181
    .local v0, "parent":Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;
    iget-object v1, p0, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;->m_tweakedRect:Landroid/graphics/Rect;

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 182
    iget-object v1, p0, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;->m_tweakedRect:Landroid/graphics/Rect;

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 183
    iget-object v1, p0, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;->m_tweakedRect:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, v0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 184
    iget-object v1, p0, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;->m_tweakedRect:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, v0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 185
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "g"    # Landroid/graphics/Canvas;

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;->setTweakedRect()V

    .line 190
    iget-object v1, p0, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;->m_tweakedRect:Landroid/graphics/Rect;

    iget-boolean v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;->m_selected:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/glu/android/GluUtil;->CF_BUTTON_SELECTED:Landroid/graphics/LightingColorFilter;

    :goto_0
    iget-object v2, p0, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;->m_buttonLabel:Ljava/lang/String;

    sget-object v3, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget-object v3, v3, Lcom/glu/android/ResFileDownloadView;->m_buttonPaint:Landroid/graphics/Paint;

    invoke-static {p1, v1, v0, v2, v3}, Lcom/glu/android/GluUtil;->paintButton(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/ColorFilter;Ljava/lang/String;Landroid/graphics/Paint;)V

    .line 191
    invoke-virtual {p0}, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;->invalidate()V

    .line 192
    return-void

    .line 190
    :cond_0
    sget-object v0, Lcom/glu/android/GluUtil;->CF_BUTTON_DEFAULT:Landroid/graphics/LightingColorFilter;

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 196
    invoke-direct {p0}, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;->setTweakedRect()V

    .line 197
    iget-boolean v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;->m_selected:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 198
    iput-boolean v3, p0, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;->m_selected:Z

    .line 207
    :cond_0
    :goto_0
    return v3

    .line 199
    :cond_1
    iget-boolean v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;->m_selected:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 201
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;->m_tweakedRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/glu/android/GluUtil;->isInRect(Landroid/graphics/Rect;FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    sget-object v0, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    iget v1, p0, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;->m_buttonId:I

    invoke-virtual {v0, v1}, Lcom/glu/android/GluCanvasOverlayGroup;->handleButtonPressed(I)V

    .line 204
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$InterstitialCloseButton;->m_selected:Z

    goto :goto_0
.end method
