.class public final Lcom/tapjoy/VGStoreItem;
.super Ljava/lang/Object;
.source "VGStoreItem.java"


# static fields
.field public static final MAX_ITEMS:I = 0x19

.field public static final PURCHASED_ITEM:I = 0x1

.field public static final STORE_ITEM:I

.field public static availableItemsMoreDataAvailable:I

.field public static purchasedItemsMoreDataAvailable:I


# instance fields
.field private datafileUrl:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private fullImageUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private numberOwned:I

.field private price:I

.field private productID:Ljava/lang/String;

.field private shown:Z

.field private thumbImage:Landroid/graphics/drawable/Drawable;

.field private thumbImageUrl:Ljava/lang/String;

.field private vgStoreItemID:Ljava/lang/String;

.field private vgStoreItemTypeName:Ljava/lang/String;

.field vgStoreItemsAttributeValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tapjoy/VGStoreItemAttributeValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    sput v0, Lcom/tapjoy/VGStoreItem;->availableItemsMoreDataAvailable:I

    .line 16
    sput v0, Lcom/tapjoy/VGStoreItem;->purchasedItemsMoreDataAvailable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/VGStoreItem;->vgStoreItemID:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/VGStoreItem;->productID:Ljava/lang/String;

    .line 20
    iput v1, p0, Lcom/tapjoy/VGStoreItem;->price:I

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/VGStoreItem;->name:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/VGStoreItem;->description:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/VGStoreItem;->vgStoreItemTypeName:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcom/tapjoy/VGStoreItem;->numberOwned:I

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/VGStoreItem;->thumbImageUrl:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/VGStoreItem;->fullImageUrl:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/VGStoreItem;->datafileUrl:Ljava/lang/String;

    .line 29
    iput-object v2, p0, Lcom/tapjoy/VGStoreItem;->thumbImage:Landroid/graphics/drawable/Drawable;

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/VGStoreItem;->shown:Z

    .line 32
    iput-object v2, p0, Lcom/tapjoy/VGStoreItem;->vgStoreItemsAttributeValueList:Ljava/util/ArrayList;

    .line 38
    return-void
.end method


# virtual methods
.method public getDatafileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/tapjoy/VGStoreItem;->datafileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tapjoy/VGStoreItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFullImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/tapjoy/VGStoreItem;->fullImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/tapjoy/VGStoreItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOwned()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/tapjoy/VGStoreItem;->numberOwned:I

    return v0
.end method

.method public getPrice()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/tapjoy/VGStoreItem;->price:I

    return v0
.end method

.method public getProductID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tapjoy/VGStoreItem;->productID:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/tapjoy/VGStoreItem;->thumbImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/tapjoy/VGStoreItem;->thumbImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVgStoreItemID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tapjoy/VGStoreItem;->vgStoreItemID:Ljava/lang/String;

    return-object v0
.end method

.method public getVgStoreItemTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tapjoy/VGStoreItem;->vgStoreItemTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getVgStoreItemsAttributeValueList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tapjoy/VGStoreItemAttributeValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tapjoy/VGStoreItem;->vgStoreItemsAttributeValueList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/tapjoy/VGStoreItem;->shown:Z

    return v0
.end method

.method public setDatafileUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/tapjoy/VGStoreItem;->datafileUrl:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tapjoy/VGStoreItem;->description:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setFullImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/tapjoy/VGStoreItem;->fullImageUrl:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemname"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/tapjoy/VGStoreItem;->name:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setNumberOwned(I)V
    .locals 0
    .param p1, "owned"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/tapjoy/VGStoreItem;->numberOwned:I

    .line 118
    return-void
.end method

.method public setPrice(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/tapjoy/VGStoreItem;->price:I

    .line 68
    return-void
.end method

.method public setProductID(Ljava/lang/String;)V
    .locals 0
    .param p1, "pid"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/tapjoy/VGStoreItem;->productID:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setShown(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/tapjoy/VGStoreItem;->shown:Z

    .line 163
    return-void
.end method

.method public setThumbImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/tapjoy/VGStoreItem;->thumbImage:Landroid/graphics/drawable/Drawable;

    .line 158
    return-void
.end method

.method public setThumbImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/tapjoy/VGStoreItem;->thumbImageUrl:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setVgStoreItemID(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/tapjoy/VGStoreItem;->vgStoreItemID:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setVgStoreItemTypeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/tapjoy/VGStoreItem;->vgStoreItemTypeName:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setVgStoreItemsAttributeValueList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tapjoy/VGStoreItemAttributeValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tapjoy/VGStoreItemAttributeValue;>;"
    iput-object p1, p0, Lcom/tapjoy/VGStoreItem;->vgStoreItemsAttributeValueList:Ljava/util/ArrayList;

    .line 108
    return-void
.end method
