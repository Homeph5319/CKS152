.class Lcom/tapjoy/TJCVirtualGoods$13$2;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCVirtualGoods$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tapjoy/TJCVirtualGoods$13;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCVirtualGoods$13;)V
    .locals 0

    .prologue
    .line 2097
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$13$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 2100
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$1802(Z)Z

    .line 2101
    return-void
.end method
