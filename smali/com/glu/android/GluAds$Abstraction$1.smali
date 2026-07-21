.class Lcom/glu/android/GluAds$Abstraction$1;
.super Landroid/os/Handler;
.source "GluAds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GluAds$Abstraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/glu/android/GluAds$Abstraction;


# direct methods
.method constructor <init>(Lcom/glu/android/GluAds$Abstraction;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/glu/android/GluAds$Abstraction$1;->this$0:Lcom/glu/android/GluAds$Abstraction;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/glu/android/GluAds$Abstraction$1;->this$0:Lcom/glu/android/GluAds$Abstraction;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/glu/android/GluAds$Abstraction;->setAdState(I)V

    .line 129
    return-void
.end method
