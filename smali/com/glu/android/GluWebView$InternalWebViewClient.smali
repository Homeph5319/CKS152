.class public Lcom/glu/android/GluWebView$InternalWebViewClient;
.super Lcom/glu/android/BaseWebView$BaseWebViewClient;
.source "GluWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GluWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InternalWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/glu/android/GluWebView;


# direct methods
.method protected constructor <init>(Lcom/glu/android/GluWebView;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/glu/android/GluWebView$InternalWebViewClient;->this$0:Lcom/glu/android/GluWebView;

    invoke-direct {p0, p1}, Lcom/glu/android/BaseWebView$BaseWebViewClient;-><init>(Lcom/glu/android/BaseWebView;)V

    return-void
.end method


# virtual methods
.method protected handlePageFinished()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/glu/android/GluWebView;->instance:Lcom/glu/android/GluWebView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/glu/android/GluWebView;->m_pageLoading:Z

    .line 59
    sget-object v0, Lcom/glu/android/GluWebView;->instance:Lcom/glu/android/GluWebView;

    invoke-virtual {v0, p2}, Lcom/glu/android/GluWebView;->loadUrl(Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    return v0
.end method
