.class final Lcom/glu/android/IAP$1;
.super Ljava/lang/Thread;
.source "IAP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/glu/android/IAP;->getDataFromServer(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$iapVariant:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 720
    iput p1, p0, Lcom/glu/android/IAP$1;->val$iapVariant:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 722
    iget v0, p0, Lcom/glu/android/IAP$1;->val$iapVariant:I

    invoke-static {v0}, Lcom/glu/android/IAP;->access$000(I)V

    .line 723
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/glu/android/IAP;->access$102(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 724
    return-void
.end method
