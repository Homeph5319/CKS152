.class Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$2;
.super Ljava/lang/Object;
.source "PHPublisherContentRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->showCloseAfterTimeout(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;


# direct methods
.method constructor <init>(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$2;->this$0:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$2;->this$0:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    invoke-static {v0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->access$100(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)V

    .line 396
    return-void
.end method
