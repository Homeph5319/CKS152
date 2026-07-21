.class public Lcom/tapjoy/TJCVirtualGoods$TJCException;
.super Ljava/lang/Exception;
.source "TJCVirtualGoods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCVirtualGoods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TJCException"
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x1241269f2f4fL


# instance fields
.field private errorCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 5272
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 5267
    const/4 v0, -0x1

    iput v0, p0, Lcom/tapjoy/TJCVirtualGoods$TJCException;->errorCode:I

    .line 5273
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 5276
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 5267
    const/4 v0, -0x1

    iput v0, p0, Lcom/tapjoy/TJCVirtualGoods$TJCException;->errorCode:I

    .line 5277
    iput p2, p0, Lcom/tapjoy/TJCVirtualGoods$TJCException;->errorCode:I

    .line 5278
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 5283
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5267
    const/4 v0, -0x1

    iput v0, p0, Lcom/tapjoy/TJCVirtualGoods$TJCException;->errorCode:I

    .line 5284
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 5287
    iget v0, p0, Lcom/tapjoy/TJCVirtualGoods$TJCException;->errorCode:I

    return v0
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 5291
    iput p1, p0, Lcom/tapjoy/TJCVirtualGoods$TJCException;->errorCode:I

    .line 5292
    return-void
.end method
