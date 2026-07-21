.class Lcom/tapjoy/TJCVirtualGoods$6;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCVirtualGoods;->showGetItemDetailDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJCVirtualGoods;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCVirtualGoods;)V
    .locals 0

    .prologue
    .line 1712
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$6;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 1715
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$6;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$1000(Lcom/tapjoy/TJCVirtualGoods;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1716
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$6;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$600(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->setGetMoreItemDialogVisible(Z)V

    .line 1717
    return-void
.end method
