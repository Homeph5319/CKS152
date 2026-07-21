.class public final synthetic Lcom/dataManager/MainActivity$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/dataManager/MainActivity;"
    method = "lambda$showProgressDialog$8"
    proto = "(Landroid/widget/Button;Landroid/view/View;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "7bbc1d7254613ffaa026de47d975f73968361ef3e5d7b818ce0a83a33039c6b8"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/dataManager/MainActivity;

.field public final synthetic f$1:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Lcom/dataManager/MainActivity;Landroid/widget/Button;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda11;->f$0:Lcom/dataManager/MainActivity;

    iput-object p2, p0, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda11;->f$1:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda11;->f$0:Lcom/dataManager/MainActivity;

    iget-object v1, p0, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda11;->f$1:Landroid/widget/Button;

    invoke-static {v0, v1, p1}, Lcom/dataManager/MainActivity;->$r8$lambda$UJRSnkpaTgXDZiDSai3t3rVPCPs(Lcom/dataManager/MainActivity;Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method
