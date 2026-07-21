.class public Lcom/glu/android/ResFileDownloadView$GluButton;
.super Lcom/glu/android/ResFileDownloadView$GluWidget;
.source "ResFileDownloadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/ResFileDownloadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GluButton"
.end annotation


# instance fields
.field public m_label:Ljava/lang/String;

.field public m_paint:Landroid/graphics/Paint;

.field public m_rectBounds:Landroid/graphics/Rect;

.field public m_wrappedLabel:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 177
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/glu/android/ResFileDownloadView$GluWidget;-><init>(Lcom/glu/android/ResFileDownloadView;I)V

    .line 173
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_rectBounds:Landroid/graphics/Rect;

    .line 179
    iput-object p1, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_label:Ljava/lang/String;

    .line 180
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget-object v0, v0, Lcom/glu/android/ResFileDownloadView;->m_buttonPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_paint:Landroid/graphics/Paint;

    .line 181
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "widgetID"    # I

    .prologue
    .line 185
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    invoke-direct {p0, v0, p2}, Lcom/glu/android/ResFileDownloadView$GluWidget;-><init>(Lcom/glu/android/ResFileDownloadView;I)V

    .line 173
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_rectBounds:Landroid/graphics/Rect;

    .line 187
    iput-object p1, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_label:Ljava/lang/String;

    .line 188
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget-object v0, v0, Lcom/glu/android/ResFileDownloadView;->m_buttonPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_paint:Landroid/graphics/Paint;

    .line 189
    return-void
.end method

.method public static getDesiredHeight()I
    .locals 1

    .prologue
    .line 191
    const/16 v0, 0x3d

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "g"    # Landroid/graphics/Canvas;

    .prologue
    .line 209
    iget-object v1, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_rectBounds:Landroid/graphics/Rect;

    iget-boolean v0, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->pointerActive:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/glu/android/GluUtil;->CF_BUTTON_SELECTED:Landroid/graphics/LightingColorFilter;

    :goto_0
    iget-object v2, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_wrappedLabel:Ljava/util/Vector;

    iget-object v3, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_paint:Landroid/graphics/Paint;

    invoke-static {p1, v1, v0, v2, v3}, Lcom/glu/android/GluUtil;->paintButton(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/ColorFilter;Ljava/util/Vector;Landroid/graphics/Paint;)V

    .line 210
    return-void

    .line 209
    :cond_0
    sget-object v0, Lcom/glu/android/GluUtil;->CF_BUTTON_DEFAULT:Landroid/graphics/LightingColorFilter;

    goto :goto_0
.end method

.method public setBounds(IIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 195
    invoke-static {}, Lcom/glu/android/ResFileDownloadView$GluButton;->getDesiredHeight()I

    move-result v0

    invoke-super {p0, p1, p2, p3, v0}, Lcom/glu/android/ResFileDownloadView$GluWidget;->setBounds(IIII)V

    .line 197
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_rectBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_x:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 198
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_rectBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_y:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 199
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_rectBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_dx:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 200
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_rectBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_dy:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 202
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_label:Ljava/lang/String;

    iget-object v1, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_paint:Landroid/graphics/Paint;

    invoke-static {v0, p3, v1}, Lcom/glu/android/GluUtil;->wrapText(Ljava/lang/String;ILandroid/graphics/Paint;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_wrappedLabel:Ljava/util/Vector;

    .line 203
    return-void
.end method

.method public tick(I)V
    .locals 0
    .param p1, "elapseMS"    # I

    .prologue
    .line 205
    return-void
.end method
