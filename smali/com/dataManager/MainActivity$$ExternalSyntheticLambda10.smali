.class public final synthetic Lcom/dataManager/MainActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/dataManager/MainActivity;"
    method = "lambda$startExtraction$7"
    proto = "(Ljava/util/List;J)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "7bbc1d7254613ffaa026de47d975f73968361ef3e5d7b818ce0a83a33039c6b8"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/dataManager/MainActivity;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/dataManager/MainActivity;Ljava/util/List;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda10;->f$0:Lcom/dataManager/MainActivity;

    iput-object p2, p0, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda10;->f$1:Ljava/util/List;

    iput-wide p3, p0, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda10;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda10;->f$0:Lcom/dataManager/MainActivity;

    iget-object v1, p0, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda10;->f$1:Ljava/util/List;

    iget-wide v2, p0, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda10;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/dataManager/MainActivity;->$r8$lambda$ZDk2B-vpW1hi58g0voDwbwFij6I(Lcom/dataManager/MainActivity;Ljava/util/List;J)V

    return-void
.end method
