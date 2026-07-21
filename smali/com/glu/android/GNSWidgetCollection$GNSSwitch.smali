.class public Lcom/glu/android/GNSWidgetCollection$GNSSwitch;
.super Lcom/glu/android/GNSWidgetCollection$GNSWidget;
.source "GNSWidgetCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GNSWidgetCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GNSSwitch"
.end annotation


# instance fields
.field public m_on:Z

.field public m_pressing:Z

.field public m_switchOff:Landroid/graphics/drawable/Drawable;

.field public m_switchOffH:Landroid/graphics/drawable/Drawable;

.field public m_switchOn:Landroid/graphics/drawable/Drawable;

.field public m_switchOnH:Landroid/graphics/drawable/Drawable;

.field public m_switchX:I

.field public m_switchY:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZI)V
    .locals 4
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "y"    # I
    .param p3, "defaultValue"    # Z
    .param p4, "widgetId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 329
    sget-object v0, Lcom/glu/android/GNSWidgetCollection;->instance:Lcom/glu/android/GNSWidgetCollection;

    iget v0, v0, Lcom/glu/android/GNSWidgetCollection;->m_collectionWidth:I

    sget-object v1, Lcom/glu/android/GNSWidgetCollection;->instance:Lcom/glu/android/GNSWidgetCollection;

    iget v1, v1, Lcom/glu/android/GNSWidgetCollection;->m_widgetHeight:I

    invoke-direct {p0, v0, v1, p2, p4}, Lcom/glu/android/GNSWidgetCollection$GNSWidget;-><init>(IIII)V

    .line 315
    iput-boolean v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_on:Z

    .line 317
    iput-object v3, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_switchOn:Landroid/graphics/drawable/Drawable;

    .line 318
    iput-object v3, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_switchOff:Landroid/graphics/drawable/Drawable;

    .line 319
    iput-object v3, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_switchOnH:Landroid/graphics/drawable/Drawable;

    .line 320
    iput-object v3, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_switchOffH:Landroid/graphics/drawable/Drawable;

    .line 322
    iput v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_switchX:I

    .line 323
    iput v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_switchY:I

    .line 325
    iput-boolean v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_pressing:Z

    .line 330
    invoke-virtual {p0, p1}, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->setLabel(Ljava/lang/String;)V

    .line 331
    iput-boolean p3, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_on:Z

    .line 333
    const v0, 0x7f020017

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_switchOn:Landroid/graphics/drawable/Drawable;

    .line 334
    const v0, 0x7f020015

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_switchOff:Landroid/graphics/drawable/Drawable;

    .line 335
    const v0, 0x7f020018

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_switchOnH:Landroid/graphics/drawable/Drawable;

    .line 336
    const v0, 0x7f020016

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_switchOffH:Landroid/graphics/drawable/Drawable;

    .line 338
    iget v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_dy:I

    iget v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_y:I

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_switchOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_switchY:I

    .line 339
    invoke-virtual {p0}, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->postWidthChangedCalculations()V

    .line 340
    return-void
.end method


# virtual methods
.method public differentWidgetTouched(Lcom/glu/android/GNSWidgetCollection$GNSWidget;I)V
    .locals 1
    .param p1, "widget"    # Lcom/glu/android/GNSWidgetCollection$GNSWidget;
    .param p2, "event"    # I

    .prologue
    .line 377
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_pressing:Z

    .line 379
    :cond_0
    return-void
.end method

.method public handleTouch(III)Z
    .locals 5
    .param p1, "event"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 351
    iget v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_switchX:I

    sget v4, Lcom/glu/android/GNSWidgetCollection;->SWITCH_TOUCH_EXTENSION:I

    sub-int/2addr v1, v4

    if-lt p2, v1, :cond_1

    iget v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_switchX:I

    iget-object v4, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_switchOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Lcom/glu/android/GNSWidgetCollection;->SWITCH_TOUCH_EXTENSION:I

    add-int/2addr v1, v4

    if-ge p2, v1, :cond_1

    iget v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_switchY:I

    sget v4, Lcom/glu/android/GNSWidgetCollection;->SWITCH_TOUCH_EXTENSION:I

    sub-int/2addr v1, v4

    if-lt p3, v1, :cond_1

    iget v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_switchY:I

    iget-object v4, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_switchOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Lcom/glu/android/GNSWidgetCollection;->SWITCH_TOUCH_EXTENSION:I

    add-int/2addr v1, v4

    if-ge p3, v1, :cond_1

    move v0, v2

    .line 354
    .local v0, "inArea":Z
    :goto_0
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 356
    iput-boolean v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_pressing:Z

    .line 372
    :cond_0
    :goto_1
    return v2

    .end local v0    # "inArea":Z
    :cond_1
    move v0, v3

    .line 351
    goto :goto_0

    .line 359
    .restart local v0    # "inArea":Z
    :cond_2
    iget-boolean v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_pressing:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 361
    :cond_3
    iget-boolean v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_pressing:Z

    if-eqz v1, :cond_6

    if-ne p1, v2, :cond_6

    .line 363
    iput-boolean v3, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_pressing:Z

    .line 364
    if-eqz v0, :cond_0

    .line 366
    iget-boolean v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_on:Z

    if-nez v1, :cond_5

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_on:Z

    .line 367
    iget-boolean v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_on:Z

    if-eqz v1, :cond_4

    move v3, v2

    :cond_4
    invoke-virtual {p0, v3}, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->triggerCallback(I)V

    goto :goto_1

    :cond_5
    move v1, v3

    .line 366
    goto :goto_2

    :cond_6
    move v2, v3

    .line 372
    goto :goto_1
.end method

.method public paint(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "g"    # Landroid/graphics/Canvas;

    .prologue
    .line 344
    invoke-virtual {p0, p1}, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->drawStandardLabel(Landroid/graphics/Canvas;)V

    .line 346
    iget-boolean v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_on:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_pressing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_switchOnH:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_switchX:I

    iget v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_switchY:I

    invoke-static {p1, v0, v1, v2}, Lcom/glu/android/GluUtil;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    .line 347
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_switchOn:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_pressing:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_switchOffH:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_switchOff:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public postWidthChangedCalculations()V
    .locals 2

    .prologue
    .line 383
    iget v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_x:I

    iget v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_width:I

    add-int/2addr v0, v1

    sget v1, Lcom/glu/android/GNSWidgetCollection;->ROUND_RECT_PADDING:I

    shl-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_switchOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;->m_switchX:I

    .line 384
    return-void
.end method
