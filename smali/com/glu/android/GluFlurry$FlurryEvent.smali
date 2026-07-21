.class public Lcom/glu/android/GluFlurry$FlurryEvent;
.super Ljava/lang/Object;
.source "GluFlurry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GluFlurry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlurryEvent"
.end annotation


# instance fields
.field public event:Ljava/lang/String;

.field public lValue:J

.field public sValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/String;
    .param p2, "l"    # J
    .param p4, "s"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/glu/android/GluFlurry$FlurryEvent;->event:Ljava/lang/String;

    .line 121
    iput-wide p2, p0, Lcom/glu/android/GluFlurry$FlurryEvent;->lValue:J

    .line 122
    iput-object p4, p0, Lcom/glu/android/GluFlurry$FlurryEvent;->sValue:Ljava/lang/String;

    .line 123
    return-void
.end method
