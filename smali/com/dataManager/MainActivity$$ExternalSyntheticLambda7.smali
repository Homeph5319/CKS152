.class public final synthetic Lcom/dataManager/MainActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/dataManager/MainActivity;"
    method = "onScanComplete"
    proto = "()V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "7bbc1d7254613ffaa026de47d975f73968361ef3e5d7b818ce0a83a33039c6b8"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/dataManager/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/dataManager/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda7;->f$0:Lcom/dataManager/MainActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda7;->f$0:Lcom/dataManager/MainActivity;

    invoke-static {v0}, Lcom/dataManager/MainActivity;->$r8$lambda$CHYjscVqs0r7Wu513LQDxto6VGU(Lcom/dataManager/MainActivity;)V

    return-void
.end method
