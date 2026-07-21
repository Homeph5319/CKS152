.class public Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;
.super Landroid/view/View;
.source "PHNotificationView.java"

# interfaces
.implements Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;


# static fields
.field private static renderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private notificationData:Lorg/json/JSONObject;

.field private notificationRenderer:Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;

.field private placement:Ljava/lang/String;

.field private request:Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;

.field private secret:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->renderMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-static {}, Lcom/playhaven/src/common/PHConstants;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->token:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/playhaven/src/common/PHConstants;->getSecret()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->secret:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->placement:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p2, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->token:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->secret:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->placement:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static initRenderers()V
    .locals 3

    .prologue
    .line 121
    sget-object v0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->renderMap:Ljava/util/HashMap;

    const-string v1, "badge"

    const-class v2, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-void
.end method

.method public static setRenderer(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 113
    const-class v1, Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;

    if-eq v0, v1, :cond_0

    .line 114
    const-string v0, "Renderer needs to extend PHNotificationRenderer"

    invoke-static {v0}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 118
    :goto_0
    return-void

    .line 117
    :cond_0
    sget-object v0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->renderMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private updateNotificationData(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 77
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->notificationData:Lorg/json/JSONObject;

    .line 80
    invoke-virtual {p0, p1}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->createRenderer(Lorg/json/JSONObject;)Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;

    move-result-object v0

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->notificationRenderer:Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;

    .line 83
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->requestLayout()V

    .line 85
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->invalidate()V

    .line 86
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->request:Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;

    .line 67
    invoke-direct {p0, v0}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->updateNotificationData(Lorg/json/JSONObject;)V

    .line 68
    return-void
.end method

.method public createRenderer(Lorg/json/JSONObject;)Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;
    .locals 5

    .prologue
    .line 93
    sget-object v0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->renderMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->initRenderers()V

    .line 95
    :cond_0
    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/playhaven/src/additions/ObjectExtensions$JSONExtensions;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v0, "badge"

    .line 98
    :cond_2
    sget-object v1, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->renderMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 100
    const/4 v1, 0x0

    .line 102
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/res/Resources;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New renderer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 107
    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->notificationRenderer:Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->notificationRenderer:Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;

    iget-object v1, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->notificationData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v1}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;->draw(Landroid/graphics/Canvas;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 137
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->notificationRenderer:Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;

    if-eqz v1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->notificationRenderer:Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;

    iget-object v1, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->notificationData:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;->size(Lorg/json/JSONObject;)Landroid/graphics/Rect;

    move-result-object v0

    .line 141
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->setMeasuredDimension(II)V

    .line 142
    return-void
.end method

.method public refresh()V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->request:Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v0, Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;

    iget-object v1, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->token:Ljava/lang/String;

    iget-object v2, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->secret:Ljava/lang/String;

    iget-object v3, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->placement:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;-><init>(Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->request:Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;

    .line 62
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->request:Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;

    invoke-virtual {v0}, Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;->send()V

    goto :goto_0
.end method

.method public requestFailed(Lcom/playhaven/src/common/PHAPIRequest;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->request:Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;

    .line 156
    invoke-direct {p0, v0}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->updateNotificationData(Lorg/json/JSONObject;)V

    .line 157
    return-void
.end method

.method public requestSucceeded(Lcom/playhaven/src/common/PHAPIRequest;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->request:Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Metadata request succeeded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 150
    const-string v0, "notification"

    invoke-static {p2, v0}, Lcom/playhaven/src/additions/ObjectExtensions$JSONExtensions;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->updateNotificationData(Lorg/json/JSONObject;)V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->notificationData:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public test()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method
