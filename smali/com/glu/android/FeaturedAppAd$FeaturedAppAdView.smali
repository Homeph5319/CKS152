.class public Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;
.super Landroid/view/View;
.source "FeaturedAppAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/FeaturedAppAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeaturedAppAdView"
.end annotation


# instance fields
.field private m_adIterations:I

.field private m_adPressed:Z

.field private m_amount:I

.field private m_appDescription:Ljava/lang/String;

.field private m_appName:Ljava/lang/String;

.field private m_background:Landroid/graphics/drawable/Drawable;

.field private m_buyStringPrettyCost:Ljava/lang/String;

.field private m_buyStringPrettyInstallFor:Ljava/lang/String;

.field private m_buyStringPrettyWhatYouDownload:Ljava/lang/String;

.field private m_buyStringPrettyWhatYouGet:Ljava/lang/String;

.field private m_cost:Ljava/lang/String;

.field private m_currency:Ljava/lang/String;

.field private m_defaultTextSize:I

.field private m_fullscreenURL:Ljava/lang/String;

.field private m_getIconThread:Ljava/lang/Thread;

.field private m_icon:Landroid/graphics/drawable/Drawable;

.field private m_iconURL:Ljava/lang/String;

.field private m_installForPaint:Landroid/graphics/Paint;

.field private m_pricePaint:Landroid/graphics/Paint;

.field private m_smallerDefaultTextSize:I

.field private m_standardAdDrawable:Landroid/graphics/drawable/Drawable;

.field private m_standardAdPendingDestruction:Z

.field private m_standardAdReady:Z

.field private m_standardAdURL:Ljava/lang/String;

.field private m_storeId:Ljava/lang/String;

.field private m_targetURL:Ljava/lang/String;

.field private m_textMargin:I

.field private m_whatYouDownloadPaint:Landroid/graphics/Paint;

.field private m_whatYouGetPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_getIconThread:Ljava/lang/Thread;

    .line 37
    iput v3, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_defaultTextSize:I

    .line 38
    iput v3, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_smallerDefaultTextSize:I

    .line 41
    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_icon:Landroid/graphics/drawable/Drawable;

    .line 42
    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_cost:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_storeId:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_appName:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_appDescription:Ljava/lang/String;

    .line 46
    iput v4, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_amount:I

    .line 47
    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_targetURL:Ljava/lang/String;

    .line 48
    iput v3, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_adIterations:I

    .line 49
    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_fullscreenURL:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_iconURL:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_currency:Ljava/lang/String;

    .line 54
    iput v4, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_textMargin:I

    .line 55
    iput-boolean v3, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_adPressed:Z

    .line 58
    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_background:Landroid/graphics/drawable/Drawable;

    .line 59
    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_buyStringPrettyWhatYouGet:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_buyStringPrettyWhatYouDownload:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_buyStringPrettyInstallFor:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_buyStringPrettyCost:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_whatYouGetPaint:Landroid/graphics/Paint;

    .line 64
    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_whatYouDownloadPaint:Landroid/graphics/Paint;

    .line 65
    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_installForPaint:Landroid/graphics/Paint;

    .line 66
    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_pricePaint:Landroid/graphics/Paint;

    .line 69
    iput-boolean v3, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_standardAdReady:Z

    .line 70
    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_standardAdURL:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_standardAdDrawable:Landroid/graphics/drawable/Drawable;

    .line 72
    iput-boolean v3, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_standardAdPendingDestruction:Z

    .line 78
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1WithSpecialTabletLogic(I)I

    move-result v0

    iput v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_defaultTextSize:I

    .line 79
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1WithSpecialTabletLogic(I)I

    move-result v0

    iput v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_smallerDefaultTextSize:I

    .line 81
    invoke-direct {p0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->getDesiredWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->getDesiredHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/glu/android/SoftwareImageFactory;->createPrettyTapjoyBackground(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_background:Landroid/graphics/drawable/Drawable;

    .line 82
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_background:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->getDesiredWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->getDesiredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_whatYouGetPaint:Landroid/graphics/Paint;

    .line 84
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_whatYouGetPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_whatYouGetPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 86
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_whatYouGetPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_defaultTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 87
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_whatYouGetPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_whatYouGetPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 89
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_whatYouGetPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 90
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_whatYouGetPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_whatYouDownloadPaint:Landroid/graphics/Paint;

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_whatYouGetPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_installForPaint:Landroid/graphics/Paint;

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_whatYouGetPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_pricePaint:Landroid/graphics/Paint;

    .line 93
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1WithSpecialTabletLogic(I)I

    move-result v0

    iput v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_textMargin:I

    .line 94
    return-void
.end method

.method static synthetic access$102(Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_icon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$202(Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_getIconThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$300(Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;)I
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->getDesiredWidth()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;)I
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    .prologue
    .line 33
    iget v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_adIterations:I

    return v0
.end method

.method static synthetic access$410(Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;)I
    .locals 2
    .param p0, "x0"    # Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    .prologue
    .line 33
    iget v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_adIterations:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_adIterations:I

    return v0
.end method

.method static synthetic access$500(Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_standardAdPendingDestruction:Z

    return v0
.end method

.method static synthetic access$502(Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_standardAdPendingDestruction:Z

    return p1
.end method

.method static synthetic access$602(Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_standardAdReady:Z

    return p1
.end method

.method static synthetic access$702(Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_standardAdURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_standardAdDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$900(Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;)I
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->getDesiredHeight()I

    move-result v0

    return v0
.end method

.method private drawTextNice(Landroid/graphics/Canvas;Ljava/lang/String;IILandroid/graphics/Paint;)V
    .locals 3
    .param p1, "g"    # Landroid/graphics/Canvas;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 240
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/glu/android/GluUtil;->scaleRelativeToG1WithSpecialTabletLogic(I)I

    move-result v0

    .line 241
    .local v0, "shadowOffset":I
    const/high16 v1, -0x80000000

    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    add-int v1, p3, v0

    int-to-float v1, v1

    add-int v2, p4, v0

    int-to-float v2, v2

    invoke-virtual {p1, p2, v1, v2, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 243
    const/4 v1, -0x1

    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    int-to-float v1, p3

    int-to-float v2, p4

    invoke-virtual {p1, p2, v1, v2, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 245
    return-void
.end method

.method private getDesiredHeight()I
    .locals 1

    .prologue
    .line 254
    const/16 v0, 0x32

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1WithSpecialTabletLogic(I)I

    move-result v0

    return v0
.end method

.method private getDesiredWidth()I
    .locals 1

    .prologue
    .line 249
    const/16 v0, 0x140

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1WithSpecialTabletLogic(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getAdIterations()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_adIterations:I

    return v0
.end method

.method public getAmount()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_amount:I

    return v0
.end method

.method public getAppDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_appDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_appName:Ljava/lang/String;

    return-object v0
.end method

.method public getCost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_cost:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_currency:Ljava/lang/String;

    return-object v0
.end method

.method public getFullScreenAdURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_fullscreenURL:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_iconURL:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_storeId:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_targetURL:Ljava/lang/String;

    return-object v0
.end method

.method public isBannerAdValid()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_standardAdReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_standardAdURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_standardAdDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFeaturedAdValid()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_amount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_cost:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_currency:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_appName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_targetURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_adIterations:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFeaturedAdValidForBanners()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->isFeaturedAdValidForBanners()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->isBannerAdValid()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "g"    # Landroid/graphics/Canvas;

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 191
    :cond_1
    :try_start_1
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->getWidth()I

    move-result v8

    .line 195
    .local v8, "width":I
    invoke-virtual {p0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->getHeight()I

    move-result v7

    .line 197
    .local v7, "height":I
    invoke-virtual {p0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->isFeaturedAdValidForBanners()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 200
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 203
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_buyStringPrettyWhatYouGet:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 205
    const v0, 0x7f07006d

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_amount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_currency:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_buyStringPrettyWhatYouGet:Ljava/lang/String;

    .line 206
    const v0, 0x7f07006e

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_appName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_buyStringPrettyWhatYouDownload:Ljava/lang/String;

    .line 207
    const v0, 0x7f07006f

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_buyStringPrettyInstallFor:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_cost:Ljava/lang/String;

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_cost:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_buyStringPrettyCost:Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_buyStringPrettyCost:Ljava/lang/String;

    const-string v1, "$0.00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_buyStringPrettyCost:Ljava/lang/String;

    const-string v1, "$Free"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_buyStringPrettyCost:Ljava/lang/String;

    const-string v1, "$FREE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    :cond_2
    const v0, 0x7f070070

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_buyStringPrettyCost:Ljava/lang/String;

    .line 212
    :cond_3
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_buyStringPrettyWhatYouGet:Ljava/lang/String;

    iget-object v1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_whatYouGetPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/glu/android/SoftwareImageFactory;->TJ_ITEM_VALUE_AREA:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sget-object v3, Lcom/glu/android/SoftwareImageFactory;->TJ_ITEM_VALUE_AREA:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/glu/android/GluUtil;->scalePaintToFitText(Ljava/lang/String;Landroid/graphics/Paint;I)V

    .line 213
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_buyStringPrettyWhatYouDownload:Ljava/lang/String;

    iget-object v1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_whatYouDownloadPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/glu/android/SoftwareImageFactory;->TJ_ITEM_VALUE_AREA:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sget-object v3, Lcom/glu/android/SoftwareImageFactory;->TJ_ITEM_VALUE_AREA:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/glu/android/GluUtil;->scalePaintToFitText(Ljava/lang/String;Landroid/graphics/Paint;I)V

    .line 214
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_buyStringPrettyInstallFor:Ljava/lang/String;

    iget-object v1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_installForPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/glu/android/SoftwareImageFactory;->TJ_PRICE_AREA:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sget-object v3, Lcom/glu/android/SoftwareImageFactory;->TJ_PRICE_AREA:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/glu/android/GluUtil;->scalePaintToFitText(Ljava/lang/String;Landroid/graphics/Paint;I)V

    .line 215
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_buyStringPrettyCost:Ljava/lang/String;

    iget-object v1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_pricePaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/glu/android/SoftwareImageFactory;->TJ_PRICE_AREA:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sget-object v3, Lcom/glu/android/SoftwareImageFactory;->TJ_PRICE_AREA:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/glu/android/GluUtil;->scalePaintToFitText(Ljava/lang/String;Landroid/graphics/Paint;I)V

    .line 219
    :cond_4
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v6

    .line 220
    .local v6, "additionalMargin":I
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_icon:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/glu/android/SoftwareImageFactory;->TJ_BORDER_SIZE:I

    add-int/2addr v1, v6

    sget v2, Lcom/glu/android/SoftwareImageFactory;->TJ_BORDER_SIZE:I

    add-int/2addr v2, v6

    sub-int v3, v7, v6

    sget v4, Lcom/glu/android/SoftwareImageFactory;->TJ_BORDER_SIZE:I

    sub-int/2addr v3, v4

    sub-int v4, v7, v6

    sget v5, Lcom/glu/android/SoftwareImageFactory;->TJ_BORDER_SIZE:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 221
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 224
    iget-object v2, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_buyStringPrettyWhatYouGet:Ljava/lang/String;

    sget-object v0, Lcom/glu/android/SoftwareImageFactory;->TJ_ITEM_VALUE_AREA:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sget-object v1, Lcom/glu/android/SoftwareImageFactory;->TJ_ITEM_VALUE_AREA:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    shr-int/lit8 v3, v0, 0x1

    shr-int/lit8 v0, v7, 0x1

    iget v1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_textMargin:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_whatYouGetPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    float-to-int v1, v1

    sub-int v4, v0, v1

    iget-object v5, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_whatYouGetPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->drawTextNice(Landroid/graphics/Canvas;Ljava/lang/String;IILandroid/graphics/Paint;)V

    .line 225
    iget-object v2, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_buyStringPrettyWhatYouDownload:Ljava/lang/String;

    sget-object v0, Lcom/glu/android/SoftwareImageFactory;->TJ_ITEM_VALUE_AREA:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sget-object v1, Lcom/glu/android/SoftwareImageFactory;->TJ_ITEM_VALUE_AREA:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    shr-int/lit8 v3, v0, 0x1

    shr-int/lit8 v0, v7, 0x1

    iget v1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_textMargin:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_whatYouDownloadPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    iget-object v4, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_whatYouDownloadPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    sub-float/2addr v1, v4

    float-to-int v1, v1

    add-int v4, v0, v1

    iget-object v5, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_whatYouDownloadPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->drawTextNice(Landroid/graphics/Canvas;Ljava/lang/String;IILandroid/graphics/Paint;)V

    .line 226
    iget-object v2, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_buyStringPrettyInstallFor:Ljava/lang/String;

    sget-object v0, Lcom/glu/android/SoftwareImageFactory;->TJ_PRICE_AREA:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sget-object v1, Lcom/glu/android/SoftwareImageFactory;->TJ_PRICE_AREA:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    shr-int/lit8 v3, v0, 0x1

    shr-int/lit8 v0, v7, 0x1

    iget v1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_textMargin:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_installForPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    float-to-int v1, v1

    sub-int v4, v0, v1

    iget-object v5, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_installForPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->drawTextNice(Landroid/graphics/Canvas;Ljava/lang/String;IILandroid/graphics/Paint;)V

    .line 227
    iget-object v2, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_buyStringPrettyCost:Ljava/lang/String;

    sget-object v0, Lcom/glu/android/SoftwareImageFactory;->TJ_PRICE_AREA:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sget-object v1, Lcom/glu/android/SoftwareImageFactory;->TJ_PRICE_AREA:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    shr-int/lit8 v3, v0, 0x1

    shr-int/lit8 v0, v7, 0x1

    iget v1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_textMargin:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_pricePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    iget-object v4, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_pricePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    sub-float/2addr v1, v4

    float-to-int v1, v1

    add-int v4, v0, v1

    iget-object v5, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_pricePaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->drawTextNice(Landroid/graphics/Canvas;Ljava/lang/String;IILandroid/graphics/Paint;)V

    .line 235
    .end local v6    # "additionalMargin":I
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 185
    .end local v7    # "height":I
    .end local v8    # "width":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 208
    .restart local v7    # "height":I
    .restart local v8    # "width":I
    :cond_6
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_cost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 229
    :cond_7
    invoke-virtual {p0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->isBannerAdValid()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 231
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_standardAdDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v8, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 232
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_standardAdDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 139
    invoke-virtual {p0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->isValid()Z

    move-result v4

    if-nez v4, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v2

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v0, v4

    .line 145
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 147
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_1
    move v2, v3

    .line 174
    goto :goto_0

    .line 149
    :pswitch_0
    if-lez v0, :cond_2

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 150
    iput-boolean v3, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_adPressed:Z

    goto :goto_1

    .line 153
    :pswitch_1
    iget-boolean v4, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_adPressed:Z

    if-eqz v4, :cond_2

    .line 155
    iput-boolean v2, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_adPressed:Z

    .line 156
    if-lez v0, :cond_2

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->getWidth()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-virtual {p0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->getHeight()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 158
    invoke-virtual {p0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->isFeaturedAdValidForBanners()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 159
    sget-object v4, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v5, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_targetURL:Ljava/lang/String;

    invoke-virtual {v4, v5, v2, v3}, Lcom/glu/android/GameLet;->platformRequest(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 160
    :cond_3
    invoke-virtual {p0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->isBannerAdValid()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 165
    sget-object v4, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    invoke-static {v4, v3}, Lcom/glu/android/FeaturedAppAd;->access$002(Lcom/glu/android/FeaturedAppAd;I)I

    .line 167
    sget-object v4, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v5, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_standardAdURL:Ljava/lang/String;

    invoke-virtual {v4, v5, v2, v3}, Lcom/glu/android/GameLet;->platformRequest(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "whocares"    # Z

    .prologue
    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_adPressed:Z

    .line 180
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 181
    return-void
.end method

.method public declared-synchronized resetDrawInformation()V
    .locals 2

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_whatYouGetPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_defaultTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 108
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_whatYouDownloadPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_defaultTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 109
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_installForPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_smallerDefaultTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 110
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_pricePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_defaultTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_buyStringPrettyWhatYouGet:Ljava/lang/String;

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_buyStringPrettyWhatYouDownload:Ljava/lang/String;

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_buyStringPrettyInstallFor:Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_buyStringPrettyCost:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAdIterations(I)V
    .locals 0
    .param p1, "iterations"    # I

    .prologue
    .line 263
    iput p1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_adIterations:I

    return-void
.end method

.method public setAmount(I)V
    .locals 0
    .param p1, "amount"    # I

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->resetDrawInformation()V

    iput p1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_amount:I

    return-void
.end method

.method public setAppDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_appDescription:Ljava/lang/String;

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_appName:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized setBannerAd(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2
    .param p1, "img"    # Landroid/graphics/Bitmap;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting normal TJ banner ad. URL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 99
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_standardAdDrawable:Landroid/graphics/drawable/Drawable;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_standardAdReady:Z

    .line 101
    iput-object p2, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_standardAdURL:Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_standardAdPendingDestruction:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCost(Ljava/lang/String;)V
    .locals 0
    .param p1, "cost"    # Ljava/lang/String;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_cost:Ljava/lang/String;

    return-void
.end method

.method public setCurrencyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_currency:Ljava/lang/String;

    return-void
.end method

.method public setFullScreenAdURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "fsURL"    # Ljava/lang/String;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_fullscreenURL:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_getIconThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 269
    const-string v0, "Attempted to get featured app icon while thread is active."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 302
    :goto_0
    return-void

    .line 273
    :cond_0
    iput-object p1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_iconURL:Ljava/lang/String;

    .line 275
    new-instance v0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView$1;

    invoke-direct {v0, p0, p1}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView$1;-><init>(Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_getIconThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setStoreId(Ljava/lang/String;)V
    .locals 0
    .param p1, "storeId"    # Ljava/lang/String;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_storeId:Ljava/lang/String;

    return-void
.end method

.method public setTargetURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetURL"    # Ljava/lang/String;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->m_targetURL:Ljava/lang/String;

    return-void
.end method
