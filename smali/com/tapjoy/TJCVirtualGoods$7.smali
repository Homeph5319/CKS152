.class Lcom/tapjoy/TJCVirtualGoods$7;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCVirtualGoods;->showItemDownloadedDialog(Ljava/lang/String;Lcom/tapjoy/VGStoreItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJCVirtualGoods;

.field final synthetic val$storeItem:Lcom/tapjoy/VGStoreItem;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/VGStoreItem;)V
    .locals 0

    .prologue
    .line 1911
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$7;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iput-object p2, p0, Lcom/tapjoy/TJCVirtualGoods$7;->val$storeItem:Lcom/tapjoy/VGStoreItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1914
    const-string v0, "Virtual Goods"

    const-string v1, "onCANCEL"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$7;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$7;->val$storeItem:Lcom/tapjoy/VGStoreItem;

    invoke-static {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->access$1100(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/VGStoreItem;)V

    .line 1916
    return-void
.end method
