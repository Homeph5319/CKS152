.class Lcom/glu/android/GluFBConnect$1$1;
.super Ljava/lang/Object;
.source "GluFBConnect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/glu/android/GluFBConnect$1;->onComplete(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/glu/android/GluFBConnect$1;

.field final synthetic val$length_:I

.field final synthetic val$nativeFriendInfo_:[[C


# direct methods
.method constructor <init>(Lcom/glu/android/GluFBConnect$1;I[[C)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/glu/android/GluFBConnect$1$1;->this$1:Lcom/glu/android/GluFBConnect$1;

    iput p2, p0, Lcom/glu/android/GluFBConnect$1$1;->val$length_:I

    iput-object p3, p0, Lcom/glu/android/GluFBConnect$1$1;->val$nativeFriendInfo_:[[C

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 381
    const/16 v0, 0x9

    iget v1, p0, Lcom/glu/android/GluFBConnect$1$1;->val$length_:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/glu/android/GluFBConnect$1$1;->val$nativeFriendInfo_:[[C

    invoke-static {v0, v1, v2, v3}, Lcom/glu/android/GluJNI;->javaToNativeFacebook(II[B[[C)V

    .line 382
    return-void
.end method
