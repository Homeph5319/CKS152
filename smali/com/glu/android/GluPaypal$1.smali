.class Lcom/glu/android/GluPaypal$1;
.super Ljava/lang/Thread;
.source "GluPaypal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/glu/android/GluPaypal;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/glu/android/GluPaypal;


# direct methods
.method constructor <init>(Lcom/glu/android/GluPaypal;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/glu/android/GluPaypal$1;->this$0:Lcom/glu/android/GluPaypal;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/glu/android/GluPaypal$1;->this$0:Lcom/glu/android/GluPaypal;

    invoke-static {v0}, Lcom/glu/android/GluPaypal;->access$000(Lcom/glu/android/GluPaypal;)V

    return-void
.end method
