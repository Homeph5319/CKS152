.class public Lcom/glu/android/GNSWidgetCollection$GNSSlider;
.super Lcom/glu/android/GNSWidgetCollection$GNSWidget;
.source "GNSWidgetCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GNSWidgetCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GNSSlider"
.end annotation


# static fields
.field public static final SLIDER_VALUE_MAX:I = 0x64

.field public static final SLIDER_VALUE_MIN:I


# instance fields
.field public m_position:I

.field public m_sliderBall:Landroid/graphics/drawable/Drawable;

.field public m_sliderGrabbed:Z

.field public m_sliderX:I

.field public m_sliderY:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 3
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "y"    # I
    .param p3, "defaultValue"    # I
    .param p4, "widgetId"    # I

    .prologue
    const/4 v2, 0x0

    .line 237
    sget-object v0, Lcom/glu/android/GNSWidgetCollection;->instance:Lcom/glu/android/GNSWidgetCollection;

    iget v0, v0, Lcom/glu/android/GNSWidgetCollection;->m_collectionWidth:I

    sget-object v1, Lcom/glu/android/GNSWidgetCollection;->instance:Lcom/glu/android/GNSWidgetCollection;

    iget v1, v1, Lcom/glu/android/GNSWidgetCollection;->m_widgetHeight:I

    invoke-direct {p0, v0, v1, p2, p4}, Lcom/glu/android/GNSWidgetCollection$GNSWidget;-><init>(IIII)V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_sliderBall:Landroid/graphics/drawable/Drawable;

    .line 226
    iput v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_position:I

    .line 229
    iput v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_sliderX:I

    .line 230
    iput v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_sliderY:I

    .line 233
    iput-boolean v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_sliderGrabbed:Z

    .line 238
    invoke-virtual {p0, p1}, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->setLabel(Ljava/lang/String;)V

    .line 239
    sget v0, Lcom/glu/android/GNSWidgetCollection;->SLIDER_WIDTH:I

    mul-int/2addr v0, p3

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_position:I

    .line 241
    const v0, 0x7f020014

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_sliderBall:Landroid/graphics/drawable/Drawable;

    .line 243
    iget v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_dy:I

    iget v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_y:I

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    sget v1, Lcom/glu/android/GNSWidgetCollection;->SLIDER_HEIGHT:I

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_sliderY:I

    .line 244
    invoke-virtual {p0}, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->postWidthChangedCalculations()V

    .line 245
    return-void
.end method

.method private handleSliderDone()V
    .locals 2

    .prologue
    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_sliderGrabbed:Z

    .line 297
    iget v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_position:I

    mul-int/lit8 v0, v0, 0x64

    sget v1, Lcom/glu/android/GNSWidgetCollection;->SLIDER_WIDTH:I

    div-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->triggerCallback(I)V

    .line 298
    return-void
.end method


# virtual methods
.method public differentWidgetTouched(Lcom/glu/android/GNSWidgetCollection$GNSWidget;I)V
    .locals 1
    .param p1, "widget"    # Lcom/glu/android/GNSWidgetCollection$GNSWidget;
    .param p2, "event"    # I

    .prologue
    .line 302
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_sliderGrabbed:Z

    if-eqz v0, :cond_0

    .line 303
    invoke-direct {p0}, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->handleSliderDone()V

    .line 304
    :cond_0
    return-void
.end method

.method public handleTouch(III)Z
    .locals 6
    .param p1, "event"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 264
    if-nez p1, :cond_1

    .line 266
    iget v4, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_sliderX:I

    iget v5, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_position:I

    add-int v0, v4, v5

    .line 267
    .local v0, "xCtr":I
    iget v4, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_dy:I

    iget v5, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_y:I

    add-int/2addr v4, v5

    shr-int/lit8 v1, v4, 0x1

    .line 269
    .local v1, "yCtr":I
    sget v4, Lcom/glu/android/GNSWidgetCollection;->SLIDER_TOUCH_EXTENSION:I

    sub-int v4, v0, v4

    iget-object v5, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_sliderBall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    if-lt p2, v4, :cond_4

    iget-object v4, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_sliderBall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v0

    sget v5, Lcom/glu/android/GNSWidgetCollection;->SLIDER_TOUCH_EXTENSION:I

    add-int/2addr v4, v5

    if-ge p2, v4, :cond_4

    sget v4, Lcom/glu/android/GNSWidgetCollection;->SLIDER_TOUCH_EXTENSION:I

    sub-int v4, v1, v4

    iget-object v5, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_sliderBall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    if-lt p3, v4, :cond_4

    iget-object v4, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_sliderBall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v1

    sget v5, Lcom/glu/android/GNSWidgetCollection;->SLIDER_TOUCH_EXTENSION:I

    add-int/2addr v4, v5

    if-ge p3, v4, :cond_4

    .line 272
    iput-boolean v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_sliderGrabbed:Z

    .line 291
    .end local v0    # "xCtr":I
    .end local v1    # "yCtr":I
    :cond_0
    :goto_0
    return v2

    .line 276
    :cond_1
    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    iget-boolean v4, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_sliderGrabbed:Z

    if-eqz v4, :cond_3

    .line 278
    iget v4, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_sliderX:I

    sub-int v4, p2, v4

    iput v4, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_position:I

    .line 279
    iget v4, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_position:I

    if-gez v4, :cond_2

    .line 280
    iput v3, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_position:I

    goto :goto_0

    .line 281
    :cond_2
    iget v3, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_position:I

    sget v4, Lcom/glu/android/GNSWidgetCollection;->SLIDER_WIDTH:I

    if-le v3, v4, :cond_0

    .line 282
    sget v3, Lcom/glu/android/GNSWidgetCollection;->SLIDER_WIDTH:I

    iput v3, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_position:I

    goto :goto_0

    .line 285
    :cond_3
    if-ne p1, v2, :cond_4

    iget-boolean v4, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_sliderGrabbed:Z

    if-eqz v4, :cond_4

    .line 287
    invoke-direct {p0}, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->handleSliderDone()V

    goto :goto_0

    :cond_4
    move v2, v3

    .line 291
    goto :goto_0
.end method

.method public paint(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "g"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x1

    .line 249
    invoke-virtual {p0, p1}, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->drawStandardLabel(Landroid/graphics/Canvas;)V

    .line 251
    iget v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_sliderX:I

    iget v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_position:I

    add-int v9, v0, v1

    .line 252
    .local v9, "xCtr":I
    iget v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_dy:I

    iget v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_y:I

    add-int/2addr v0, v1

    shr-int/lit8 v10, v0, 0x1

    .line 254
    .local v10, "yCtr":I
    sget-object v1, Lcom/glu/android/GNSWidgetCollection;->SLIDER_GRADIENT_COLORS:[I

    iget v3, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_sliderX:I

    iget v4, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_sliderY:I

    iget v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_sliderX:I

    sget v5, Lcom/glu/android/GNSWidgetCollection;->SLIDER_WIDTH:I

    add-int/2addr v0, v5

    add-int/lit8 v5, v0, -0x1

    iget v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_sliderY:I

    sget v6, Lcom/glu/android/GNSWidgetCollection;->SLIDER_HEIGHT:I

    add-int/2addr v0, v6

    add-int/lit8 v6, v0, -0x1

    sget v7, Lcom/glu/android/GNSWidgetCollection;->SLIDER_RR_RADIUS:I

    move-object v0, p1

    move v8, v2

    invoke-static/range {v0 .. v8}, Lcom/glu/android/GluUtil;->drawGradientRoundRect(Landroid/graphics/Canvas;[IZIIIIII)V

    .line 256
    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_sliderBall:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_sliderBall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    sub-int v1, v9, v1

    iget-object v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_sliderBall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    sub-int v2, v10, v2

    invoke-static {p1, v0, v1, v2}, Lcom/glu/android/GluUtil;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    .line 259
    return-void
.end method

.method public postWidthChangedCalculations()V
    .locals 2

    .prologue
    .line 308
    iget v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_width:I

    sget v1, Lcom/glu/android/GNSWidgetCollection;->SLIDER_PADDING:I

    sub-int/2addr v0, v1

    sget v1, Lcom/glu/android/GNSWidgetCollection;->SLIDER_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSlider;->m_sliderX:I

    .line 309
    return-void
.end method
