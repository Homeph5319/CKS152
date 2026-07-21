.class public Lcom/glu/android/ResDownloadViewGroup;
.super Landroid/view/ViewGroup;
.source "ResDownloadViewGroup.java"


# static fields
.field private static final MESSAGE_REQUEST_LAYOUT:I = 0x1

.field public static final VIEW_COUNT:I = 0x2

.field public static final VIEW_DOWNLOAD_VIEW:I = 0x0

.field public static final VIEW_LARGE_AD:I = 0x1

.field public static instance:Lcom/glu/android/ResDownloadViewGroup;


# instance fields
.field public m_adVisible:Z

.field private m_layoutPending:Z

.field private m_viewManipulationHandler:Landroid/os/Handler;

.field public m_views:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/ResDownloadViewGroup;->instance:Lcom/glu/android/ResDownloadViewGroup;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/glu/android/ResDownloadViewGroup;->m_views:Ljava/util/Vector;

    .line 35
    iput-boolean v1, p0, Lcom/glu/android/ResDownloadViewGroup;->m_adVisible:Z

    .line 146
    iput-boolean v1, p0, Lcom/glu/android/ResDownloadViewGroup;->m_layoutPending:Z

    .line 171
    new-instance v0, Lcom/glu/android/ResDownloadViewGroup$1;

    invoke-direct {v0, p0}, Lcom/glu/android/ResDownloadViewGroup$1;-><init>(Lcom/glu/android/ResDownloadViewGroup;)V

    iput-object v0, p0, Lcom/glu/android/ResDownloadViewGroup;->m_viewManipulationHandler:Landroid/os/Handler;

    .line 43
    invoke-static {p0}, Lcom/glu/android/GluUtil;->doStandardViewGroupConfiguration(Landroid/view/ViewGroup;)V

    .line 45
    sput-object p0, Lcom/glu/android/ResDownloadViewGroup;->instance:Lcom/glu/android/ResDownloadViewGroup;

    .line 46
    return-void
.end method

.method private handlerRequestLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 149
    iget-boolean v0, p0, Lcom/glu/android/ResDownloadViewGroup;->m_layoutPending:Z

    if-eqz v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    iput-boolean v1, p0, Lcom/glu/android/ResDownloadViewGroup;->m_layoutPending:Z

    .line 153
    iget-object v0, p0, Lcom/glu/android/ResDownloadViewGroup;->m_viewManipulationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public hideAd()V
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/glu/android/Settings;->ADS_ENABLED:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/glu/android/ResDownloadViewGroup;->m_adVisible:Z

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/ResDownloadViewGroup;->m_adVisible:Z

    .line 63
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/glu/android/GluAds;->handledSetAdState(I)V

    .line 64
    invoke-direct {p0}, Lcom/glu/android/ResDownloadViewGroup;->handlerRequestLayout()V

    .line 66
    :cond_0
    return-void
.end method

.method public init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 75
    const-string v2, "initting RDVG"

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/glu/android/GluAds;->createResViewAds()V

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 82
    packed-switch v0, :pswitch_data_0

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not configured for adding to the ResDownloadViewGroup view vector. Expect a crash to happen eventually."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 78
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :pswitch_0
    iget-object v2, p0, Lcom/glu/android/ResDownloadViewGroup;->m_views:Ljava/util/Vector;

    invoke-static {}, Lcom/glu/android/GluAds;->getResDLAdView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 87
    invoke-static {v5}, Lcom/glu/android/GluAds;->handledSetAdState(I)V

    .line 104
    :goto_2
    iget-object v2, p0, Lcom/glu/android/ResDownloadViewGroup;->m_views:Ljava/util/Vector;

    iget-object v3, p0, Lcom/glu/android/ResDownloadViewGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Lcom/glu/android/ResDownloadViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 92
    :pswitch_1
    new-instance v1, Lcom/glu/android/ResFileDownloadView;

    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-direct {v1, v2}, Lcom/glu/android/ResFileDownloadView;-><init>(Landroid/content/Context;)V

    .line 93
    .local v1, "view":Lcom/glu/android/ResFileDownloadView;
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v2

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/glu/android/ResFileDownloadView;->init(II)V

    .line 94
    iget-object v2, p0, Lcom/glu/android/ResDownloadViewGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    .line 107
    .end local v1    # "view":Lcom/glu/android/ResFileDownloadView;
    :cond_0
    invoke-virtual {p0, v5}, Lcom/glu/android/ResDownloadViewGroup;->setVisibility(I)V

    .line 108
    invoke-virtual {p0, v4}, Lcom/glu/android/ResDownloadViewGroup;->setFocusable(Z)V

    .line 109
    invoke-virtual {p0, v4}, Lcom/glu/android/ResDownloadViewGroup;->setFocusableInTouchMode(Z)V

    .line 110
    invoke-virtual {p0, v4}, Lcom/glu/android/ResDownloadViewGroup;->setClickable(Z)V

    .line 111
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 165
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 166
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iput-boolean v1, v0, Lcom/glu/android/ResFileDownloadView;->m_backPressed:Z

    .line 168
    :cond_0
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v5, 0x0

    .line 115
    const-string v6, "RDVG layout..."

    invoke-static {v6}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 116
    iget-object v6, p0, Lcom/glu/android/ResDownloadViewGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v3

    .line 118
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_4

    .line 120
    iget-object v6, p0, Lcom/glu/android/ResDownloadViewGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 122
    .local v2, "child":Landroid/view/View;
    iget-boolean v6, p0, Lcom/glu/android/ResDownloadViewGroup;->m_adVisible:Z

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/glu/android/GluAds;->getResDLAdViewWidth()I

    move-result v1

    .line 123
    .local v1, "adWidth":I
    :goto_1
    iget-boolean v6, p0, Lcom/glu/android/ResDownloadViewGroup;->m_adVisible:Z

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/glu/android/GluAds;->getResDLAdViewHeight()I

    move-result v0

    .line 125
    .local v0, "adHeight":I
    :goto_2
    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    iget-boolean v6, p0, Lcom/glu/android/ResDownloadViewGroup;->m_adVisible:Z

    if-eqz v6, :cond_3

    .line 126
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v6

    sub-int/2addr v6, v1

    shr-int/lit8 v6, v6, 0x1

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v7

    sub-int/2addr v7, v0

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v8

    add-int/2addr v8, v1

    shr-int/lit8 v8, v8, 0x1

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v9

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 118
    :cond_0
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "adHeight":I
    .end local v1    # "adWidth":I
    :cond_1
    move v1, v5

    .line 122
    goto :goto_1

    .restart local v1    # "adWidth":I
    :cond_2
    move v0, v5

    .line 123
    goto :goto_2

    .line 127
    .restart local v0    # "adHeight":I
    :cond_3
    if-nez v4, :cond_0

    .line 128
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v6

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v7

    invoke-virtual {v2, v5, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    .line 131
    .end local v0    # "adHeight":I
    .end local v1    # "adWidth":I
    .end local v2    # "child":Landroid/view/View;
    :cond_4
    iput-boolean v5, p0, Lcom/glu/android/ResDownloadViewGroup;->m_layoutPending:Z

    .line 132
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 137
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v0

    .line 138
    .local v0, "maxHeight":I
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v1

    .line 141
    .local v1, "maxWidth":I
    invoke-virtual {p0, p1, p2}, Lcom/glu/android/ResDownloadViewGroup;->measureChildren(II)V

    .line 143
    invoke-static {v1, p1}, Lcom/glu/android/ResDownloadViewGroup;->resolveSize(II)I

    move-result v2

    invoke-static {v0, p2}, Lcom/glu/android/ResDownloadViewGroup;->resolveSize(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/glu/android/ResDownloadViewGroup;->setMeasuredDimension(II)V

    .line 144
    return-void
.end method

.method public showAd()V
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/glu/android/Settings;->ADS_ENABLED:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/glu/android/ResDownloadViewGroup;->m_adVisible:Z

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/ResDownloadViewGroup;->m_adVisible:Z

    .line 53
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/glu/android/GluAds;->handledSetAdState(I)V

    .line 54
    invoke-direct {p0}, Lcom/glu/android/ResDownloadViewGroup;->handlerRequestLayout()V

    .line 56
    :cond_0
    return-void
.end method

.method public tick(I)V
    .locals 0
    .param p1, "deltaMS"    # I

    .prologue
    .line 70
    invoke-static {p1}, Lcom/glu/android/GluAds;->tick(I)I

    .line 71
    return-void
.end method
