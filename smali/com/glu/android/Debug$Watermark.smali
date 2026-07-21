.class public Lcom/glu/android/Debug$Watermark;
.super Landroid/view/View;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Watermark"
.end annotation


# instance fields
.field private final BASE_ALPHA:I

.field private final BASE_COLOR:I

.field private final BASE_COLOR_SHADOW:I

.field private final FADE_TIMER:I

.field private m_fadeTimer:I

.field private m_forTheLoveOfGodDontReleaseThisBuildText:Ljava/lang/String;

.field private m_lastTickTime:J

.field private m_textPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x2710

    .line 1300
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1290
    iput v2, p0, Lcom/glu/android/Debug$Watermark;->FADE_TIMER:I

    .line 1291
    const v0, 0xffffff

    iput v0, p0, Lcom/glu/android/Debug$Watermark;->BASE_COLOR:I

    .line 1292
    const/4 v0, 0x0

    iput v0, p0, Lcom/glu/android/Debug$Watermark;->BASE_COLOR_SHADOW:I

    .line 1293
    const/16 v0, 0xc0

    iput v0, p0, Lcom/glu/android/Debug$Watermark;->BASE_ALPHA:I

    .line 1294
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/glu/android/Debug$Watermark;->m_lastTickTime:J

    .line 1295
    iput v2, p0, Lcom/glu/android/Debug$Watermark;->m_fadeTimer:I

    .line 1296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/Debug$Watermark;->m_textPaint:Landroid/graphics/Paint;

    .line 1297
    const-string v0, "DEV BUILD Not for sale or distribution"

    iput-object v0, p0, Lcom/glu/android/Debug$Watermark;->m_forTheLoveOfGodDontReleaseThisBuildText:Ljava/lang/String;

    .line 1303
    return-void
.end method

.method public static getDesiredHeight()I
    .locals 1

    .prologue
    .line 1342
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static getDesiredWidth()I
    .locals 1

    .prologue
    .line 1343
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v0

    return v0
.end method

.method public static getDesiredX()I
    .locals 1

    .prologue
    .line 1344
    const/4 v0, 0x0

    return v0
.end method

.method public static getDesiredY()I
    .locals 2

    .prologue
    .line 1345
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v0

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "g"    # Landroid/graphics/Canvas;

    .prologue
    .line 1316
    return-void
.end method
