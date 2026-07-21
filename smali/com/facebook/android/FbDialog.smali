.class public Lcom/facebook/android/FbDialog;
.super Landroid/app/Dialog;
.source "FbDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/android/FbDialog$1;,
        Lcom/facebook/android/FbDialog$FbWebViewClient;
    }
.end annotation


# static fields
.field static final DIMENSIONS_LANDSCAPE:[F

.field static final DIMENSIONS_PORTRAIT:[F

.field static final DISPLAY_STRING:Ljava/lang/String; = "touch"

.field static final FB_BLUE:I = -0x927b4c

.field static final FB_ICON:Ljava/lang/String; = "icon.png"

.field static final FILL:Landroid/widget/FrameLayout$LayoutParams;

.field static final MARGIN:I = 0x4

.field static final PADDING:I = 0x2


# instance fields
.field private mContent:Landroid/widget/LinearLayout;

.field private mListener:Lcom/facebook/android/Facebook$DialogListener;

.field private mSpinner:Landroid/app/ProgressDialog;

.field private mTitle:Landroid/widget/TextView;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field private m_dismissHandledElsewhere:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x1

    .line 46
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/android/FbDialog;->DIMENSIONS_LANDSCAPE:[F

    .line 47
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/android/FbDialog;->DIMENSIONS_PORTRAIT:[F

    .line 48
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/android/FbDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    return-void

    .line 46
    :array_0
    .array-data 4
        0x43e60000    # 460.0f
        0x43820000    # 260.0f
    .end array-data

    .line 47
    :array_1
    .array-data 4
        0x438c0000    # 280.0f
        0x43d20000    # 420.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/facebook/android/Facebook$DialogListener;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/android/FbDialog;->m_dismissHandledElsewhere:Z

    .line 77
    iput-object p2, p0, Lcom/facebook/android/FbDialog;->mUrl:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/facebook/android/FbDialog;->mListener:Lcom/facebook/android/Facebook$DialogListener;

    .line 79
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/android/FbDialog;)Lcom/facebook/android/Facebook$DialogListener;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/android/FbDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mListener:Lcom/facebook/android/Facebook$DialogListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/facebook/android/FbDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/facebook/android/FbDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/facebook/android/FbDialog;->m_dismissHandledElsewhere:Z

    return p1
.end method

.method static synthetic access$300(Lcom/facebook/android/FbDialog;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/android/FbDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mSpinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/android/FbDialog;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/android/FbDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/android/FbDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/android/FbDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method private setUpTitle()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/android/FbDialog;->requestWindowFeature(I)Z

    .line 105
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/android/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    const-string v1, "Facebook"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 109
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    const v1, -0x927b4c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 110
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 111
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 112
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 114
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    return-void
.end method

.method private setUpWebView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/facebook/android/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    .line 119
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 120
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/facebook/android/FbDialog$FbWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/android/FbDialog$FbWebViewClient;-><init>(Lcom/facebook/android/FbDialog;Lcom/facebook/android/FbDialog$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 122
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 123
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/facebook/android/FbDialog;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    sget-object v1, Lcom/facebook/android/FbDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dialog dismissed. handled elsewhere="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/android/FbDialog;->m_dismissHandledElsewhere:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 71
    iget-boolean v0, p0, Lcom/facebook/android/FbDialog;->m_dismissHandledElsewhere:Z

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mListener:Lcom/facebook/android/Facebook$DialogListener;

    invoke-interface {v0}, Lcom/facebook/android/Facebook$DialogListener;->onCancel()V

    .line 73
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    .line 82
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 83
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/facebook/android/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/facebook/android/FbDialog;->mSpinner:Landroid/app/ProgressDialog;

    .line 84
    iget-object v3, p0, Lcom/facebook/android/FbDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 85
    iget-object v3, p0, Lcom/facebook/android/FbDialog;->mSpinner:Landroid/app/ProgressDialog;

    const-string v4, "Loading..."

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 87
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/android/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/facebook/android/FbDialog;->mContent:Landroid/widget/LinearLayout;

    .line 88
    iget-object v3, p0, Lcom/facebook/android/FbDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 89
    invoke-direct {p0}, Lcom/facebook/android/FbDialog;->setUpTitle()V

    .line 90
    invoke-direct {p0}, Lcom/facebook/android/FbDialog;->setUpWebView()V

    .line 91
    invoke-virtual {p0}, Lcom/facebook/android/FbDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 92
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {p0}, Lcom/facebook/android/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 93
    .local v2, "scale":F
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_0

    sget-object v0, Lcom/facebook/android/FbDialog;->DIMENSIONS_PORTRAIT:[F

    .line 96
    .local v0, "dimensions":[F
    :goto_0
    iget-object v3, p0, Lcom/facebook/android/FbDialog;->mContent:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, 0x0

    aget v5, v0, v5

    mul-float/2addr v5, v2

    add-float/2addr v5, v7

    float-to-int v5, v5

    aget v6, v0, v6

    mul-float/2addr v6, v2

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/facebook/android/FbDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    return-void

    .line 93
    .end local v0    # "dimensions":[F
    :cond_0
    sget-object v0, Lcom/facebook/android/FbDialog;->DIMENSIONS_LANDSCAPE:[F

    goto :goto_0
.end method
