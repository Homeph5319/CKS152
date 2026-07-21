.class public Lcom/playhaven/src/common/jsbridge/PHInvocation;
.super Ljava/lang/Object;
.source "PHInvocation.java"


# instance fields
.field public instance:Ljava/lang/Object;

.field public method:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/playhaven/src/common/jsbridge/PHInvocation;->method:Ljava/lang/reflect/Method;

    .line 19
    iput-object p1, p0, Lcom/playhaven/src/common/jsbridge/PHInvocation;->instance:Ljava/lang/Object;

    .line 20
    return-void
.end method
