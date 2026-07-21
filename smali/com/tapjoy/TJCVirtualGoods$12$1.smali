.class Lcom/tapjoy/TJCVirtualGoods$12$1;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCVirtualGoods$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tapjoy/TJCVirtualGoods$12;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCVirtualGoods$12;)V
    .locals 0

    .prologue
    .line 2041
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$12$1;->this$1:Lcom/tapjoy/TJCVirtualGoods$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 2044
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2045
    return-void
.end method
