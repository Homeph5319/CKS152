.class public Lcom/playhaven/resources/PHNinePatchResource;
.super Lcom/playhaven/resources/PHImageResource;
.source "PHNinePatchResource.java"


# instance fields
.field private nine_patch_cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/NinePatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/playhaven/resources/PHImageResource;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/playhaven/resources/PHNinePatchResource;->nine_patch_cache:Ljava/util/HashMap;

    return-void
.end method

.method private loadNinePatch()Landroid/graphics/NinePatch;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 31
    iget-object v0, p0, Lcom/playhaven/resources/PHNinePatchResource;->nine_patch_cache:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/playhaven/resources/PHNinePatchResource;->densityType:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/NinePatch;

    .line 33
    if-nez v0, :cond_0

    .line 35
    iget v0, p0, Lcom/playhaven/resources/PHNinePatchResource;->densityType:I

    invoke-super {p0, v0}, Lcom/playhaven/resources/PHImageResource;->loadImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 38
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    .line 41
    invoke-static {v3}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    .line 43
    invoke-static {v3}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 52
    :cond_0
    :goto_0
    return-object v0

    .line 46
    :cond_1
    new-instance v0, Landroid/graphics/NinePatch;

    invoke-direct {v0, v2, v3, v1}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded nine patch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/playhaven/resources/PHNinePatchResource;->nine_patch_cache:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/playhaven/resources/PHNinePatchResource;->densityType:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public loadNinePatch(I)Landroid/graphics/NinePatch;
    .locals 1

    .prologue
    .line 25
    iput p1, p0, Lcom/playhaven/resources/PHImageResource;->densityType:I

    .line 26
    invoke-direct {p0}, Lcom/playhaven/resources/PHNinePatchResource;->loadNinePatch()Landroid/graphics/NinePatch;

    move-result-object v0

    return-object v0
.end method

.method public loadNinePatchDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0, p2}, Lcom/playhaven/resources/PHNinePatchResource;->loadNinePatch(I)Landroid/graphics/NinePatch;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/NinePatch;)V

    return-object v0
.end method
