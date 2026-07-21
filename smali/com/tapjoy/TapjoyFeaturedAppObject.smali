.class public Lcom/tapjoy/TapjoyFeaturedAppObject;
.super Ljava/lang/Object;
.source "TapjoyFeaturedAppObject.java"


# instance fields
.field public amount:I

.field public cost:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public fullScreenAdURL:Ljava/lang/String;

.field public iconURL:Ljava/lang/String;

.field public maxTimesToDisplayThisApp:I

.field public name:Ljava/lang/String;

.field public redirectURL:Ljava/lang/String;

.field public storeID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppObject;->cost:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppObject;->storeID:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppObject;->name:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppObject;->description:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppObject;->iconURL:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppObject;->redirectURL:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppObject;->fullScreenAdURL:Ljava/lang/String;

    .line 41
    return-void
.end method
