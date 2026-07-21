.class public Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;
.super Ljava/lang/Object;
.source "GluCanvasOverlayGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GluCanvasOverlayGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GCOGView"
.end annotation


# instance fields
.field public m_rect:Landroid/graphics/Rect;

.field public m_view:Landroid/view/View;

.field public m_viewId:I

.field public m_visible:Z


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "id"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    .line 217
    iput-boolean v2, p0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_visible:Z

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_view:Landroid/view/View;

    .line 219
    const/4 v0, -0x1

    iput v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_viewId:I

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 225
    iput-object p1, p0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_view:Landroid/view/View;

    .line 226
    iput p2, p0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_viewId:I

    .line 227
    invoke-virtual {p0, v2}, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->setVisible(Z)Z

    .line 228
    return-void

    .line 223
    :cond_0
    const-string v0, "not null"

    goto :goto_0
.end method


# virtual methods
.method public handleTouch(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 255
    iget-object v6, p0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v4

    .line 258
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 259
    .local v2, "trueX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    .line 261
    .local v3, "trueY":I
    iget-object v6, p0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    invoke-static {v6, v2, v3}, Lcom/glu/android/GluUtil;->isInRect(Landroid/graphics/Rect;II)Z

    move-result v0

    .line 265
    .local v0, "canBeHandled":Z
    iget-object v6, p0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_view:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v0, :cond_2

    move v1, v5

    .line 268
    .local v1, "ret":Z
    :goto_1
    if-eqz v1, :cond_0

    move v4, v5

    .line 269
    goto :goto_0

    .end local v1    # "ret":Z
    :cond_2
    move v1, v4

    .line 265
    goto :goto_1
.end method

.method public setCoords(IIII)Z
    .locals 1
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v0, p4, :cond_0

    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ne v0, p3, :cond_0

    .line 244
    const/4 v0, 0x0

    .line 250
    :goto_0
    return v0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 247
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 248
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 249
    iget-object v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_rect:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 250
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setVisible(Z)Z
    .locals 1
    .param p1, "v"    # Z

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_visible:Z

    if-ne v0, p1, :cond_0

    .line 234
    const/4 v0, 0x0

    .line 237
    :goto_0
    return v0

    .line 236
    :cond_0
    iput-boolean p1, p0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_visible:Z

    .line 237
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public viewIdAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_viewId:I

    packed-switch v0, :pswitch_data_0

    .line 308
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 280
    :pswitch_0
    const-string v0, "VIEW_IAP_VIEW"

    goto :goto_0

    .line 282
    :pswitch_1
    const-string v0, "VIEW_BANNER_AD"

    goto :goto_0

    .line 284
    :pswitch_2
    const-string v0, "VIEW_LARGE_AD_BACKGROUND"

    goto :goto_0

    .line 286
    :pswitch_3
    const-string v0, "VIEW_LARGE_AD_CLOSE_BUTTON"

    goto :goto_0

    .line 288
    :pswitch_4
    const-string v0, "VIEW_INTERSTITIAL_AD"

    goto :goto_0

    .line 290
    :pswitch_5
    const-string v0, "VIEW_INTERNAL_WEB_VIEW"

    goto :goto_0

    .line 292
    :pswitch_6
    const-string v0, "VIEW_TEST_VIEW"

    goto :goto_0

    .line 294
    :pswitch_7
    const-string v0, "VIEW_ALERT_VIEW"

    goto :goto_0

    .line 296
    :pswitch_8
    const-string v0, "VIEW_DEBUG_WATERMARK"

    goto :goto_0

    .line 298
    :pswitch_9
    const-string v0, "VIEW_DEBUG_CONSOLE"

    goto :goto_0

    .line 300
    :pswitch_a
    const-string v0, "VIEW_HONEYCOMB_HOME_BUTTON"

    goto :goto_0

    .line 302
    :pswitch_b
    const-string v0, "VIEW_HONEYCOMB_BACK_BUTTON"

    goto :goto_0

    .line 304
    :pswitch_c
    const-string v0, "VIEW_GLU_CURSOR"

    goto :goto_0

    .line 306
    :pswitch_d
    const-string v0, "VIEW_COUNT"

    goto :goto_0

    .line 277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
