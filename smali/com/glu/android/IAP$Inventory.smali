.class public Lcom/glu/android/IAP$Inventory;
.super Ljava/lang/Object;
.source "IAP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/IAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Inventory"
.end annotation


# instance fields
.field public m_name:Ljava/lang/String;

.field public m_priceUS:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 888
    iput-object v0, p0, Lcom/glu/android/IAP$Inventory;->m_priceUS:Ljava/lang/String;

    .line 889
    iput-object v0, p0, Lcom/glu/android/IAP$Inventory;->m_name:Ljava/lang/String;

    return-void
.end method
