.class public Lcom/playhaven/src/common/jsbridge/PHJavascriptStub;
.super Ljava/lang/Object;
.source "PHJavascriptStub.java"


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

.field private methodMappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/playhaven/src/common/jsbridge/PHJavascriptStub;->methodMappings:Ljava/util/HashMap;

    return-void
.end method

.method private currentMethod()Ljava/lang/reflect/Method;
    .locals 6

    .prologue
    .line 28
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 31
    array-length v1, v0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Cannot determine Java method for Javascript forwarding"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 38
    iget-object v0, p0, Lcom/playhaven/src/common/jsbridge/PHJavascriptStub;->methodMappings:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/playhaven/src/common/jsbridge/PHJavascriptStub;->methodMappings:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 49
    :cond_1
    :goto_0
    return-object v0

    .line 40
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 41
    const/4 v1, 0x0

    .line 42
    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 43
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 44
    aget-object v0, v3, v1

    .line 42
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 47
    :cond_4
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/playhaven/src/common/jsbridge/PHJavascriptStub;->methodMappings:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected varargs forwardMethod([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/playhaven/src/common/jsbridge/PHJavascriptStub;->currentMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 57
    iget-object v0, p0, Lcom/playhaven/src/common/jsbridge/PHJavascriptStub;->bridge:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/playhaven/src/common/jsbridge/PHJavascriptStub;->bridge:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/playhaven/src/common/jsbridge/PHJavascriptBridge;

    invoke-virtual {v0, v1, p1}, Lcom/playhaven/src/common/jsbridge/PHJavascriptBridge;->callJsMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected listMethods()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/playhaven/src/common/jsbridge/PHInvocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method protected setBridge(Lcom/playhaven/src/common/jsbridge/PHJavascriptBridge;)V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/playhaven/src/common/jsbridge/PHJavascriptStub;->bridge:Ljava/lang/ref/WeakReference;

    .line 19
    return-void
.end method
