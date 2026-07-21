.class public Lcom/playhaven/src/common/jsbridge/PHJavascriptInterface;
.super Ljava/lang/Object;
.source "PHJavascriptInterface.java"


# instance fields
.field private bridge:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/playhaven/src/common/jsbridge/PHJavascriptBridge;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected setBridge(Lcom/playhaven/src/common/jsbridge/PHJavascriptBridge;)V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/playhaven/src/common/jsbridge/PHJavascriptInterface;->bridge:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method
