.class public Lcom/glu/android/NonModalAlertView;
.super Landroid/view/View;
.source "NonModalAlertView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/glu/android/NonModalAlertView$1;,
        Lcom/glu/android/NonModalAlertView$Alert;
    }
.end annotation


# static fields
.field private static final BASE_ALPHA:I = 0xc0

.field private static final BASE_COLOR:I = 0xffffff

.field private static final MAX_LINES:I = 0x3

.field private static final SHADOW_COLOR:I = 0x0

.field private static final START_FADE_MS:I = 0x3e8

.field public static instance:Lcom/glu/android/NonModalAlertView;

.field public static sm_alerts:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/glu/android/NonModalAlertView$Alert;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private FONT_SIZE:I

.field private MARGIN:I

.field private m_curAlpha:I

.field public m_currentAlert:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m_currentAlertTimeRemaining:I

.field private m_prevTime:J

.field private m_textPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/NonModalAlertView;->instance:Lcom/glu/android/NonModalAlertView;

    .line 21
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/glu/android/NonModalAlertView;->sm_alerts:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 37
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object v3, p0, Lcom/glu/android/NonModalAlertView;->m_currentAlert:Ljava/util/Vector;

    .line 23
    iput v1, p0, Lcom/glu/android/NonModalAlertView;->m_currentAlertTimeRemaining:I

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/glu/android/NonModalAlertView;->MARGIN:I

    .line 32
    iput v2, p0, Lcom/glu/android/NonModalAlertView;->FONT_SIZE:I

    .line 33
    iput-object v3, p0, Lcom/glu/android/NonModalAlertView;->m_textPaint:Landroid/graphics/Paint;

    .line 50
    iput v1, p0, Lcom/glu/android/NonModalAlertView;->m_curAlpha:I

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/glu/android/NonModalAlertView;->m_prevTime:J

    .line 39
    sput-object p0, Lcom/glu/android/NonModalAlertView;->instance:Lcom/glu/android/NonModalAlertView;

    .line 40
    iget v0, p0, Lcom/glu/android/NonModalAlertView;->MARGIN:I

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    iput v0, p0, Lcom/glu/android/NonModalAlertView;->MARGIN:I

    .line 41
    invoke-direct {p0}, Lcom/glu/android/NonModalAlertView;->getTextHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/glu/android/NonModalAlertView;->FONT_SIZE:I

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/android/NonModalAlertView;->m_textPaint:Landroid/graphics/Paint;

    .line 43
    iget-object v0, p0, Lcom/glu/android/NonModalAlertView;->m_textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    iget-object v0, p0, Lcom/glu/android/NonModalAlertView;->m_textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 45
    iget-object v0, p0, Lcom/glu/android/NonModalAlertView;->m_textPaint:Landroid/graphics/Paint;

    const v1, 0xffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object v0, p0, Lcom/glu/android/NonModalAlertView;->m_textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 47
    iget-object v0, p0, Lcom/glu/android/NonModalAlertView;->m_textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 48
    return-void
.end method

.method public static alertsQueued()Z
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/glu/android/NonModalAlertView;->sm_alerts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawTextNice(Landroid/graphics/Canvas;Ljava/lang/String;II)V
    .locals 3
    .param p1, "g"    # Landroid/graphics/Canvas;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "yTop"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/glu/android/NonModalAlertView;->m_textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/glu/android/NonModalAlertView;->m_curAlpha:I

    shl-int/lit8 v1, v1, 0x18

    or-int/lit8 v1, v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    add-int/lit8 v0, p3, 0x2

    int-to-float v0, v0

    int-to-float v1, p4

    iget-object v2, p0, Lcom/glu/android/NonModalAlertView;->m_textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/glu/android/NonModalAlertView;->m_textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 85
    iget-object v0, p0, Lcom/glu/android/NonModalAlertView;->m_textPaint:Landroid/graphics/Paint;

    const v1, 0xffffff

    iget v2, p0, Lcom/glu/android/NonModalAlertView;->m_curAlpha:I

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    int-to-float v0, p3

    int-to-float v1, p4

    iget-object v2, p0, Lcom/glu/android/NonModalAlertView;->m_textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/glu/android/NonModalAlertView;->m_textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 87
    return-void
.end method

.method public static getDesiredHeight()I
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public static getDesiredWidth()I
    .locals 1

    .prologue
    .line 156
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v0

    return v0
.end method

.method private getTextHeight()I
    .locals 2

    .prologue
    .line 122
    invoke-static {}, Lcom/glu/android/NonModalAlertView;->getDesiredHeight()I

    move-result v0

    iget v1, p0, Lcom/glu/android/NonModalAlertView;->MARGIN:I

    shl-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getTextWidth()I
    .locals 2

    .prologue
    .line 117
    invoke-static {}, Lcom/glu/android/NonModalAlertView;->getDesiredWidth()I

    move-result v0

    invoke-static {}, Lcom/glu/android/NonModalAlertView;->getDesiredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/glu/android/NonModalAlertView;->MARGIN:I

    shl-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static onDestroy()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/NonModalAlertView;->instance:Lcom/glu/android/NonModalAlertView;

    .line 145
    sget-object v0, Lcom/glu/android/NonModalAlertView;->sm_alerts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 146
    sget-object v0, Lcom/glu/android/NonModalAlertView;->sm_alerts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 147
    :cond_0
    return-void
.end method

.method public static queueAlert(Ljava/lang/String;I)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "durationMS"    # I

    .prologue
    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Queueing nonmodal alert. Duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcom/glu/android/NonModalAlertView$Alert;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/glu/android/NonModalAlertView$Alert;-><init>(Lcom/glu/android/NonModalAlertView$1;)V

    .line 129
    .local v0, "newAlert":Lcom/glu/android/NonModalAlertView$Alert;
    iput-object p0, v0, Lcom/glu/android/NonModalAlertView$Alert;->message:Ljava/lang/String;

    .line 130
    iput p1, v0, Lcom/glu/android/NonModalAlertView$Alert;->durationMS:I

    .line 131
    sget-object v1, Lcom/glu/android/NonModalAlertView;->sm_alerts:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 133
    sget-object v1, Lcom/glu/android/NonModalAlertView;->instance:Lcom/glu/android/NonModalAlertView;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/glu/android/NonModalAlertView;->instance:Lcom/glu/android/NonModalAlertView;

    iget-object v1, v1, Lcom/glu/android/NonModalAlertView;->m_currentAlert:Ljava/util/Vector;

    if-nez v1, :cond_0

    .line 134
    sget-object v1, Lcom/glu/android/NonModalAlertView;->instance:Lcom/glu/android/NonModalAlertView;

    invoke-virtual {v1}, Lcom/glu/android/NonModalAlertView;->configureNextAlert()V

    .line 135
    :cond_0
    return-void
.end method


# virtual methods
.method public configureNextAlert()V
    .locals 6

    .prologue
    const/4 v5, 0x7

    const/4 v2, 0x0

    .line 91
    sget-object v1, Lcom/glu/android/NonModalAlertView;->sm_alerts:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 93
    const-string v1, "Configuring new alert and setting view to visible..."

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 94
    sget-object v1, Lcom/glu/android/NonModalAlertView;->sm_alerts:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glu/android/NonModalAlertView$Alert;

    .line 95
    .local v0, "alert":Lcom/glu/android/NonModalAlertView$Alert;
    sget-object v1, Lcom/glu/android/NonModalAlertView;->sm_alerts:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 96
    iget v1, v0, Lcom/glu/android/NonModalAlertView$Alert;->durationMS:I

    iput v1, p0, Lcom/glu/android/NonModalAlertView;->m_currentAlertTimeRemaining:I

    .line 97
    iget-object v1, p0, Lcom/glu/android/NonModalAlertView;->m_textPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/glu/android/NonModalAlertView;->FONT_SIZE:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 98
    iget-object v1, v0, Lcom/glu/android/NonModalAlertView$Alert;->message:Ljava/lang/String;

    invoke-direct {p0}, Lcom/glu/android/NonModalAlertView;->getTextWidth()I

    move-result v2

    iget-object v3, p0, Lcom/glu/android/NonModalAlertView;->m_textPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/glu/android/NonModalAlertView;->getTextHeight()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/glu/android/GluUtil;->wrapText(Ljava/lang/String;ILandroid/graphics/Paint;I)Ljava/util/Vector;

    move-result-object v1

    iput-object v1, p0, Lcom/glu/android/NonModalAlertView;->m_currentAlert:Ljava/util/Vector;

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/glu/android/NonModalAlertView;->m_prevTime:J

    .line 100
    sget-object v1, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v5, v2}, Lcom/glu/android/GluCanvasOverlayGroup;->setViewVisibility(IZ)V

    .line 107
    .end local v0    # "alert":Lcom/glu/android/NonModalAlertView$Alert;
    :goto_0
    return-void

    .line 104
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/glu/android/NonModalAlertView;->m_currentAlert:Ljava/util/Vector;

    .line 105
    sget-object v1, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    invoke-virtual {v1, v5, v2}, Lcom/glu/android/GluCanvasOverlayGroup;->setViewVisibility(IZ)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "g"    # Landroid/graphics/Canvas;

    .prologue
    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 55
    .local v1, "now":J
    iget v6, p0, Lcom/glu/android/NonModalAlertView;->m_currentAlertTimeRemaining:I

    iget-wide v7, p0, Lcom/glu/android/NonModalAlertView;->m_prevTime:J

    sub-long v7, v1, v7

    long-to-int v7, v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/glu/android/NonModalAlertView;->m_currentAlertTimeRemaining:I

    .line 56
    iput-wide v1, p0, Lcom/glu/android/NonModalAlertView;->m_prevTime:J

    .line 57
    iget-object v6, p0, Lcom/glu/android/NonModalAlertView;->m_currentAlert:Ljava/util/Vector;

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/glu/android/NonModalAlertView;->m_currentAlertTimeRemaining:I

    if-gtz v6, :cond_1

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/glu/android/NonModalAlertView;->configureNextAlert()V

    .line 60
    iget-object v6, p0, Lcom/glu/android/NonModalAlertView;->m_currentAlert:Ljava/util/Vector;

    if-nez v6, :cond_1

    .line 79
    :goto_0
    return-void

    .line 64
    :cond_1
    iget v6, p0, Lcom/glu/android/NonModalAlertView;->m_currentAlertTimeRemaining:I

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_2

    const/16 v6, 0xc0

    :goto_1
    iput v6, p0, Lcom/glu/android/NonModalAlertView;->m_curAlpha:I

    .line 65
    invoke-static {}, Lcom/glu/android/NonModalAlertView;->getDesiredHeight()I

    move-result v6

    shr-int/lit8 v4, v6, 0x2

    .line 66
    .local v4, "picMargin":I
    const v6, 0x7f02001d

    invoke-static {v6}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 67
    .local v3, "pic":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/glu/android/NonModalAlertView;->getDesiredHeight()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-static {}, Lcom/glu/android/NonModalAlertView;->getDesiredHeight()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v3, v4, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 68
    iget v6, p0, Lcom/glu/android/NonModalAlertView;->m_curAlpha:I

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 69
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 71
    invoke-static {}, Lcom/glu/android/NonModalAlertView;->getDesiredHeight()I

    move-result v6

    shr-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/glu/android/NonModalAlertView;->m_textPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    iget-object v8, p0, Lcom/glu/android/NonModalAlertView;->m_currentAlert:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    sub-int v5, v6, v7

    .line 72
    .local v5, "yTop":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v6, p0, Lcom/glu/android/NonModalAlertView;->m_currentAlert:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 74
    iget-object v6, p0, Lcom/glu/android/NonModalAlertView;->m_currentAlert:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {}, Lcom/glu/android/NonModalAlertView;->getDesiredHeight()I

    move-result v7

    iget v8, p0, Lcom/glu/android/NonModalAlertView;->MARGIN:I

    add-int/2addr v7, v8

    invoke-direct {p0, p1, v6, v7, v5}, Lcom/glu/android/NonModalAlertView;->drawTextNice(Landroid/graphics/Canvas;Ljava/lang/String;II)V

    .line 75
    int-to-float v6, v5

    iget-object v7, p0, Lcom/glu/android/NonModalAlertView;->m_textPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 64
    .end local v0    # "i":I
    .end local v3    # "pic":Landroid/graphics/drawable/Drawable;
    .end local v4    # "picMargin":I
    .end local v5    # "yTop":I
    :cond_2
    iget v6, p0, Lcom/glu/android/NonModalAlertView;->m_currentAlertTimeRemaining:I

    mul-int/lit16 v6, v6, 0xc0

    div-int/lit16 v6, v6, 0x3e8

    goto :goto_1

    .line 78
    .restart local v0    # "i":I
    .restart local v3    # "pic":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "picMargin":I
    .restart local v5    # "yTop":I
    :cond_3
    invoke-virtual {p0}, Lcom/glu/android/NonModalAlertView;->invalidate()V

    goto :goto_0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/glu/android/NonModalAlertView;->m_prevTime:J

    .line 113
    :cond_0
    return-void
.end method
