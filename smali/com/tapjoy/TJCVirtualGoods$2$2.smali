.class Lcom/tapjoy/TJCVirtualGoods$2$2;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCVirtualGoods$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tapjoy/TJCVirtualGoods$2;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCVirtualGoods$2;)V
    .locals 0

    .prologue
    .line 1551
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$2$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$2$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$2;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$2;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$700(Lcom/tapjoy/TJCVirtualGoods;)V

    .line 1555
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$2$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$2;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$2;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$600(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->setGetItemDialogVisible(Z)V

    .line 1557
    return-void
.end method
