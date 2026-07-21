.class public Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCVirtualGoods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserAccountObject"
.end annotation


# instance fields
.field private currencyName:Ljava/lang/String;

.field private pointsID:Ljava/lang/String;

.field private tapPoints:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5841
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;->tapPoints:I

    .line 5847
    return-void
.end method


# virtual methods
.method public getCurrencyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5866
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;->currencyName:Ljava/lang/String;

    return-object v0
.end method

.method public getPointsID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5880
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;->pointsID:Ljava/lang/String;

    return-object v0
.end method

.method public getTapPoints()I
    .locals 1

    .prologue
    .line 5851
    iget v0, p0, Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;->tapPoints:I

    return v0
.end method

.method public setCurrencyName(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p1, "currencyName"    # Ljava/lang/String;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 5871
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;->currencyName:Ljava/lang/String;

    .line 5872
    const-string v2, "TJCPrefsFile"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 5873
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5874
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "currencyName"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5875
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5876
    return-void
.end method

.method public setPointsID(Ljava/lang/String;)V
    .locals 0
    .param p1, "pointsID"    # Ljava/lang/String;

    .prologue
    .line 5885
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;->pointsID:Ljava/lang/String;

    .line 5886
    return-void
.end method

.method public setTapPoints(ILandroid/content/Context;)V
    .locals 4
    .param p1, "tapPoints"    # I
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 5856
    iput p1, p0, Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;->tapPoints:I

    .line 5858
    const-string v2, "TJCPrefsFile"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 5859
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5860
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "tapPoints"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5861
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5862
    return-void
.end method
