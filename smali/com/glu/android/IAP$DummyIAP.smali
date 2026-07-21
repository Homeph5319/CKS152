.class public Lcom/glu/android/IAP$DummyIAP;
.super Ljava/lang/Object;
.source "IAP.java"

# interfaces
.implements Lcom/glu/android/IAP$IAPObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/IAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DummyIAP"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final buyProduct(Ljava/lang/String;)V
    .locals 0
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 688
    return-void
.end method

.method public final forceAsynchronousPurchaseAward()Z
    .locals 1

    .prologue
    .line 705
    const/4 v0, 0x0

    return v0
.end method

.method public final getAttribute(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # I
    .param p2, "productId"    # Ljava/lang/String;

    .prologue
    .line 693
    const-string v0, "?"

    return-object v0
.end method

.method public final getCurrencySymbol()Ljava/lang/String;
    .locals 2

    .prologue
    .line 697
    const-string v0, "en"

    const-string v1, "US"

    invoke-static {v0, v1}, Lcom/glu/android/IAP;->getCurrencySymbol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIAPId()I
    .locals 1

    .prologue
    .line 704
    const/4 v0, 0x0

    return v0
.end method

.method public final getProductType(Ljava/lang/String;)I
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 698
    const/4 v0, 0x1

    return v0
.end method

.method public final getRealProductId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 689
    return-object p1
.end method

.method public final hasInventoryLoaded()Z
    .locals 1

    .prologue
    .line 709
    const/4 v0, 0x0

    return v0
.end method

.method public final init()V
    .locals 1

    .prologue
    .line 691
    const-string v0, "init (Dummy IAP)"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final isGoogleServiceConnected()Z
    .locals 1

    .prologue
    .line 710
    const/4 v0, 0x1

    return v0
.end method

.method public final isIAPConnected()Z
    .locals 1

    .prologue
    .line 702
    const/4 v0, 0x1

    return v0
.end method

.method public final isIAPSupported()Z
    .locals 1

    .prologue
    .line 687
    const/4 v0, 0x1

    return v0
.end method

.method public final isItemAvailable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 708
    const/4 v0, 0x0

    return v0
.end method

.method public final isProductValid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 699
    const/4 v0, 0x1

    return v0
.end method

.method public final onAppStart()V
    .locals 0

    .prologue
    .line 695
    return-void
.end method

.method public final onAppStop()V
    .locals 0

    .prologue
    .line 696
    return-void
.end method

.method public final onIAPDestroy()V
    .locals 0

    .prologue
    .line 694
    return-void
.end method

.method public final onInventoryFailure()V
    .locals 0

    .prologue
    .line 707
    return-void
.end method

.method public final onInventoryReceived(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/glu/android/IAP$Inventory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 706
    .local p1, "inventory":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/glu/android/IAP$Inventory;>;"
    return-void
.end method

.method public final querySingleProduct(Ljava/lang/String;)V
    .locals 0
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 703
    return-void
.end method

.method public final restoreUnclaimedItems()V
    .locals 0

    .prologue
    .line 690
    return-void
.end method

.method public final setButtonCenterXY(I)V
    .locals 0
    .param p1, "xy"    # I

    .prologue
    .line 700
    return-void
.end method

.method public final setButtonVisible(I)V
    .locals 0
    .param p1, "visible"    # I

    .prologue
    .line 701
    return-void
.end method

.method public final tick(I)V
    .locals 0
    .param p1, "deltaMS"    # I

    .prologue
    .line 692
    return-void
.end method
