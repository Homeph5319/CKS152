.class public Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;
.super Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;
.source "PHNotificationBadgeRenderer.java"


# instance fields
.field private final TEXT_SIZE:F

.field private final TEXT_SIZE_REDUCE:F

.field private badgeImage:Landroid/graphics/drawable/NinePatchDrawable;

.field private whitePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;-><init>()V

    .line 22
    const/high16 v0, 0x41880000    # 17.0f

    iput v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->TEXT_SIZE:F

    .line 24
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->TEXT_SIZE_REDUCE:F

    .line 29
    invoke-static {}, Lcom/playhaven/resources/PHResourceManager;->sharedResourceManager()Lcom/playhaven/resources/PHResourceManager;

    move-result-object v0

    const-string v1, "badge_image"

    invoke-virtual {v0, v1}, Lcom/playhaven/resources/PHResourceManager;->getResource(Ljava/lang/String;)Lcom/playhaven/resources/PHResource;

    move-result-object v0

    check-cast v0, Lcom/playhaven/resources/PHNinePatchResource;

    .line 31
    invoke-static {}, Lcom/playhaven/src/common/PHConstants;->getScreenDensityType()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/playhaven/resources/PHNinePatchResource;->loadNinePatchDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->badgeImage:Landroid/graphics/drawable/NinePatchDrawable;

    .line 32
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->badgeImage:Landroid/graphics/drawable/NinePatchDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setFilterBitmap(Z)V

    .line 33
    return-void
.end method

.method private getTextPaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->whitePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->whitePaint:Landroid/graphics/Paint;

    .line 54
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->whitePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->whitePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->whitePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {v1}, Lcom/playhaven/src/common/PHConstants;->dipToPixels(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 58
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->whitePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->whitePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private requestedValue(Lorg/json/JSONObject;)I
    .locals 1

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 66
    const-string v0, "value"

    invoke-static {p1, v0}, Lcom/playhaven/src/additions/ObjectExtensions$JSONExtensions;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 39
    invoke-direct {p0, p2}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->requestedValue(Lorg/json/JSONObject;)I

    move-result v0

    .line 40
    if-nez v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {p0, p2}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->size(Lorg/json/JSONObject;)Landroid/graphics/Rect;

    move-result-object v1

    .line 43
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->badgeImage:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 45
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->badgeImage:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/playhaven/src/common/PHConstants;->dipToPixels(F)F

    move-result v1

    const/high16 v2, 0x41880000    # 17.0f

    invoke-static {v2}, Lcom/playhaven/src/common/PHConstants;->dipToPixels(F)F

    move-result v2

    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public size(Lorg/json/JSONObject;)Landroid/graphics/Rect;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 76
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->badgeImage:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumWidth()I

    move-result v0

    int-to-float v0, v0

    .line 77
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->badgeImage:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumHeight()I

    move-result v1

    int-to-float v1, v1

    .line 79
    invoke-direct {p0, p1}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->requestedValue(Lorg/json/JSONObject;)I

    move-result v2

    .line 80
    if-nez v2, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 86
    :goto_0
    return-object v0

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->requestedValue(Lorg/json/JSONObject;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 83
    add-float/2addr v0, v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lcom/playhaven/src/common/PHConstants;->dipToPixels(F)F

    move-result v3

    sub-float v3, v0, v3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notification Width: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " valueWidth: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    float-to-int v2, v3

    float-to-int v1, v1

    invoke-direct {v0, v5, v5, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method
