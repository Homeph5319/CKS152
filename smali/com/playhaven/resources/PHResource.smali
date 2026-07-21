.class public Lcom/playhaven/resources/PHResource;
.super Ljava/lang/Object;
.source "PHResource.java"


# instance fields
.field private data:Ljava/lang/String;

.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/playhaven/resources/PHResource;->data:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public getResourceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/playhaven/resources/PHResource;->key:Ljava/lang/String;

    return-object v0
.end method

.method public setDataByte([B)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/util/Base64;->encode([BI)[B

    .line 28
    return-void
.end method

.method public setDataStr(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/playhaven/resources/PHResource;->data:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setResourceKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/playhaven/resources/PHResource;->key:Ljava/lang/String;

    .line 44
    return-void
.end method
