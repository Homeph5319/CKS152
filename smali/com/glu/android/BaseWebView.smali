.class public abstract Lcom/glu/android/BaseWebView;
.super Landroid/webkit/WebView;
.source "BaseWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/glu/android/BaseWebView$BaseWebViewClient;
    }
.end annotation


# static fields
.field private static final BLANK_URL:Ljava/lang/String; = "glu://close"


# instance fields
.field public m_pageLoading:Z

.field public m_progressBar:Landroid/graphics/drawable/Drawable;

.field public m_progressLastTime:J

.field public m_progressTimer:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 25
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/glu/android/BaseWebView;->m_progressBar:Landroid/graphics/drawable/Drawable;

    .line 17
    iput v3, p0, Lcom/glu/android/BaseWebView;->m_progressTimer:I

    .line 18
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/glu/android/BaseWebView;->m_progressLastTime:J

    .line 19
    iput-boolean v3, p0, Lcom/glu/android/BaseWebView;->m_pageLoading:Z

    .line 27
    const-string v1, "~~ BaseWebView()"

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V

    .line 30
    invoke-virtual {p0}, Lcom/glu/android/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 31
    .local v0, "webSettings":Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 33
    const v1, 0x7f020039

    invoke-static {v1}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/glu/android/BaseWebView;->m_progressBar:Landroid/graphics/drawable/Drawable;

    .line 34
    return-void
.end method


# virtual methods
.method protected drawProgressBar(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "g"    # Landroid/graphics/Canvas;

    .prologue
    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/glu/android/BaseWebView;->drawProgressBar(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method protected drawProgressBar(Landroid/graphics/Canvas;Z)V
    .locals 18
    .param p1, "g"    # Landroid/graphics/Canvas;
    .param p2, "offset"    # Z

    .prologue
    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/BaseWebView;->getProgress()I

    move-result v7

    .line 119
    .local v7, "progress":I
    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/BaseWebView;->getHeight()I

    move-result v8

    .line 120
    .local v8, "viewHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/BaseWebView;->getWidth()I

    move-result v9

    .line 122
    .local v9, "viewWidth":I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/glu/android/BaseWebView;->m_pageLoading:Z

    if-nez v13, :cond_0

    const/16 v13, 0x64

    if-ge v7, v13, :cond_5

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/glu/android/BaseWebView;->m_progressBar:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_5

    .line 125
    const/16 v1, 0x3e8

    .line 126
    .local v1, "ANIM_TIME":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 127
    .local v4, "curTime":J
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/glu/android/BaseWebView;->m_progressLastTime:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_1

    .line 129
    move-object/from16 v0, p0

    iget v13, v0, Lcom/glu/android/BaseWebView;->m_progressTimer:I

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/glu/android/BaseWebView;->m_progressLastTime:J

    sub-long v14, v4, v14

    long-to-int v14, v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/glu/android/BaseWebView;->m_progressTimer:I

    .line 131
    :cond_1
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/glu/android/BaseWebView;->m_progressLastTime:J

    .line 134
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/glu/android/BaseWebView;->m_progressBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 135
    .local v3, "barW":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/glu/android/BaseWebView;->m_progressBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 136
    .local v2, "barH":I
    sub-int v13, v8, v2

    add-int/lit8 v6, v13, 0x1

    .line 137
    .local v6, "drawY":I
    if-eqz p2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/BaseWebView;->getScrollX()I

    move-result v11

    .line 138
    .local v11, "xOff":I
    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/BaseWebView;->getScrollY()I

    move-result v12

    .line 140
    .local v12, "yOff":I
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/glu/android/BaseWebView;->m_progressTimer:I

    mul-int/2addr v13, v3

    div-int/lit16 v13, v13, 0x3e8

    add-int/lit8 v14, v3, -0x1

    rem-int/2addr v13, v14

    sub-int v13, v3, v13

    neg-int v10, v13

    .local v10, "x":I
    :goto_2
    if-ge v10, v9, :cond_4

    .line 142
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/glu/android/BaseWebView;->m_progressBar:Landroid/graphics/drawable/Drawable;

    add-int v14, v10, v11

    add-int v15, v6, v12

    add-int v16, v10, v3

    add-int/lit8 v16, v16, -0x1

    add-int v16, v16, v11

    add-int v17, v6, v2

    add-int/lit8 v17, v17, -0x1

    add-int v17, v17, v12

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 143
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/glu/android/BaseWebView;->m_progressBar:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 140
    add-int/lit8 v13, v3, -0x1

    add-int/2addr v10, v13

    goto :goto_2

    .line 137
    .end local v10    # "x":I
    .end local v11    # "xOff":I
    .end local v12    # "yOff":I
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 138
    .restart local v11    # "xOff":I
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 146
    .restart local v10    # "x":I
    .restart local v12    # "yOff":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/BaseWebView;->invalidate()V

    .line 150
    .end local v1    # "ANIM_TIME":I
    .end local v2    # "barH":I
    .end local v3    # "barW":I
    .end local v4    # "curTime":J
    .end local v6    # "drawY":I
    .end local v10    # "x":I
    .end local v11    # "xOff":I
    .end local v12    # "yOff":I
    :goto_3
    return-void

    .line 149
    :cond_5
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/glu/android/BaseWebView;->m_progressLastTime:J

    goto :goto_3
.end method

.method protected abstract handleBackWithEmptyHistory()V
.end method

.method public onClosedByUser()V
    .locals 6

    .prologue
    .line 156
    const-string v1, "glu://close"

    const-string v2, "<html><body></body></html>"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const-string v5, "glu://close"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/glu/android/BaseWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/glu/android/BaseWebView;->clearHistory()V

    .line 158
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 40
    const/4 v4, 0x4

    if-ne p1, v4, :cond_5

    .line 42
    invoke-virtual {p0}, Lcom/glu/android/BaseWebView;->canGoBack()Z

    move-result v2

    .line 43
    .local v2, "trueCanGoBack":Z
    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/glu/android/BaseWebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, "glu://close"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    const/4 v2, 0x0

    .line 60
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 62
    invoke-virtual {p0}, Lcom/glu/android/BaseWebView;->goBack()V

    .line 63
    invoke-virtual {p0}, Lcom/glu/android/BaseWebView;->invalidate()V

    .line 73
    .end local v2    # "trueCanGoBack":Z
    :goto_1
    return v3

    .line 51
    .restart local v2    # "trueCanGoBack":Z
    :cond_1
    invoke-virtual {p0}, Lcom/glu/android/BaseWebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 52
    .local v0, "bfList":Landroid/webkit/WebBackForwardList;
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    .line 53
    .local v1, "curIdx":I
    if-lez v1, :cond_3

    .line 54
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0, v4}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, "glu://close"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    :goto_2
    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 56
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 67
    .end local v0    # "bfList":Landroid/webkit/WebBackForwardList;
    .end local v1    # "curIdx":I
    :cond_4
    invoke-virtual {p0}, Lcom/glu/android/BaseWebView;->handleBackWithEmptyHistory()V

    goto :goto_1

    .line 73
    .end local v2    # "trueCanGoBack":Z
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 78
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 80
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
