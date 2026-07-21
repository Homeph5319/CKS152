.class final Lcom/glu/android/GluUtil$1;
.super Ljava/lang/Thread;
.source "GluUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/glu/android/GluUtil;->openAlertFromDialogCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2996
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2999
    const-wide/16 v0, 0x4b0

    invoke-static {v0, v1}, Lcom/glu/android/GluUtil;->sleep(J)V

    .line 3001
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->handlerOpenModalDialog()V

    .line 3002
    return-void
.end method
