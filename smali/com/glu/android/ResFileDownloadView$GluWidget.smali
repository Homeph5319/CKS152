.class public abstract Lcom/glu/android/ResFileDownloadView$GluWidget;
.super Ljava/lang/Object;
.source "ResFileDownloadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/ResFileDownloadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GluWidget"
.end annotation


# instance fields
.field public m_boundsOverreachFactor:F

.field public m_dx:I

.field public m_dy:I

.field public m_parent:Lcom/glu/android/ResFileDownloadView;

.field public m_widgetID:I

.field public m_x:I

.field public m_y:I

.field public pointerActive:Z

.field public pointerX:I

.field public pointerY:I


# direct methods
.method public constructor <init>(Lcom/glu/android/ResFileDownloadView;I)V
    .locals 1
    .param p1, "parent"    # Lcom/glu/android/ResFileDownloadView;
    .param p2, "widgetID"    # I

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->pointerX:I

    .line 27
    iput v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->pointerY:I

    .line 28
    iput-boolean v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->pointerActive:Z

    .line 30
    iput v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_x:I

    .line 31
    iput v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_y:I

    .line 32
    iput v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_dx:I

    .line 33
    iput v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_dy:I

    .line 36
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_boundsOverreachFactor:F

    .line 40
    iput-object p1, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_parent:Lcom/glu/android/ResFileDownloadView;

    .line 41
    iput p2, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_widgetID:I

    .line 42
    return-void
.end method


# virtual methods
.method public containsCoords(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x1

    .line 73
    iget v3, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_boundsOverreachFactor:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 75
    iget v3, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_x:I

    if-lt p1, v3, :cond_2

    iget v3, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_dx:I

    if-gt p1, v3, :cond_2

    iget v3, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_y:I

    if-lt p2, v3, :cond_2

    iget v3, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_dy:I

    if-gt p2, v3, :cond_2

    .line 86
    :cond_0
    :goto_0
    return v2

    .line 80
    :cond_1
    iget v3, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_dx:I

    iget v4, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_x:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_boundsOverreachFactor:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    shr-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_dx:I

    iget v5, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_x:I

    sub-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x1

    sub-int v0, v3, v4

    .line 81
    .local v0, "xOff":I
    iget v3, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_dy:I

    iget v4, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_boundsOverreachFactor:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    shr-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_dy:I

    iget v5, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_y:I

    sub-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x1

    sub-int v1, v3, v4

    .line 82
    .local v1, "yOff":I
    iget v3, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_x:I

    sub-int/2addr v3, v0

    if-lt p1, v3, :cond_2

    iget v3, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_dx:I

    add-int/2addr v3, v0

    if-gt p1, v3, :cond_2

    iget v3, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_y:I

    sub-int/2addr v3, v1

    if-lt p2, v3, :cond_2

    iget v3, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_dy:I

    add-int/2addr v3, v1

    if-le p2, v3, :cond_0

    .line 86
    .end local v0    # "xOff":I
    .end local v1    # "yOff":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V
    .locals 6
    .param p1, "g"    # Landroid/graphics/Canvas;
    .param p2, "d"    # Landroid/graphics/drawable/Drawable;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 95
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/glu/android/ResFileDownloadView$GluWidget;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZ)V

    return-void
.end method

.method public drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZ)V
    .locals 2
    .param p1, "g"    # Landroid/graphics/Canvas;
    .param p2, "d"    # Landroid/graphics/drawable/Drawable;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "right"    # Z

    .prologue
    .line 98
    if-eqz p5, :cond_0

    .line 99
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr p3, v0

    .line 101
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr v1, p4

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, p3, p4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 102
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 103
    return-void
.end method

.method public drawImageScaled(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIF)V
    .locals 8
    .param p1, "g"    # Landroid/graphics/Canvas;
    .param p2, "d"    # Landroid/graphics/drawable/Drawable;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "scaleFactor"    # F

    .prologue
    .line 108
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 109
    .local v1, "imgW":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 110
    .local v0, "imgH":I
    int-to-float v4, v1

    mul-float/2addr v4, p5

    float-to-int v4, v4

    shr-int/lit8 v4, v4, 0x1

    shr-int/lit8 v5, v1, 0x1

    sub-int v2, v4, v5

    .line 111
    .local v2, "xOff":I
    int-to-float v4, v0

    mul-float/2addr v4, p5

    float-to-int v4, v4

    shr-int/lit8 v4, v4, 0x1

    shr-int/lit8 v5, v0, 0x1

    sub-int v3, v4, v5

    .line 113
    .local v3, "yOff":I
    sub-int v4, p3, v2

    sub-int v5, p4, v3

    add-int v6, p3, v1

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v6, v2

    add-int v7, p4, v0

    add-int/lit8 v7, v7, -0x1

    add-int/2addr v7, v3

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 114
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 115
    return-void
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_widgetID:I

    return v0
.end method

.method public pointerPressed(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->pointerActive:Z

    .line 51
    return-void
.end method

.method public pointerReleased(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->pointerActive:Z

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_parent:Lcom/glu/android/ResFileDownloadView;

    invoke-virtual {v0, p0}, Lcom/glu/android/ResFileDownloadView;->onWidgetClicked(Lcom/glu/android/ResFileDownloadView$GluWidget;)V

    .line 56
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->pointerActive:Z

    .line 57
    return-void
.end method

.method public pointerReleasedElsewhere()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->pointerActive:Z

    .line 61
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_x:I

    .line 66
    iput p2, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_y:I

    .line 67
    add-int v0, p1, p3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_dx:I

    .line 68
    add-int v0, p2, p4

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_dy:I

    .line 69
    return-void
.end method

.method public abstract tick(I)V
.end method
