.class Lcom/glu/android/GluFBConnect$2$1;
.super Ljava/lang/Object;
.source "GluFBConnect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/glu/android/GluFBConnect$2;->onComplete(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/glu/android/GluFBConnect$2;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/glu/android/GluFBConnect$2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/glu/android/GluFBConnect$2$1;->this$1:Lcom/glu/android/GluFBConnect$2;

    iput-object p2, p0, Lcom/glu/android/GluFBConnect$2$1;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/glu/android/GluFBConnect$2$1;->val$uid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 440
    const/4 v2, 0x1

    :try_start_0
    new-array v1, v2, [[C

    .line 441
    .local v1, "nativeName":[[C
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/glu/android/GluFBConnect$2$1;->val$name:Ljava/lang/String;

    invoke-static {v3}, Lcom/glu/android/GluUtil;->stringToNativeCharArray(Ljava/lang/String;)[C

    move-result-object v3

    aput-object v3, v1, v2

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/glu/android/GluFBConnect$2$1;->val$uid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/glu/android/GluFBConnect$2$1;->val$name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 443
    const/4 v2, 0x6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/glu/android/GluFBConnect$2$1;->val$uid:Ljava/lang/String;

    invoke-static {v4}, Lcom/glu/android/GluUtil;->stringToNativeByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/glu/android/GluJNI;->javaToNativeFacebook(II[B)V

    .line 444
    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Lcom/glu/android/GluJNI;->javaToNativeFacebook(II[B[[C)V

    .line 446
    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/glu/android/GluJNI;->javaToNativeFacebook(II[B)V

    .line 447
    iget-object v2, p0, Lcom/glu/android/GluFBConnect$2$1;->this$1:Lcom/glu/android/GluFBConnect$2;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/glu/android/GluFBConnect$2;->wrapUp(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    .end local v1    # "nativeName":[[C
    :goto_0
    return-void

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "Exception while getting info"

    invoke-static {v2, v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 450
    iget-object v2, p0, Lcom/glu/android/GluFBConnect$2$1;->this$1:Lcom/glu/android/GluFBConnect$2;

    invoke-virtual {v2, v5}, Lcom/glu/android/GluFBConnect$2;->wrapUp(Z)V

    goto :goto_0
.end method
