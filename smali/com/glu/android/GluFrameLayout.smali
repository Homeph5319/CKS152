.class public Lcom/glu/android/GluFrameLayout;
.super Landroid/widget/FrameLayout;
.source "GluFrameLayout.java"


# instance fields
.field public m_gameOverlayGroup:Lcom/glu/android/GluCanvasOverlayGroup;

.field public m_gameVideoView:Lcom/glu/android/GluVideoView;

.field public m_gameView:Lcom/glu/android/GluView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/high16 v1, -0x1000000

    invoke-virtual {p0, v1}, Lcom/glu/android/GluFrameLayout;->setBackgroundColor(I)V

    iput-object v0, p0, Lcom/glu/android/GluFrameLayout;->m_gameView:Lcom/glu/android/GluView;

    iput-object v0, p0, Lcom/glu/android/GluFrameLayout;->m_gameOverlayGroup:Lcom/glu/android/GluCanvasOverlayGroup;

    iput-object v0, p0, Lcom/glu/android/GluFrameLayout;->m_gameVideoView:Lcom/glu/android/GluVideoView;

    const v0, 0x402aaaab

    invoke-virtual {p0, v0}, Lcom/glu/android/GluFrameLayout;->setScaleX(F)V

    invoke-virtual {p0, v0}, Lcom/glu/android/GluFrameLayout;->setScaleY(F)V

    invoke-static {p0}, Lcom/glu/android/GluUtil;->doStandardViewGroupConfiguration(Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public initGameLayout()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/glu/android/GluView;

    sget-object v1, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-direct {v0, v1}, Lcom/glu/android/GluView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/glu/android/GluFrameLayout;->m_gameView:Lcom/glu/android/GluView;

    .line 29
    invoke-static {}, Lcom/glu/android/GluAds;->createGameViewAds()V

    .line 32
    new-instance v0, Lcom/glu/android/GluCanvasOverlayGroup;

    sget-object v1, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-direct {v0, v1}, Lcom/glu/android/GluCanvasOverlayGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/glu/android/GluFrameLayout;->m_gameOverlayGroup:Lcom/glu/android/GluCanvasOverlayGroup;

    .line 33
    iget-object v0, p0, Lcom/glu/android/GluFrameLayout;->m_gameOverlayGroup:Lcom/glu/android/GluCanvasOverlayGroup;

    invoke-virtual {v0}, Lcom/glu/android/GluCanvasOverlayGroup;->init()V

    .line 36
    new-instance v0, Lcom/glu/android/GluVideoView;

    sget-object v1, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-direct {v0, v1}, Lcom/glu/android/GluVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/glu/android/GluFrameLayout;->m_gameVideoView:Lcom/glu/android/GluVideoView;

    .line 38
    iget-object v0, p0, Lcom/glu/android/GluFrameLayout;->m_gameView:Lcom/glu/android/GluView;

    invoke-virtual {v0}, Lcom/glu/android/GluView;->init()V

    .line 40
    iget-object v0, p0, Lcom/glu/android/GluFrameLayout;->m_gameView:Lcom/glu/android/GluView;

    invoke-virtual {p0, v0}, Lcom/glu/android/GluFrameLayout;->addView(Landroid/view/View;)V

    .line 41
    iget-object v0, p0, Lcom/glu/android/GluFrameLayout;->m_gameVideoView:Lcom/glu/android/GluVideoView;

    invoke-virtual {p0, v0}, Lcom/glu/android/GluFrameLayout;->addView(Landroid/view/View;)V

    .line 42
    iget-object v0, p0, Lcom/glu/android/GluFrameLayout;->m_gameOverlayGroup:Lcom/glu/android/GluCanvasOverlayGroup;

    invoke-virtual {p0, v0}, Lcom/glu/android/GluFrameLayout;->addView(Landroid/view/View;)V

    .line 43
    sget-object v0, Lcom/glu/android/GlobalNav;->instance:Lcom/glu/android/GlobalNav;

    invoke-virtual {p0, v0}, Lcom/glu/android/GluFrameLayout;->addView(Landroid/view/View;)V

    .line 44
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/glu/android/GluFrameLayout;->m_gameView:Lcom/glu/android/GluView;

    if-eqz v0, :cond_0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    const/16 v3, 0x474

    const/16 v4, 0x21c

    sub-int v5, v1, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v6, v2, v4

    div-int/lit8 v6, v6, 0x2

    add-int v7, v5, v3

    add-int v8, v6, v4

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/glu/android/GluView;->layout(IIII)V

    :cond_0
    sget-object v9, Lcom/glu/android/GluVideoView;->instance:Lcom/glu/android/GluVideoView;

    if-eqz v9, :cond_1

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    const/16 v3, 0x474

    const/16 v4, 0x21c

    sub-int v5, v1, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v6, v2, v4

    div-int/lit8 v6, v6, 0x2

    add-int v7, v5, v3

    add-int v8, v6, v4

    invoke-virtual {v9, v5, v6, v7, v8}, Lcom/glu/android/GluVideoView;->layout(IIII)V

    :cond_1
    sget-object v9, Lcom/glu/android/DMAVideoView;->instance:Lcom/glu/android/DMAVideoView;

    if-eqz v9, :cond_2

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    const/16 v3, 0x474

    const/16 v4, 0x21c

    sub-int v5, v1, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v6, v2, v4

    div-int/lit8 v6, v6, 0x2

    add-int v7, v5, v3

    add-int v8, v6, v4

    invoke-virtual {v9, v5, v6, v7, v8}, Lcom/glu/android/DMAVideoView;->layout(IIII)V

    :cond_2
    return-void
.end method
