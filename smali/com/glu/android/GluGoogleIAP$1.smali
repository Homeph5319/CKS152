.class Lcom/glu/android/GluGoogleIAP$1;
.super Ljava/lang/Thread;
.source "GluGoogleIAP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/glu/android/GluGoogleIAP;->buyProduct(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/glu/android/GluGoogleIAP;


# direct methods
.method constructor <init>(Lcom/glu/android/GluGoogleIAP;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/glu/android/GluGoogleIAP$1;->this$0:Lcom/glu/android/GluGoogleIAP;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 176
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Lcom/glu/android/GluUtil;->sleep(J)V

    .line 177
    iget-object v0, p0, Lcom/glu/android/GluGoogleIAP$1;->this$0:Lcom/glu/android/GluGoogleIAP;

    invoke-static {}, Lcom/glu/android/GluGoogleIAP;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glu/android/GluGoogleIAP;->access$100(Lcom/glu/android/GluGoogleIAP;Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/glu/android/GluGoogleIAP;->access$202(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 179
    return-void
.end method
