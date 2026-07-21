.class Lcom/glu/android/GluFBConnect$4$1;
.super Ljava/lang/Object;
.source "GluFBConnect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/glu/android/GluFBConnect$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/glu/android/GluFBConnect$4;

.field final synthetic val$extension_:Ljava/lang/String;

.field final synthetic val$fileForNative:Ljava/io/File;

.field final synthetic val$specificFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/glu/android/GluFBConnect$4;Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 924
    iput-object p1, p0, Lcom/glu/android/GluFBConnect$4$1;->this$1:Lcom/glu/android/GluFBConnect$4;

    iput-object p2, p0, Lcom/glu/android/GluFBConnect$4$1;->val$extension_:Ljava/lang/String;

    iput-object p3, p0, Lcom/glu/android/GluFBConnect$4$1;->val$specificFile:Ljava/io/File;

    iput-object p4, p0, Lcom/glu/android/GluFBConnect$4$1;->val$fileForNative:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 926
    const-string v0, "facebook: Load Friends pic done"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 928
    iget-object v0, p0, Lcom/glu/android/GluFBConnect$4$1;->val$extension_:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/glu/android/GluFBConnect$4$1;->val$specificFile:Ljava/io/File;

    iget-object v1, p0, Lcom/glu/android/GluFBConnect$4$1;->val$fileForNative:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 931
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Renamed successfully for native. OLD="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/glu/android/GluFBConnect$4$1;->val$specificFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  NEW="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/glu/android/GluFBConnect$4$1;->val$fileForNative:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 932
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glu/android/GluJNI;->javaToNativeFacebookSafe(II)V

    .line 933
    return-void
.end method
