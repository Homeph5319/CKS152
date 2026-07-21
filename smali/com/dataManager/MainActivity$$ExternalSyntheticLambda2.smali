.class public final synthetic Lcom/dataManager/MainActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/dataManager/ArchiveExtractor$ProgressListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/dataManager/MainActivity;"
    method = "lambda$startExtraction$6"
    proto = "(JJLjava/lang/String;)V"
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

    iput-object p1, p0, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda2;->f$0:Lcom/dataManager/MainActivity;

    return-void
.end method


# virtual methods
.method public final onProgress(JJLjava/lang/String;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda2;->f$0:Lcom/dataManager/MainActivity;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/dataManager/MainActivity;->$r8$lambda$3cHOl9Ye1jNtdyvDALwd_qcoB_w(Lcom/dataManager/MainActivity;JJLjava/lang/String;)V

    return-void
.end method
