.class Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn$PHRedirectHandler;
.super Lorg/apache/http/impl/client/DefaultRedirectHandler;
.source "PHAsyncRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PHRedirectHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;


# direct methods
.method private constructor <init>(Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn$PHRedirectHandler;->this$0:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;Lcom/playhaven/src/common/PHAsyncRequest$1;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn$PHRedirectHandler;-><init>(Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;)V

    return-void
.end method


# virtual methods
.method public getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRedirectHandler;->getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn$PHRedirectHandler;->this$0:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->addRedirectUrl(Ljava/lang/String;)V

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asking for new location uri. Responding with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 103
    return-object v0
.end method

.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 1

    .prologue
    .line 107
    const-string v0, "Redirect handler asking if we should redirect?"

    invoke-static {v0}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn$PHRedirectHandler;->this$0:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    invoke-virtual {v0, p1}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->shouldRedirect(Lorg/apache/http/HttpResponse;)Z

    move-result v0

    return v0
.end method
