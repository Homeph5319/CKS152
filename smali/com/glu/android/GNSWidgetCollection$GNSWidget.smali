.class public abstract Lcom/glu/android/GNSWidgetCollection$GNSWidget;
.super Ljava/lang/Object;
.source "GNSWidgetCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GNSWidgetCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GNSWidget"
.end annotation


# instance fields
.field public m_dx:I

.field public m_dy:I

.field public m_height:I

.field public m_label:Ljava/lang/String;

.field public m_touchFocusGrabbed:Z

.field public m_widgetId:I

.field public m_width:I

.field public m_x:I

.field public m_y:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "y"    # I
    .param p4, "widgetId"    # I

    .prologue
    const/4 v0, -0x1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_width:I

    .line 45
    iput v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_height:I

    .line 46
    iput v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_x:I

    .line 47
    iput v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_y:I

    .line 48
    iput v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_dx:I

    .line 49
    iput v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_dy:I

    .line 51
    iput v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_widgetId:I

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_label:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_touchFocusGrabbed:Z

    .line 61
    invoke-virtual {p0, p1}, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->setWidth(I)V

    .line 62
    iput p4, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_widgetId:I

    .line 63
    invoke-virtual {p0, p3}, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->setY(I)V

    .line 64
    invoke-virtual {p0, p2}, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->setHeight(I)V

    .line 65
    return-void
.end method


# virtual methods
.method public abstract differentWidgetTouched(Lcom/glu/android/GNSWidgetCollection$GNSWidget;I)V
.end method

.method public drawStandardLabel(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "g"    # Landroid/graphics/Canvas;

    .prologue
    .line 95
    iget-object v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_label:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 103
    :goto_0
    return-void

    .line 98
    :cond_0
    sget-object v2, Lcom/glu/android/GNSWidgetCollection;->instance:Lcom/glu/android/GNSWidgetCollection;

    iget-object v2, v2, Lcom/glu/android/GNSWidgetCollection;->m_labelPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 99
    .local v0, "height":F
    iget v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_y:I

    iget v3, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_dy:I

    iget v4, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_y:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v1, v2

    .line 102
    .local v1, "startY":F
    iget-object v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_label:Ljava/lang/String;

    iget v3, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_x:I

    sget v4, Lcom/glu/android/GNSWidgetCollection;->SETTINGS_INSIDE_MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    add-float/2addr v4, v1

    sget-object v5, Lcom/glu/android/GNSWidgetCollection;->instance:Lcom/glu/android/GNSWidgetCollection;

    iget-object v5, v5, Lcom/glu/android/GNSWidgetCollection;->m_labelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_label:Ljava/lang/String;

    return-object v0
.end method

.method public abstract handleTouch(III)Z
.end method

.method public abstract paint(Landroid/graphics/Canvas;)V
.end method

.method public abstract postWidthChangedCalculations()V
.end method

.method public setHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_height:I

    .line 124
    iget v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_y:I

    iget v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_height:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_dy:I

    .line 125
    return-void
.end method

.method public final setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_label:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setWidth(I)V
    .locals 2
    .param p1, "width"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_width:I

    .line 70
    sget v0, Lcom/glu/android/GNSWidgetCollection;->ROUND_RECT_PADDING:I

    iput v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_x:I

    .line 71
    iget v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_x:I

    iget v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_width:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_dx:I

    .line 72
    return-void
.end method

.method public setY(I)V
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_y:I

    .line 118
    iget v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_y:I

    iget v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_height:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_dy:I

    .line 119
    return-void
.end method

.method public triggerCallback(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->triggerCallback(ILjava/lang/String;)V

    .line 77
    return-void
.end method

.method public triggerCallback(ILjava/lang/String;)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 81
    iget v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_widgetId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 82
    const-string v0, "GNS callback triggered for invalid widget."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    iget v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_widgetId:I

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-static {v1, p1, v0}, Lcom/glu/android/GluJNI;->gnsCallbackEvent(II[B)V

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/glu/android/GluUtil;->stringToNativeByteArray(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1
.end method

.method public triggerCallback(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->triggerCallback(ILjava/lang/String;)V

    .line 90
    return-void
.end method
