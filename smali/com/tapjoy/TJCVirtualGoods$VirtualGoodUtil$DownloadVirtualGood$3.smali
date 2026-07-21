.class Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$3;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->onPostExecute(Lcom/tapjoy/VGStoreItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;)V
    .locals 0

    .prologue
    .line 3962
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$3;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 3965
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 3966
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$3;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    invoke-virtual {v0}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 3967
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$3;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->cancel(Z)Z

    .line 3968
    :cond_0
    return-void
.end method
