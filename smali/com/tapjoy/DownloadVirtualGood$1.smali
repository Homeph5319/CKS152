.class Lcom/tapjoy/DownloadVirtualGood$1;
.super Ljava/lang/Object;
.source "DownloadVirtualGood.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/DownloadVirtualGood;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/DownloadVirtualGood;


# direct methods
.method constructor <init>(Lcom/tapjoy/DownloadVirtualGood;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/tapjoy/DownloadVirtualGood$1;->this$0:Lcom/tapjoy/DownloadVirtualGood;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tapjoy/DownloadVirtualGood$1;->this$0:Lcom/tapjoy/DownloadVirtualGood;

    const-class v2, Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .local v0, "virtualGoodsIntent":Landroid/content/Intent;
    const-string v1, "tab"

    const-string v2, "yourItem"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    iget-object v1, p0, Lcom/tapjoy/DownloadVirtualGood$1;->this$0:Lcom/tapjoy/DownloadVirtualGood;

    invoke-virtual {v1, v0}, Lcom/tapjoy/DownloadVirtualGood;->startActivity(Landroid/content/Intent;)V

    .line 46
    iget-object v1, p0, Lcom/tapjoy/DownloadVirtualGood$1;->this$0:Lcom/tapjoy/DownloadVirtualGood;

    invoke-virtual {v1}, Lcom/tapjoy/DownloadVirtualGood;->finish()V

    .line 47
    return-void
.end method
