.class Lcom/tapjoy/TJCVirtualGoods$DetailView;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCVirtualGoods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DetailView"
.end annotation


# instance fields
.field public index:I

.field public itemType:I

.field final synthetic this$0:Lcom/tapjoy/TJCVirtualGoods;

.field public vgItem:Lcom/tapjoy/VGStoreItem;

.field public view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCVirtualGoods;)V
    .locals 0

    .prologue
    .line 2451
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$DetailView;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemType()I
    .locals 1

    .prologue
    .line 2468
    iget v0, p0, Lcom/tapjoy/TJCVirtualGoods$DetailView;->itemType:I

    return v0
.end method

.method public setDetailView(Lcom/tapjoy/VGStoreItem;ILandroid/view/View;I)V
    .locals 0
    .param p1, "item"    # Lcom/tapjoy/VGStoreItem;
    .param p2, "iType"    # I
    .param p3, "v"    # Landroid/view/View;
    .param p4, "i"    # I

    .prologue
    .line 2460
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$DetailView;->vgItem:Lcom/tapjoy/VGStoreItem;

    .line 2461
    iput p2, p0, Lcom/tapjoy/TJCVirtualGoods$DetailView;->itemType:I

    .line 2462
    iput-object p3, p0, Lcom/tapjoy/TJCVirtualGoods$DetailView;->view:Landroid/view/View;

    .line 2463
    iput p4, p0, Lcom/tapjoy/TJCVirtualGoods$DetailView;->index:I

    .line 2464
    return-void
.end method

.method public setItemType(I)V
    .locals 0
    .param p1, "itemType"    # I

    .prologue
    .line 2473
    iput p1, p0, Lcom/tapjoy/TJCVirtualGoods$DetailView;->itemType:I

    .line 2474
    return-void
.end method
