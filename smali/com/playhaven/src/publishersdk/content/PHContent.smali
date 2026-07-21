.class public Lcom/playhaven/src/publishersdk/content/PHContent;
.super Ljava/lang/Object;
.source "PHContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;
    }
.end annotation


# instance fields
.field public closeButtonDelay:D

.field public closeURL:Ljava/lang/String;

.field public context:Lorg/json/JSONObject;

.field private frameDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public transition:Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;

.field public url:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;->Modal:Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContent;->transition:Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContent;->frameDict:Ljava/util/HashMap;

    .line 37
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    iput-wide v0, p0, Lcom/playhaven/src/publishersdk/content/PHContent;->closeButtonDelay:D

    .line 38
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;->Modal:Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContent;->transition:Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;->Modal:Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContent;->transition:Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContent;->frameDict:Ljava/util/HashMap;

    .line 43
    invoke-virtual {p0, p1}, Lcom/playhaven/src/publishersdk/content/PHContent;->fromJSON(Lorg/json/JSONObject;)Z

    .line 45
    return-void
.end method

.method private setFrameDict(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContent;->frameDict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 97
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 99
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHContent;->frameDict:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 108
    :cond_0
    return-void
.end method


# virtual methods
.method public fromJSON(Lorg/json/JSONObject;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    const-string v0, "frame"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "transition"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 55
    :goto_0
    if-eqz v0, :cond_5

    .line 57
    :try_start_0
    const-string v0, "frame"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 59
    new-instance v3, Lorg/json/JSONObject;

    const-string v4, "{\"%s\" : \"%s\"}"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/playhaven/src/publishersdk/content/PHContent;->setFrameDict(Lorg/json/JSONObject;)V

    .line 64
    :cond_0
    :goto_1
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContent;->url:Landroid/net/Uri;

    .line 66
    const-string v0, "transition"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    const-string v3, "PH_MODEL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 68
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;->Modal:Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContent;->transition:Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;

    .line 72
    :cond_1
    :goto_2
    const-string v0, "context"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContent;->context:Lorg/json/JSONObject;

    .line 75
    const-string v0, "close_delay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 76
    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_2

    .line 77
    iput-wide v3, p0, Lcom/playhaven/src/publishersdk/content/PHContent;->closeButtonDelay:D

    .line 79
    :cond_2
    const-string v0, "close_ping"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContent;->closeURL:Ljava/lang/String;

    .line 87
    :goto_3
    return v1

    :cond_3
    move v0, v2

    .line 52
    goto :goto_0

    .line 61
    :cond_4
    instance-of v3, v0, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    .line 62
    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/playhaven/src/publishersdk/content/PHContent;->setFrameDict(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_5
    move v1, v2

    .line 87
    goto :goto_3

    .line 69
    :cond_6
    :try_start_1
    const-string v3, "PH_DIALOG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;->Dialog:Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContent;->transition:Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public getFrame(I)Landroid/graphics/RectF;
    .locals 6

    .prologue
    const/high16 v4, 0x4f000000

    const/4 v3, 0x0

    .line 111
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string v0, "PH_LANDSCAPE"

    .line 113
    :goto_0
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContent;->frameDict:Ljava/util/HashMap;

    const-string v2, "PH_FULLSCREEN"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 134
    :goto_1
    return-object v0

    .line 111
    :cond_0
    const-string v0, "PH_PORTRAIT"

    goto :goto_0

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContent;->frameDict:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContent;->frameDict:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 124
    if-eqz v0, :cond_2

    .line 125
    const-string v1, "x"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    .line 126
    const-string v2, "y"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    .line 127
    const-string v3, "w"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v3, v3

    .line 128
    const-string v4, "h"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    .line 129
    new-instance v0, Landroid/graphics/RectF;

    add-float/2addr v3, v1

    add-float/2addr v4, v2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_1

    .line 134
    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 139
    const-string v0, "(NULL)"

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContent;->context:Lorg/json/JSONObject;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 149
    :goto_0
    const-string v1, "Close URL: %s - Close Delay: %.1f - URL: %s\n\n---------------------------------\nJSON Context: %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/playhaven/src/publishersdk/content/PHContent;->closeURL:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/playhaven/src/publishersdk/content/PHContent;->closeButtonDelay:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/playhaven/src/publishersdk/content/PHContent;->url:Landroid/net/Uri;

    aput-object v3, v2, v6

    const/4 v3, 0x3

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 151
    return-object v0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 145
    const-string v0, "(NULL)"

    goto :goto_0
.end method
