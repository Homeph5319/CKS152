.class public Lcom/playhaven/resources/PHImageResource;
.super Lcom/playhaven/resources/PHResource;
.source "PHImageResource.java"


# instance fields
.field private cached_images:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private data_map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected densityType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/playhaven/resources/PHResource;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/playhaven/resources/PHImageResource;->cached_images:Ljava/util/HashMap;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/playhaven/resources/PHImageResource;->data_map:Ljava/util/HashMap;

    .line 25
    const/16 v0, 0xa0

    iput v0, p0, Lcom/playhaven/resources/PHImageResource;->densityType:I

    return-void
.end method

.method private getClosestImage(I)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 59
    iget-object v0, p0, Lcom/playhaven/resources/PHImageResource;->data_map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    .line 61
    :cond_0
    const v1, 0x7fffffff

    .line 62
    const/16 v0, 0xa0

    .line 64
    iget-object v2, p0, Lcom/playhaven/resources/PHImageResource;->data_map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 67
    if-ge v3, v2, :cond_2

    .line 68
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v3

    :goto_2
    move v2, v1

    move v1, v0

    .line 71
    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {p0, v1}, Lcom/playhaven/resources/PHImageResource;->getData(I)[B

    move-result-object v0

    .line 75
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    move v1, v2

    goto :goto_2
.end method

.method private loadImage()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/playhaven/resources/PHImageResource;->cached_images:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/playhaven/resources/PHImageResource;->densityType:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 85
    if-nez v0, :cond_1

    .line 86
    iget v0, p0, Lcom/playhaven/resources/PHImageResource;->densityType:I

    invoke-direct {p0, v0}, Lcom/playhaven/resources/PHImageResource;->getClosestImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 89
    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "You have not specified image data for the requested density"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/playhaven/resources/PHImageResource;->cached_images:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/playhaven/resources/PHImageResource;->densityType:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getData()[B
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You must use getData(density) when loading images"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getData(I)[B
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/playhaven/resources/PHImageResource;->data_map:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 30
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    goto :goto_0
.end method

.method public loadBitmapDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p2}, Lcom/playhaven/resources/PHImageResource;->loadImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public loadImage(I)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 100
    iput p1, p0, Lcom/playhaven/resources/PHImageResource;->densityType:I

    .line 101
    invoke-direct {p0}, Lcom/playhaven/resources/PHImageResource;->loadImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public setDataStr(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/playhaven/resources/PHImageResource;->data_map:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public setDataStr(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You must use setDataStr(density, data) when setting image data"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDataStr([ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 42
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p1, v0

    .line 43
    invoke-virtual {p0, v2, p2}, Lcom/playhaven/resources/PHImageResource;->setDataStr(ILjava/lang/String;)V

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method
