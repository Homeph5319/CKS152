.class public Lcom/playhaven/resources/PHResourceManager;
.super Ljava/lang/Object;
.source "PHResourceManager.java"


# static fields
.field private static res_manager:Lcom/playhaven/resources/PHResourceManager;


# instance fields
.field private hasLoaded:Z

.field private resources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/playhaven/resources/PHResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/playhaven/resources/PHResourceManager;->res_manager:Lcom/playhaven/resources/PHResourceManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/playhaven/resources/PHResourceManager;->resources:Ljava/util/HashMap;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/playhaven/resources/PHResourceManager;->hasLoaded:Z

    .line 37
    return-void
.end method

.method private loadResources()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/playhaven/resources/PHResourceManager;->resources:Ljava/util/HashMap;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/playhaven/resources/PHResourceManager;->hasLoaded:Z

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/playhaven/resources/PHResourceManager;->registerResources()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/playhaven/resources/PHResourceManager;->hasLoaded:Z

    .line 66
    :cond_0
    return-void
.end method

.method private registerResources()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/playhaven/resources/PHResourceManager;->resources:Ljava/util/HashMap;

    .line 30
    iget-object v0, p0, Lcom/playhaven/resources/PHResourceManager;->resources:Ljava/util/HashMap;

    const-string v1, "close_inactive"

    new-instance v2, Lcom/playhaven/resources/files/PHCloseImageResource;

    invoke-direct {v2}, Lcom/playhaven/resources/files/PHCloseImageResource;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/playhaven/resources/PHResourceManager;->resources:Ljava/util/HashMap;

    const-string v1, "close_active"

    new-instance v2, Lcom/playhaven/resources/files/PHCloseActiveImageResource;

    invoke-direct {v2}, Lcom/playhaven/resources/files/PHCloseActiveImageResource;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/playhaven/resources/PHResourceManager;->resources:Ljava/util/HashMap;

    const-string v1, "badge_image"

    new-instance v2, Lcom/playhaven/resources/files/PHBadgeImageResource;

    invoke-direct {v2}, Lcom/playhaven/resources/files/PHBadgeImageResource;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public static sharedResourceManager()Lcom/playhaven/resources/PHResourceManager;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/playhaven/resources/PHResourceManager;->res_manager:Lcom/playhaven/resources/PHResourceManager;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/playhaven/resources/PHResourceManager;

    invoke-direct {v0}, Lcom/playhaven/resources/PHResourceManager;-><init>()V

    sput-object v0, Lcom/playhaven/resources/PHResourceManager;->res_manager:Lcom/playhaven/resources/PHResourceManager;

    .line 42
    sget-object v0, Lcom/playhaven/resources/PHResourceManager;->res_manager:Lcom/playhaven/resources/PHResourceManager;

    invoke-direct {v0}, Lcom/playhaven/resources/PHResourceManager;->loadResources()V

    .line 44
    :cond_0
    sget-object v0, Lcom/playhaven/resources/PHResourceManager;->res_manager:Lcom/playhaven/resources/PHResourceManager;

    return-object v0
.end method


# virtual methods
.method public getResource(Ljava/lang/String;)Lcom/playhaven/resources/PHResource;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/playhaven/resources/PHResourceManager;->res_manager:Lcom/playhaven/resources/PHResourceManager;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/playhaven/resources/PHResourceManager;->resources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/playhaven/resources/PHResource;

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerResource(Ljava/lang/String;Lcom/playhaven/resources/PHResource;)V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/playhaven/resources/PHResourceManager;->res_manager:Lcom/playhaven/resources/PHResourceManager;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/playhaven/resources/PHResourceManager;->resources:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    return-void
.end method
