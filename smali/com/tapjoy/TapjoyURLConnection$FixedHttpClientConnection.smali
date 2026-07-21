.class public Lcom/tapjoy/TapjoyURLConnection$FixedHttpClientConnection;
.super Lorg/apache/http/impl/conn/DefaultClientConnection;
.source "TapjoyURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedHttpClientConnection"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lorg/apache/http/impl/conn/DefaultClientConnection;-><init>()V

    return-void
.end method


# virtual methods
.method protected createSessionInputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionInputBuffer;
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "buffersize"    # I
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    const/high16 v0, 0x10000

    if-le p2, v0, :cond_0

    .line 92
    const/high16 p2, 0x10000

    .line 94
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/http/impl/conn/DefaultClientConnection;->createSessionInputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected createSessionOutputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionOutputBuffer;
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "buffersize"    # I
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    const/high16 v0, 0x10000

    if-le p2, v0, :cond_0

    .line 100
    const/high16 p2, 0x10000

    .line 102
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/http/impl/conn/DefaultClientConnection;->createSessionOutputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionOutputBuffer;

    move-result-object v0

    return-object v0
.end method
