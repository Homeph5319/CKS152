.class Lcom/glu/android/GluFBConnect$2;
.super Lcom/facebook/android/AsyncRequestListener;
.source "GluFBConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/glu/android/GluFBConnect;->getUserInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/glu/android/GluFBConnect;


# direct methods
.method constructor <init>(Lcom/glu/android/GluFBConnect;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/glu/android/GluFBConnect$2;->this$0:Lcom/glu/android/GluFBConnect;

    invoke-direct {p0}, Lcom/facebook/android/AsyncRequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "obj"    # Lorg/json/JSONObject;

    .prologue
    .line 431
    sget-object v2, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    if-nez v2, :cond_0

    .line 454
    :goto_0
    return-void

    .line 434
    :cond_0
    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, "uid":Ljava/lang/String;
    const-string v2, "name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "name":Ljava/lang/String;
    sget-object v2, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    new-instance v3, Lcom/glu/android/GluFBConnect$2$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/glu/android/GluFBConnect$2$1;-><init>(Lcom/glu/android/GluFBConnect$2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/glu/android/GluView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public wrapUp(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 421
    if-nez p1, :cond_0

    .line 423
    const/4 v0, 0x4

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/glu/android/GluJNI;->javaToNativeFacebookSafe(II)V

    .line 424
    const/4 v0, 0x5

    sput v0, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/glu/android/GluFBConnect$2;->this$0:Lcom/glu/android/GluFBConnect;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glu/android/GluFBConnect;->access$102(Lcom/glu/android/GluFBConnect;Lcom/facebook/android/AsyncFacebookRunner;)Lcom/facebook/android/AsyncFacebookRunner;

    .line 428
    return-void
.end method
