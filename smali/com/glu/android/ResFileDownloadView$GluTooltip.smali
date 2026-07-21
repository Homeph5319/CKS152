.class public Lcom/glu/android/ResFileDownloadView$GluTooltip;
.super Lcom/glu/android/ResFileDownloadView$GluWidget;
.source "ResFileDownloadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/ResFileDownloadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GluTooltip"
.end annotation


# static fields
.field private static final FULL_TOOLTIP_PULSATE_TIME:I = 0x3e8


# instance fields
.field public m_elapsedTime:I

.field public m_popupText:Ljava/lang/String;

.field public m_popupTitle:Ljava/lang/String;

.field public m_scaleFactor:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 269
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/glu/android/ResFileDownloadView$GluWidget;-><init>(Lcom/glu/android/ResFileDownloadView;I)V

    .line 262
    const/4 v0, 0x0

    iput v0, p0, Lcom/glu/android/ResFileDownloadView$GluTooltip;->m_elapsedTime:I

    .line 263
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/glu/android/ResFileDownloadView$GluTooltip;->m_scaleFactor:F

    .line 271
    const v0, 0x7f070049

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glu/android/ResFileDownloadView$GluTooltip;->m_popupTitle:Ljava/lang/String;

    .line 272
    iput-object p1, p0, Lcom/glu/android/ResFileDownloadView$GluTooltip;->m_popupText:Ljava/lang/String;

    .line 274
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/glu/android/ResFileDownloadView$GluTooltip;->m_boundsOverreachFactor:F

    .line 275
    return-void
.end method

.method public static getDesiredWH()I
    .locals 1

    .prologue
    .line 314
    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "g"    # Landroid/graphics/Canvas;

    .prologue
    .line 318
    sget-object v6, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget-object v1, v6, Lcom/glu/android/ResFileDownloadView;->m_tooltipImg:Landroid/graphics/drawable/Drawable;

    .line 319
    .local v1, "img":Landroid/graphics/drawable/Drawable;
    sget-object v6, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget-object v0, v6, Lcom/glu/android/ResFileDownloadView;->m_tooltipColorFilter:Landroid/graphics/LightingColorFilter;

    .line 321
    .local v0, "cf":Landroid/graphics/LightingColorFilter;
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 323
    invoke-static {}, Lcom/glu/android/ResFileDownloadView$GluTooltip;->getDesiredWH()I

    move-result v3

    .line 324
    .local v3, "imgW":I
    move v2, v3

    .line 325
    .local v2, "imgH":I
    int-to-float v6, v3

    iget v7, p0, Lcom/glu/android/ResFileDownloadView$GluTooltip;->m_scaleFactor:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    shr-int/lit8 v6, v6, 0x1

    shr-int/lit8 v7, v3, 0x1

    sub-int v4, v6, v7

    .line 326
    .local v4, "xOff":I
    int-to-float v6, v2

    iget v7, p0, Lcom/glu/android/ResFileDownloadView$GluTooltip;->m_scaleFactor:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    shr-int/lit8 v6, v6, 0x1

    shr-int/lit8 v7, v2, 0x1

    sub-int v5, v6, v7

    .line 328
    .local v5, "yOff":I
    iget v6, p0, Lcom/glu/android/ResFileDownloadView$GluTooltip;->m_x:I

    sub-int/2addr v6, v4

    iget v7, p0, Lcom/glu/android/ResFileDownloadView$GluTooltip;->m_y:I

    sub-int/2addr v7, v5

    iget v8, p0, Lcom/glu/android/ResFileDownloadView$GluTooltip;->m_x:I

    add-int/2addr v8, v3

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v8, v4

    iget v9, p0, Lcom/glu/android/ResFileDownloadView$GluTooltip;->m_y:I

    add-int/2addr v9, v2

    add-int/lit8 v9, v9, -0x1

    add-int/2addr v9, v5

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 329
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 331
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 332
    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView$GluTooltip;->m_popupText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView$GluTooltip;->m_popupTitle:Ljava/lang/String;

    return-object v0
.end method

.method public tick(I)V
    .locals 5
    .param p1, "elapseMS"    # I

    .prologue
    const/16 v4, 0xfa

    const/high16 v3, 0x44fa0000    # 2000.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 289
    iget v1, p0, Lcom/glu/android/ResFileDownloadView$GluTooltip;->m_elapsedTime:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/glu/android/ResFileDownloadView$GluTooltip;->m_elapsedTime:I

    .line 293
    iget v1, p0, Lcom/glu/android/ResFileDownloadView$GluTooltip;->m_elapsedTime:I

    rem-int/lit16 v0, v1, 0x3e8

    iput v0, p0, Lcom/glu/android/ResFileDownloadView$GluTooltip;->m_elapsedTime:I

    .line 294
    .local v0, "elapsedTmp":I
    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_1

    .line 296
    if-le v0, v4, :cond_0

    .line 297
    rsub-int v0, v0, 0x1f4

    .line 300
    :cond_0
    int-to-float v1, v0

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/glu/android/ResFileDownloadView$GluTooltip;->m_scaleFactor:F

    .line 312
    :goto_0
    return-void

    .line 305
    :cond_1
    add-int/lit16 v0, v0, -0x1f4

    .line 306
    if-le v0, v4, :cond_2

    .line 307
    rsub-int v0, v0, 0x1f4

    .line 310
    :cond_2
    int-to-float v1, v0

    div-float/2addr v1, v3

    sub-float v1, v2, v1

    iput v1, p0, Lcom/glu/android/ResFileDownloadView$GluTooltip;->m_scaleFactor:F

    goto :goto_0
.end method
