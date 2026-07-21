.class public final Lcom/glu/android/GluAds$Spec;
.super Ljava/lang/Object;
.source "GluAds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GluAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Spec"
.end annotation


# instance fields
.field public percent:I

.field public preferred:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "pct"    # I
    .param p2, "pfd"    # Z

    .prologue
    const/4 v0, 0x0

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    iput v0, p0, Lcom/glu/android/GluAds$Spec;->percent:I

    .line 546
    iput-boolean v0, p0, Lcom/glu/android/GluAds$Spec;->preferred:Z

    .line 547
    iput p1, p0, Lcom/glu/android/GluAds$Spec;->percent:I

    iput-boolean p2, p0, Lcom/glu/android/GluAds$Spec;->preferred:Z

    return-void
.end method
