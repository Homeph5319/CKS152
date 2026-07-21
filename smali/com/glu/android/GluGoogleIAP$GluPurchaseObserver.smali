.class Lcom/glu/android/GluGoogleIAP$GluPurchaseObserver;
.super Lcom/glu/googleiap/PurchaseObserver;
.source "GluGoogleIAP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GluGoogleIAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GluPurchaseObserver"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1045
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-direct {p0, v0, p1}, Lcom/glu/googleiap/PurchaseObserver;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 1046
    return-void
.end method


# virtual methods
.method public onBillingSupported(Z)V
    .locals 2
    .param p1, "supported"    # Z

    .prologue
    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1052
    sget-object v0, Lcom/glu/android/GluGoogleIAP;->instance:Lcom/glu/android/GluGoogleIAP;

    invoke-static {p1}, Lcom/glu/android/GluGoogleIAP;->access$802(Z)Z

    .line 1053
    sget-object v0, Lcom/glu/android/GluGoogleIAP;->instance:Lcom/glu/android/GluGoogleIAP;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/glu/android/GluGoogleIAP;->access$902(Z)Z

    .line 1054
    return-void
.end method

.method public onPurchaseStateChange(Lcom/glu/googleiap/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 3
    .param p1, "requestState"    # Lcom/glu/googleiap/Consts$PurchaseState;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "quantity"    # I
    .param p4, "purchaseTime"    # J
    .param p6, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPurchaseStateChange() itemId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " quantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " developerPayload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p6}, Lcom/glu/android/GluUtil;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1059
    invoke-static {}, Lcom/glu/android/GluGoogleIAP;->access$1000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1060
    :try_start_0
    sget-object v0, Lcom/glu/android/Debug;->CONSOLE:Lcom/glu/android/Debug$Console;

    iget-object v0, v0, Lcom/glu/android/Debug$Console;->GOOGLE_IAP_OVERRIDE_ITEM:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1062
    const-string v0, "Still no hack for you!"

    invoke-static {v0}, Lcom/glu/android/Debug;->relDie(Ljava/lang/String;)V

    .line 1063
    sget-object v0, Lcom/glu/android/Debug;->CONSOLE:Lcom/glu/android/Debug$Console;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "android.test.purchased"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/glu/android/Debug;->CONSOLE:Lcom/glu/android/Debug$Console;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "android.test.canceled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/glu/android/Debug;->CONSOLE:Lcom/glu/android/Debug$Console;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "android.test.refunded"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/glu/android/Debug;->CONSOLE:Lcom/glu/android/Debug$Console;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "android.test.item_unavailable"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1065
    :cond_0
    sget-object v0, Lcom/glu/android/GluGoogleIAP;->instance:Lcom/glu/android/GluGoogleIAP;

    invoke-static {}, Lcom/glu/android/GluGoogleIAP;->access$000()Ljava/lang/String;

    move-result-object p2

    .line 1068
    :cond_1
    sget-object v0, Lcom/glu/googleiap/Consts$PurchaseState;->PURCHASED:Lcom/glu/googleiap/Consts$PurchaseState;

    if-ne p1, v0, :cond_4

    .line 1070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transactionInProgress()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/glu/android/GluGoogleIAP;->instance:Lcom/glu/android/GluGoogleIAP;

    invoke-static {v2}, Lcom/glu/android/GluGoogleIAP;->access$1100(Lcom/glu/android/GluGoogleIAP;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    itemId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    m_savedProductId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/glu/android/GluGoogleIAP;->instance:Lcom/glu/android/GluGoogleIAP;

    invoke-static {}, Lcom/glu/android/GluGoogleIAP;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1071
    sget-object v0, Lcom/glu/android/GluGoogleIAP;->instance:Lcom/glu/android/GluGoogleIAP;

    invoke-static {v0}, Lcom/glu/android/GluGoogleIAP;->access$1100(Lcom/glu/android/GluGoogleIAP;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/glu/android/GluGoogleIAP;->instance:Lcom/glu/android/GluGoogleIAP;

    invoke-static {}, Lcom/glu/android/GluGoogleIAP;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1072
    sget-object v0, Lcom/glu/android/GluGoogleIAP;->instance:Lcom/glu/android/GluGoogleIAP;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/glu/android/GluGoogleIAP;->access$1202(I)I

    .line 1076
    :goto_0
    sget-object v0, Lcom/glu/android/GluGoogleIAP;->instance:Lcom/glu/android/GluGoogleIAP;

    invoke-static {v0, p2, p4, p5}, Lcom/glu/android/GluGoogleIAP;->access$1300(Lcom/glu/android/GluGoogleIAP;Ljava/lang/String;J)V

    .line 1090
    :cond_2
    :goto_1
    monitor-exit v1

    .line 1091
    return-void

    .line 1074
    :cond_3
    invoke-static {}, Lcom/glu/android/IAP;->displayAsyncSuccessMessage()V

    goto :goto_0

    .line 1090
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1078
    :cond_4
    :try_start_1
    sget-object v0, Lcom/glu/googleiap/Consts$PurchaseState;->REFUNDED:Lcom/glu/googleiap/Consts$PurchaseState;

    if-ne p1, v0, :cond_5

    .line 1080
    sget-object v0, Lcom/glu/android/GluGoogleIAP;->instance:Lcom/glu/android/GluGoogleIAP;

    invoke-static {v0, p2, p4, p5}, Lcom/glu/android/GluGoogleIAP;->access$1400(Lcom/glu/android/GluGoogleIAP;Ljava/lang/String;J)V

    goto :goto_1

    .line 1082
    :cond_5
    sget-object v0, Lcom/glu/googleiap/Consts$PurchaseState;->CANCELED:Lcom/glu/googleiap/Consts$PurchaseState;

    if-ne p1, v0, :cond_2

    .line 1084
    const-string v0, "Purchase failed to be processed."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1085
    sget-object v0, Lcom/glu/android/GluGoogleIAP;->instance:Lcom/glu/android/GluGoogleIAP;

    invoke-static {v0}, Lcom/glu/android/GluGoogleIAP;->access$1100(Lcom/glu/android/GluGoogleIAP;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1086
    sget-object v0, Lcom/glu/android/GluGoogleIAP;->instance:Lcom/glu/android/GluGoogleIAP;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/glu/android/GluGoogleIAP;->access$1202(I)I

    goto :goto_1

    .line 1088
    :cond_6
    invoke-static {}, Lcom/glu/android/IAP;->displayAsyncFailureMessage()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onRequestPurchaseResponse(Lcom/glu/android/GluGoogleIAP$RequestPurchase;Lcom/glu/googleiap/Consts$ResponseCode;)V
    .locals 2
    .param p1, "request"    # Lcom/glu/android/GluGoogleIAP$RequestPurchase;
    .param p2, "responseCode"    # Lcom/glu/googleiap/Consts$ResponseCode;

    .prologue
    .line 1095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/glu/android/GluGoogleIAP$RequestPurchase;->m_productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1096
    sget-object v0, Lcom/glu/googleiap/Consts$ResponseCode;->RESULT_OK:Lcom/glu/googleiap/Consts$ResponseCode;

    if-ne p2, v0, :cond_0

    .line 1098
    const-string v0, "Purchase successfully sent to server."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1110
    :goto_0
    return-void

    .line 1100
    :cond_0
    sget-object v0, Lcom/glu/googleiap/Consts$ResponseCode;->RESULT_USER_CANCELED:Lcom/glu/googleiap/Consts$ResponseCode;

    if-ne p2, v0, :cond_1

    .line 1102
    const-string v0, "User cancelled."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1103
    sget-object v0, Lcom/glu/android/GluGoogleIAP;->instance:Lcom/glu/android/GluGoogleIAP;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/glu/android/GluGoogleIAP;->access$1202(I)I

    goto :goto_0

    .line 1107
    :cond_1
    const-string v0, "Purchase failed."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1108
    sget-object v0, Lcom/glu/android/GluGoogleIAP;->instance:Lcom/glu/android/GluGoogleIAP;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/glu/android/GluGoogleIAP;->access$1202(I)I

    goto :goto_0
.end method

.method public onRestoreTransactionsResponse(Lcom/glu/android/GluGoogleIAP$RestoreTransactions;Lcom/glu/googleiap/Consts$ResponseCode;)V
    .locals 4
    .param p1, "request"    # Lcom/glu/android/GluGoogleIAP$RestoreTransactions;
    .param p2, "responseCode"    # Lcom/glu/googleiap/Consts$ResponseCode;

    .prologue
    .line 1114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "completed RestoreTransactions request = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1116
    sget-object v2, Lcom/glu/googleiap/Consts$ResponseCode;->RESULT_OK:Lcom/glu/googleiap/Consts$ResponseCode;

    if-ne p2, v2, :cond_0

    .line 1120
    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/glu/android/GameLet;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1121
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1122
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "db_initialized"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1123
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1125
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method
