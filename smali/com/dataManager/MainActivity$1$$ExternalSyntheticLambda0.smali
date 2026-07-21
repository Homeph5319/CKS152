.class public final synthetic Lcom/dataManager/MainActivity$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/dataManager/MainActivity$1;"
    method = "lambda$onSuccess$0"
    proto = "()V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "7bbc1d7254613ffaa026de47d975f73968361ef3e5d7b818ce0a83a33039c6b8"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/dataManager/MainActivity$1;


# direct methods
.method public synthetic constructor <init>(Lcom/dataManager/MainActivity$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dataManager/MainActivity$1$$ExternalSyntheticLambda0;->f$0:Lcom/dataManager/MainActivity$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/dataManager/MainActivity$1$$ExternalSyntheticLambda0;->f$0:Lcom/dataManager/MainActivity$1;

    invoke-static {v0}, Lcom/dataManager/MainActivity$1;->$r8$lambda$pYGMpZF5U4shhU4-56p1pN3f8bc(Lcom/dataManager/MainActivity$1;)V

    return-void
.end method
