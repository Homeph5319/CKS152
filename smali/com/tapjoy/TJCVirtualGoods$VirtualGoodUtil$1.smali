.class Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$1;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)V
    .locals 0

    .prologue
    .line 3413
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$1;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3417
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$1;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-virtual {v0}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->showDLErrorDialog()V

    .line 3418
    return-void
.end method
