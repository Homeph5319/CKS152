.class public Lcom/playhaven/src/common/jsbridge/PHJavascriptBridge;
.super Ljava/lang/Object;
.source "PHJavascriptBridge.java"


# instance fields
.field private jsStubs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/playhaven/src/common/jsbridge/PHJavascriptStub;",
            ">;"
        }
    .end annotation
.end field

.field private nativeInterfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/playhaven/src/common/jsbridge/PHJavascriptInterface;",
            ">;"
        }
    .end annotation
.end field

.field private webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/playhaven/src/common/jsbridge/PHJavascriptBridge;->nativeInterfaces:Ljava/util/HashMap;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/playhaven/src/common/jsbridge/PHJavascriptBridge;->jsStubs:Ljava/util/HashMap;

    .line 25
    iput-object p1, p0, Lcom/playhaven/src/common/jsbridge/PHJavascriptBridge;->webview:Landroid/webkit/WebView;

    .line 26
    return-void
.end method


# virtual methods
.method public addJavascriptStub(Lcom/playhaven/src/common/jsbridge/PHJavascriptStub;)V
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/playhaven/src/common/jsbridge/PHJavascriptBridge;->addJavascriptStub(Ljava/lang/String;Lcom/playhaven/src/common/jsbridge/PHJavascriptStub;)V

    .line 41
    return-void
.end method

.method public addJavascriptStub(Ljava/lang/String;Lcom/playhaven/src/common/jsbridge/PHJavascriptStub;)V
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p2, p0}, Lcom/playhaven/src/common/jsbridge/PHJavascriptStub;->setBridge(Lcom/playhaven/src/common/jsbridge/PHJavascriptBridge;)V

    .line 50
    iget-object v0, p0, Lcom/playhaven/src/common/jsbridge/PHJavascriptBridge;->jsStubs:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public addNativeInterface(Ljava/lang/String;Lcom/playhaven/src/common/jsbridge/PHJavascriptInterface;)V
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p2, p0}, Lcom/playhaven/src/common/jsbridge/PHJavascriptInterface;->setBridge(Lcom/playhaven/src/common/jsbridge/PHJavascriptBridge;)V

    .line 33
    iget-object v0, p0, Lcom/playhaven/src/common/jsbridge/PHJavascriptBridge;->nativeInterfaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/playhaven/src/common/jsbridge/PHJavascriptBridge;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, p2, p1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method protected varargs callJsMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 59
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 63
    iget-object v0, p0, Lcom/playhaven/src/common/jsbridge/PHJavascriptBridge;->jsStubs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v3

    .line 65
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/playhaven/src/common/jsbridge/PHJavascriptBridge;->jsStubs:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/playhaven/src/common/jsbridge/PHJavascriptStub;

    .line 70
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    move-object v2, v0

    .line 73
    goto :goto_0

    .line 75
    :cond_0
    if-eqz v2, :cond_1

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v4

    .line 78
    :goto_2
    array-length v5, p2

    if-ge v0, v5, :cond_3

    .line 79
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    array-length v5, p2

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_2

    .line 82
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 86
    :cond_3
    const-string v0, "%s(%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v4

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v1, "Playhaven Debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Javascript call: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v1, p0, Lcom/playhaven/src/common/jsbridge/PHJavascriptBridge;->webview:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 92
    return-object v3

    :cond_4
    move-object v0, v2

    goto :goto_1
.end method
