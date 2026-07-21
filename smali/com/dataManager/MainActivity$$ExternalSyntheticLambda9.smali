.class public final synthetic Lcom/dataManager/MainActivity$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/dataManager/MainActivity;"
    method = "lambda$startExtraction$5"
    proto = "(JJLjava/lang/String;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "7bbc1d7254613ffaa026de47d975f73968361ef3e5d7b818ce0a83a33039c6b8"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/dataManager/MainActivity;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/dataManager/MainActivity;JJLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda9;->f$0:Lcom/dataManager/MainActivity;

    iput-wide p2, p0, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda9;->f$1:J

    iput-wide p4, p0, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda9;->f$2:J

    iput-object p6, p0, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda9;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda9;->f$0:Lcom/dataManager/MainActivity;

    iget-wide v1, p0, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda9;->f$1:J

    iget-wide v3, p0, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda9;->f$2:J

    iget-object v5, p0, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda9;->f$3:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/dataManager/MainActivity;->$r8$lambda$5LSCGyo7onCqtbtqMpMTRDsNvQU(Lcom/dataManager/MainActivity;JJLjava/lang/String;)V

    return-void
.end method
