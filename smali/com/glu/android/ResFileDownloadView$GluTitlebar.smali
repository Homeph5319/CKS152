.class public Lcom/glu/android/ResFileDownloadView$GluTitlebar;
.super Lcom/glu/android/ResFileDownloadView$GluWidget;
.source "ResFileDownloadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/ResFileDownloadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GluTitlebar"
.end annotation


# instance fields
.field public m_label:Ljava/lang/String;

.field public m_paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 222
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/glu/android/ResFileDownloadView$GluWidget;-><init>(Lcom/glu/android/ResFileDownloadView;I)V

    .line 224
    iput-object p1, p0, Lcom/glu/android/ResFileDownloadView$GluTitlebar;->m_label:Ljava/lang/String;

    .line 225
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget-object v0, v0, Lcom/glu/android/ResFileDownloadView;->m_titlebarPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/glu/android/ResFileDownloadView$GluTitlebar;->m_paint:Landroid/graphics/Paint;

    .line 226
    return-void
.end method

.method public static getDesiredHeight()I
    .locals 1

    .prologue
    .line 234
    const/16 v0, 0x26

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    return v0
.end method

.method public static getDesiredWidth()I
    .locals 1

    .prologue
    .line 233
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "g"    # Landroid/graphics/Canvas;

    .prologue
    .line 240
    const v4, 0x7f020041

    invoke-static {v4}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 242
    .local v2, "titlebarImg":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/glu/android/ResFileDownloadView$GluTitlebar;->getDesiredHeight()I

    move-result v0

    .line 243
    .local v0, "desiredHeight":I
    invoke-static {}, Lcom/glu/android/ResFileDownloadView$GluTitlebar;->getDesiredWidth()I

    move-result v1

    .line 245
    .local v1, "desiredWidth":I
    iget v3, p0, Lcom/glu/android/ResFileDownloadView$GluTitlebar;->m_x:I

    .local v3, "x":I
    :goto_0
    iget v4, p0, Lcom/glu/android/ResFileDownloadView$GluTitlebar;->m_dx:I

    if-ge v3, v4, :cond_0

    .line 247
    iget v4, p0, Lcom/glu/android/ResFileDownloadView$GluTitlebar;->m_y:I

    add-int v5, v3, v1

    iget v6, p0, Lcom/glu/android/ResFileDownloadView$GluTitlebar;->m_y:I

    add-int/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 248
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 245
    add-int/2addr v3, v1

    goto :goto_0

    .line 253
    :cond_0
    iget-object v4, p0, Lcom/glu/android/ResFileDownloadView$GluTitlebar;->m_label:Ljava/lang/String;

    iget v5, p0, Lcom/glu/android/ResFileDownloadView$GluTitlebar;->m_x:I

    add-int/lit8 v5, v5, 0xa

    int-to-float v5, v5

    iget v6, p0, Lcom/glu/android/ResFileDownloadView$GluTitlebar;->m_y:I

    iget v7, p0, Lcom/glu/android/ResFileDownloadView$GluTitlebar;->m_dy:I

    iget v8, p0, Lcom/glu/android/ResFileDownloadView$GluTitlebar;->m_y:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/glu/android/ResFileDownloadView$GluTitlebar;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/glu/android/ResFileDownloadView$GluTitlebar;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 254
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 230
    invoke-static {}, Lcom/glu/android/ResFileDownloadView$GluTitlebar;->getDesiredHeight()I

    move-result v0

    invoke-super {p0, p1, p2, p3, v0}, Lcom/glu/android/ResFileDownloadView$GluWidget;->setBounds(IIII)V

    .line 231
    return-void
.end method

.method public tick(I)V
    .locals 0
    .param p1, "elapseMS"    # I

    .prologue
    .line 236
    return-void
.end method
