.class public interface abstract Lcom/glu/android/IAP$IAPObject;
.super Ljava/lang/Object;
.source "IAP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/IAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IAPObject"
.end annotation


# static fields
.field public static final IAP_ASYNCHRONOUS_ITEM_TO_GAME_DO_NOT_RETRY:I = 0xfacade

.field public static final IAP_ASYNCHRONOUS_ITEM_TO_GAME_TIMER:I = 0xea60

.field public static final IAP_CONNECT_DO_NOT_RETRY:I = 0xfacade

.field public static final IAP_CONNECT_RETRY_TIMER:I = 0x2710

.field public static final IAP_SERVER_COMMUNICATION_DO_NOT_RETRY:I = 0xfacade

.field public static final IAP_SERVER_COMMUNICATION_TIMEOUT:I = 0xea60

.field public static final PURCHASING_STATE_NONE:I = 0x0

.field public static final PURCHASING_STATE_NOT_IN_REGION:I = 0x4

.field public static final PURCHASING_STATE_PURCHASE_FAILED:I = 0x2

.field public static final PURCHASING_STATE_PURCHASE_SUCCEEDED:I = 0x1

.field public static final PURCHASING_STATE_PURCHASE_USER_CANCELLED:I = 0x3


# virtual methods
.method public abstract buyProduct(Ljava/lang/String;)V
.end method

.method public abstract forceAsynchronousPurchaseAward()Z
.end method

.method public abstract getAttribute(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCurrencySymbol()Ljava/lang/String;
.end method

.method public abstract getIAPId()I
.end method

.method public abstract getProductType(Ljava/lang/String;)I
.end method

.method public abstract getRealProductId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract hasInventoryLoaded()Z
.end method

.method public abstract init()V
.end method

.method public abstract isGoogleServiceConnected()Z
.end method

.method public abstract isIAPConnected()Z
.end method

.method public abstract isIAPSupported()Z
.end method

.method public abstract isItemAvailable(Ljava/lang/String;)Z
.end method

.method public abstract isProductValid(Ljava/lang/String;)Z
.end method

.method public abstract onAppStart()V
.end method

.method public abstract onAppStop()V
.end method

.method public abstract onIAPDestroy()V
.end method

.method public abstract onInventoryFailure()V
.end method

.method public abstract onInventoryReceived(Ljava/util/Hashtable;)V
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
.end method

.method public abstract querySingleProduct(Ljava/lang/String;)V
.end method

.method public abstract restoreUnclaimedItems()V
.end method

.method public abstract setButtonCenterXY(I)V
.end method

.method public abstract setButtonVisible(I)V
.end method

.method public abstract tick(I)V
.end method
