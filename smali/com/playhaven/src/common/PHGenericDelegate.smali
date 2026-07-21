.class public Lcom/playhaven/src/common/PHGenericDelegate;
.super Ljava/lang/Object;
.source "PHGenericDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public delegate:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private delegateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/playhaven/src/common/PHGenericDelegate;->delegate:Ljava/lang/Object;

    .line 22
    invoke-virtual {p0}, Lcom/playhaven/src/common/PHGenericDelegate;->createDelegateOnThread()V

    .line 23
    return-void
.end method


# virtual methods
.method public createDelegateOnThread()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/playhaven/src/common/PHGenericDelegate;->delegateHandler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method public getThreadHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/playhaven/src/common/PHGenericDelegate;->delegateHandler:Landroid/os/Handler;

    return-object v0
.end method
