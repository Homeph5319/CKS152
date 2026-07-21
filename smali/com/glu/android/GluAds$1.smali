.class final Lcom/glu/android/GluAds$1;
.super Ljava/lang/Thread;
.source "GluAds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/glu/android/GluAds;->initializeInstance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 294
    const-string v1, "TODO: Ad provider spec from server?"

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 295
    const/4 v0, 0x0

    .line 297
    .local v0, "newSpec":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/glu/android/GluAds$Spec;>;"
    sget-object v1, Lcom/glu/android/GluAds;->sm_adProviderUsageSpec:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 299
    const-string v1, "Setting up the remote ad provider spec."

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 300
    invoke-static {v0}, Lcom/glu/android/GluAds;->copyAdProviderSpec(Ljava/util/Hashtable;)V

    .line 303
    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/glu/android/GluAds;->sm_adProviderSpecFromServerThread:Ljava/lang/Thread;

    .line 304
    return-void
.end method
