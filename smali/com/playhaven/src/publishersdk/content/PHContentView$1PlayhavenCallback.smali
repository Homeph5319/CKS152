.class Lcom/playhaven/src/publishersdk/content/PHContentView$1PlayhavenCallback;
.super Lcom/playhaven/src/common/jsbridge/PHJavascriptStub;
.source "PHContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playhaven/src/publishersdk/content/PHContentView;->testJSBridge(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlayhavenCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playhaven/src/publishersdk/content/PHContentView;


# direct methods
.method constructor <init>(Lcom/playhaven/src/publishersdk/content/PHContentView;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView$1PlayhavenCallback;->this$0:Lcom/playhaven/src/publishersdk/content/PHContentView;

    invoke-direct {p0}, Lcom/playhaven/src/common/jsbridge/PHJavascriptStub;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 337
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-super {p0, v0}, Lcom/playhaven/src/common/jsbridge/PHJavascriptStub;->forwardMethod([Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    return-void
.end method
