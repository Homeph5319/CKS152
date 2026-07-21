.class public abstract Lcom/glu/android/BaseWebView$BaseWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "BaseWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/BaseWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "BaseWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/glu/android/BaseWebView;


# direct methods
.method protected constructor <init>(Lcom/glu/android/BaseWebView;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/glu/android/BaseWebView$BaseWebViewClient;->this$0:Lcom/glu/android/BaseWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract handlePageFinished()V
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/glu/android/BaseWebView$BaseWebViewClient;->this$0:Lcom/glu/android/BaseWebView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/glu/android/BaseWebView;->m_pageLoading:Z

    .line 94
    invoke-virtual {p0}, Lcom/glu/android/BaseWebView$BaseWebViewClient;->handlePageFinished()V

    .line 95
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 109
    iget-object v0, p0, Lcom/glu/android/BaseWebView$BaseWebViewClient;->this$0:Lcom/glu/android/BaseWebView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/glu/android/BaseWebView;->m_pageLoading:Z

    .line 110
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingURL"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/glu/android/BaseWebView$BaseWebViewClient;->this$0:Lcom/glu/android/BaseWebView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/glu/android/BaseWebView;->m_pageLoading:Z

    .line 102
    invoke-virtual {p0}, Lcom/glu/android/BaseWebView$BaseWebViewClient;->handlePageFinished()V

    .line 103
    return-void
.end method
