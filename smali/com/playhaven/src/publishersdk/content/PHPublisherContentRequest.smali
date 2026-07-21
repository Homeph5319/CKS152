.class public Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
.super Lcom/playhaven/src/common/PHAPIRequest;
.source "PHPublisherContentRequest.java"

# interfaces
.implements Lcom/playhaven/src/publishersdk/content/PHContentView$PHContentViewDelegate;
.implements Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$3;,
        Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;,
        Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardDelegate;,
        Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHCustomizeDelegate;,
        Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHFailureDelegate;,
        Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;,
        Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;,
        Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;
    }
.end annotation


# static fields
.field private static final CLOSE_BTN_TIMEOUT:I = 0xfa0


# instance fields
.field private final CLOSE_MARGIN:I

.field private closeBtn:Landroid/widget/ImageButton;

.field private closeBtnDelay:Landroid/os/Handler;

.field private closeBtnDelayRunnable:Ljava/lang/Runnable;

.field private content:Lcom/playhaven/src/publishersdk/content/PHContent;

.field private contentViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/playhaven/src/publishersdk/content/PHContentView;",
            ">;"
        }
    .end annotation
.end field

.field private content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;

.field private context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private customize_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHCustomizeDelegate;

.field private failure_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHFailureDelegate;

.field public isAnimated:Z

.field public placement:Ljava/lang/String;

.field private reward_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardDelegate;

.field private showsOverlayImmediately:Z

.field private state:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

.field private targetState:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;


# direct methods
.method public constructor <init>(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 154
    invoke-direct {p0, p1}, Lcom/playhaven/src/common/PHAPIRequest;-><init>(Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;)V

    .line 37
    iput-boolean v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->isAnimated:Z

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->showsOverlayImmediately:Z

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->contentViews:Ljava/util/ArrayList;

    .line 58
    const/16 v0, 0xa

    iput v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->CLOSE_MARGIN:I

    .line 155
    invoke-direct {p0, p1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->setDelegates(Ljava/lang/Object;)V

    .line 157
    iput-boolean v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->isAnimated:Z

    .line 158
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->context:Ljava/lang/ref/WeakReference;

    .line 159
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->Initialized:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    invoke-virtual {p0, v0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->setState(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;-><init>(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;Landroid/app/Activity;)V

    .line 150
    iput-object p3, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->placement:Ljava/lang/String;

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->buttonDismiss()V

    return-void
.end method

.method static synthetic access$100(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->showCloseButton()V

    return-void
.end method

.method public static appStateChangeDismiss(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)V
    .locals 0

    .prologue
    .line 277
    if-eqz p0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->appStateChangeDismiss()V

    .line 279
    :cond_0
    return-void
.end method

.method private buttonDismiss()V
    .locals 3

    .prologue
    .line 282
    const-string v0, "The content unit was dismissed by the user"

    invoke-static {v0}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->contentViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/playhaven/src/publishersdk/content/PHContentView;

    .line 288
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/playhaven/src/publishersdk/content/PHContentView;->delegate:Lcom/playhaven/src/publishersdk/content/PHContentView$PHContentViewDelegate;

    .line 289
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView;->dismiss(Z)V

    .line 291
    invoke-direct {p0, v0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->removeContentView(Lcom/playhaven/src/publishersdk/content/PHContentView;)V

    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->CloseButtonTriggered:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    invoke-interface {v0, p0, v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;->didDismissContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;)V

    .line 298
    :cond_1
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->finish()V

    .line 299
    return-void
.end method

.method private continueLoading()V
    .locals 2

    .prologue
    .line 444
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$3;->$SwitchMap$com$playhaven$src$publishersdk$content$PHPublisherContentRequest$PHRequestState:[I

    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->state:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 452
    :goto_0
    return-void

    .line 446
    :pswitch_0
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->loadContent()V

    goto :goto_0

    .line 449
    :pswitch_1
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->showContent()V

    goto :goto_0

    .line 444
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getCloseBtn()Landroid/widget/ImageButton;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 213
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->closeBtn:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 217
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 219
    invoke-static {}, Lcom/playhaven/resources/PHResourceManager;->sharedResourceManager()Lcom/playhaven/resources/PHResourceManager;

    move-result-object v0

    const-string v1, "close_inactive"

    invoke-virtual {v0, v1}, Lcom/playhaven/resources/PHResourceManager;->getResource(Ljava/lang/String;)Lcom/playhaven/resources/PHResource;

    move-result-object v0

    check-cast v0, Lcom/playhaven/resources/files/PHCloseImageResource;

    .line 220
    invoke-static {}, Lcom/playhaven/resources/PHResourceManager;->sharedResourceManager()Lcom/playhaven/resources/PHResourceManager;

    move-result-object v1

    const-string v3, "close_active"

    invoke-virtual {v1, v3}, Lcom/playhaven/resources/PHResourceManager;->getResource(Ljava/lang/String;)Lcom/playhaven/resources/PHResource;

    move-result-object v1

    check-cast v1, Lcom/playhaven/resources/files/PHCloseActiveImageResource;

    .line 222
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/playhaven/src/common/PHConstants;->getScreenDensityType()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/playhaven/resources/files/PHCloseImageResource;->loadImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 223
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/playhaven/src/common/PHConstants;->getScreenDensityType()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/playhaven/resources/files/PHCloseActiveImageResource;->loadImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 225
    new-array v1, v6, [I

    const v4, 0x10100a7

    aput v4, v1, v5

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 226
    new-array v0, v6, [I

    const v1, 0x101009e

    aput v1, v0, v5

    invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 228
    new-instance v1, Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->closeBtn:Landroid/widget/ImageButton;

    .line 229
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->closeBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->closeBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->closeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->closeBtn:Landroid/widget/ImageButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 240
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->closeBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$1;

    invoke-direct {v1, p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$1;-><init>(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->closeBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public static getExistingRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    .locals 3

    .prologue
    .line 189
    invoke-static {}, Lcom/playhaven/src/common/PHAPIRequest;->getAllRequests()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/playhaven/src/common/PHAPIRequest;

    .line 190
    instance-of v2, v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    if-eqz v2, :cond_0

    .line 191
    check-cast v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    .line 193
    iget-object v2, v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->placement:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->token:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->secret:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideCloseButton()V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->closeBtnDelay:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->closeBtnDelay:Landroid/os/Handler;

    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->closeBtnDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->closeBtn:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 412
    return-void
.end method

.method private loadContent()V
    .locals 1

    .prologue
    .line 422
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->Preloading:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    invoke-virtual {p0, v0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->setState(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;)V

    .line 423
    invoke-super {p0}, Lcom/playhaven/src/common/PHAPIRequest;->send()V

    .line 425
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;

    invoke-interface {v0, p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;->willGetContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)V

    .line 429
    :cond_0
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->placeCloseButton()V

    .line 430
    return-void
.end method

.method private placeCloseButton()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    const/high16 v1, 0x41200000    # 10.0f

    .line 306
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/playhaven/src/common/PHConstants;->getDeviceOrientation(Landroid/content/Context;)I

    .line 310
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 311
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 320
    invoke-static {v1}, Lcom/playhaven/src/common/PHConstants;->dipToPixels(F)F

    move-result v2

    .line 321
    invoke-static {v1}, Lcom/playhaven/src/common/PHConstants;->dipToPixels(F)F

    move-result v3

    .line 324
    const/4 v0, 0x0

    .line 325
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->contentViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 327
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->contentViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->contentViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/playhaven/src/publishersdk/content/PHContentView;

    move-object v1, v0

    .line 361
    :goto_0
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->getCloseBtn()Landroid/widget/ImageButton;

    move-result-object v4

    .line 362
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 363
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 366
    float-to-int v3, v3

    float-to-int v2, v2

    invoke-virtual {v0, v6, v3, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 367
    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    if-eqz v1, :cond_1

    .line 374
    invoke-virtual {v4}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {v4}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 376
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 379
    :cond_0
    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 385
    :cond_1
    return-void

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private pushContent(Lcom/playhaven/src/publishersdk/content/PHContent;)V
    .locals 3

    .prologue
    .line 571
    :try_start_0
    invoke-static {}, Lcom/playhaven/src/publishersdk/content/PHContentView;->dequeueContentView()Lcom/playhaven/src/publishersdk/content/PHContentView;

    move-result-object v0

    .line 572
    if-nez v0, :cond_1

    .line 573
    new-instance v1, Lcom/playhaven/src/publishersdk/content/PHContentView;

    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0, p1, p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;-><init>(Landroid/app/Activity;Lcom/playhaven/src/publishersdk/content/PHContent;Lcom/playhaven/src/publishersdk/content/PHContentView$PHContentViewDelegate;)V

    move-object v0, v1

    .line 580
    :cond_0
    :goto_0
    const-string v1, "ph://reward"

    const-string v2, "handleRewards"

    invoke-virtual {v0, v1, p0, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView;->redirectRequest(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    const-string v1, "ph://subcontent"

    const-string v2, "sendSubrequest"

    invoke-virtual {v0, v1, p0, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView;->redirectRequest(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    const-string v1, "ph://closeButton"

    const-string v2, "handleCloseButton"

    invoke-virtual {v0, v1, p0, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView;->redirectRequest(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 583
    invoke-virtual {v0, p1}, Lcom/playhaven/src/publishersdk/content/PHContentView;->setContent(Lcom/playhaven/src/publishersdk/content/PHContent;)V

    .line 584
    iput-object p0, v0, Lcom/playhaven/src/publishersdk/content/PHContentView;->delegate:Lcom/playhaven/src/publishersdk/content/PHContentView$PHContentViewDelegate;

    .line 585
    invoke-virtual {v0, p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->setCreator(Ljava/lang/Object;)V

    .line 588
    iget-boolean v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->showsOverlayImmediately:Z

    iput-boolean v1, v0, Lcom/playhaven/src/publishersdk/content/PHContentView;->showsOverlayImmediately:Z

    .line 590
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->contentViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    invoke-virtual {v0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->show()V

    .line 593
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->placeCloseButton()V

    .line 598
    :goto_1
    return-void

    .line 574
    :cond_1
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 576
    const-string v0, "Old context has expired."

    invoke-static {v0}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 577
    new-instance v1, Lcom/playhaven/src/publishersdk/content/PHContentView;

    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0, p1, p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;-><init>(Landroid/app/Activity;Lcom/playhaven/src/publishersdk/content/PHContent;Lcom/playhaven/src/publishersdk/content/PHContentView$PHContentViewDelegate;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 594
    :catch_0
    move-exception v0

    .line 595
    const-string v1, "Error opening content view. Giving up this time around..."

    invoke-static {v1}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 596
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private removeContentView(Lcom/playhaven/src/publishersdk/content/PHContentView;)V
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->contentViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 602
    invoke-static {p1}, Lcom/playhaven/src/publishersdk/content/PHContentView;->enqueueContentView(Lcom/playhaven/src/publishersdk/content/PHContentView;)V

    .line 603
    return-void
.end method

.method private setDelegates(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 134
    instance-of v0, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardDelegate;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 135
    check-cast v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardDelegate;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->reward_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardDelegate;

    .line 137
    :cond_0
    instance-of v0, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHCustomizeDelegate;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 138
    check-cast v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHCustomizeDelegate;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->customize_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHCustomizeDelegate;

    .line 140
    :cond_1
    instance-of v0, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHFailureDelegate;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 141
    check-cast v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHFailureDelegate;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->failure_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHFailureDelegate;

    .line 143
    :cond_2
    instance-of v0, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;

    if-eqz v0, :cond_3

    .line 144
    check-cast p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;

    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;

    .line 145
    :cond_3
    return-void
.end method

.method private showCloseAfterTimeout(I)V
    .locals 4

    .prologue
    .line 389
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->closeBtnDelay:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->closeBtnDelay:Landroid/os/Handler;

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->closeBtnDelay:Landroid/os/Handler;

    new-instance v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$2;

    invoke-direct {v1, p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$2;-><init>(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 399
    return-void
.end method

.method private showCloseButton()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->closeBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->closeBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 405
    :cond_0
    return-void
.end method

.method private showContent()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->targetState:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->DisplayingContent:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->targetState:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->Done:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    if-ne v0, v1, :cond_2

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;

    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    invoke-interface {v0, p0, v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;->willDisplayContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHContent;)V

    .line 438
    :cond_1
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->DisplayingContent:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    invoke-virtual {p0, v0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->setState(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;)V

    .line 439
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    invoke-direct {p0, v0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->pushContent(Lcom/playhaven/src/publishersdk/content/PHContent;)V

    .line 441
    :cond_2
    return-void
.end method


# virtual methods
.method public appStateChangeDismiss()V
    .locals 3

    .prologue
    .line 256
    const-string v0, "The content unit was dismissed because the activity was destroyed"

    invoke-static {v0}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->contentViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/playhaven/src/publishersdk/content/PHContentView;

    .line 260
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/playhaven/src/publishersdk/content/PHContentView;->delegate:Lcom/playhaven/src/publishersdk/content/PHContentView$PHContentViewDelegate;

    .line 261
    invoke-virtual {v0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->dismiss()V

    .line 263
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->contentViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 266
    :cond_0
    invoke-static {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->clearContentView(Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->ApplicationTriggered:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    invoke-interface {v0, p0, v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;->didDismissContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;)V

    .line 271
    :cond_1
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->finish()V

    .line 272
    return-void
.end method

.method public baseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    const-string v0, "/v3/publisher/content/"

    invoke-static {v0}, Lcom/playhaven/src/common/PHConstants;->phURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public borderColor(Lcom/playhaven/src/publishersdk/content/PHContentView;)I
    .locals 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->customize_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHCustomizeDelegate;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->customize_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHCustomizeDelegate;

    invoke-virtual {p1}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getContent()Lcom/playhaven/src/publishersdk/content/PHContent;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHCustomizeDelegate;->borderColor(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHContent;)I

    move-result v0

    .line 721
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public closeButton(Lcom/playhaven/src/publishersdk/content/PHContentView;I)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->customize_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHCustomizeDelegate;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->customize_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHCustomizeDelegate;

    invoke-interface {v0, p0, p2}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHCustomizeDelegate;->closeButton(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 712
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public didDismiss(Lcom/playhaven/src/publishersdk/content/PHContentView;)V
    .locals 2

    .prologue
    .line 693
    invoke-direct {p0, p1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->removeContentView(Lcom/playhaven/src/publishersdk/content/PHContentView;)V

    .line 695
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->ContentUnitTriggered:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    invoke-interface {v0, p0, v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;->didDismissContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;)V

    .line 698
    :cond_0
    return-void
.end method

.method public didFail(Lcom/playhaven/src/publishersdk/content/PHContentView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 701
    invoke-direct {p0, p1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->removeContentView(Lcom/playhaven/src/publishersdk/content/PHContentView;)V

    .line 703
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->failure_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHFailureDelegate;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->failure_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHFailureDelegate;

    invoke-interface {v0, p0, p2}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHFailureDelegate;->didFail(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Ljava/lang/String;)V

    .line 705
    :cond_0
    return-void
.end method

.method public didLoad(Lcom/playhaven/src/publishersdk/content/PHContentView;)V
    .locals 2

    .prologue
    .line 688
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;

    invoke-virtual {p1}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getContent()Lcom/playhaven/src/publishersdk/content/PHContent;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;->didDisplayContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHContent;)V

    .line 690
    :cond_0
    return-void
.end method

.method public didShow(Lcom/playhaven/src/publishersdk/content/PHContentView;)V
    .locals 0

    .prologue
    .line 684
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 474
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->Done:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    invoke-virtual {p0, v0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->setState(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;)V

    .line 476
    invoke-static {p0}, Lcom/playhaven/src/common/PHAPIRequest;->cancelRequests(Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;)V

    .line 479
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->hideCloseButton()V

    .line 482
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->closeBtnDelay:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->closeBtnDelay:Landroid/os/Handler;

    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->closeBtnDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 484
    :cond_0
    invoke-super {p0}, Lcom/playhaven/src/common/PHAPIRequest;->finish()V

    .line 485
    return-void
.end method

.method public getAdditionalParams()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 497
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 498
    const-string v1, "placement_id"

    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->placement:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    return-object v0
.end method

.method public getContentViews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/playhaven/src/publishersdk/content/PHContentView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 490
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->contentViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOverlayImmediately()Z
    .locals 1

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->showsOverlayImmediately:Z

    return v0
.end method

.method public getState()Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->state:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    return-object v0
.end method

.method public handleCloseButton(Lorg/json/JSONObject;Ljava/lang/String;Lcom/playhaven/src/publishersdk/content/PHContentView;)V
    .locals 3

    .prologue
    .line 633
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->closeBtnDelay:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->closeBtnDelay:Landroid/os/Handler;

    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->closeBtnDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 635
    :cond_0
    const-string v0, "hidden"

    invoke-static {p1, v0}, Lcom/playhaven/src/additions/ObjectExtensions$JSONExtensions;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Close button should hide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 637
    if-eqz v0, :cond_1

    .line 638
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->closeBtn:Landroid/widget/ImageButton;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 640
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 644
    const-string v2, "hidden"

    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->closeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "false"

    :goto_1
    invoke-static {v1, v2, v0}, Lcom/playhaven/src/additions/ObjectExtensions$JSONExtensions;->setJSONString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const/4 v0, 0x0

    invoke-virtual {p3, p2, v1, v0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->sendCallback(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 646
    return-void

    .line 638
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 644
    :cond_3
    const-string v0, "true"

    goto :goto_1
.end method

.method protected handleRequestSuccess(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Main content request succeeded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 506
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContent;

    invoke-direct {v0}, Lcom/playhaven/src/publishersdk/content/PHContent;-><init>()V

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    .line 507
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    invoke-virtual {v0, p1}, Lcom/playhaven/src/publishersdk/content/PHContent;->fromJSON(Lorg/json/JSONObject;)Z

    move-result v0

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing initial content request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 513
    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;

    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    invoke-interface {v0, p0, v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;->willDisplayContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHContent;)V

    .line 517
    :cond_0
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->Preloaded:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    invoke-virtual {p0, v0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->setState(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;)V

    .line 519
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->continueLoading()V

    .line 524
    :goto_0
    return-void

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->delegate:Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;

    new-instance v1, Lorg/json/JSONException;

    const-string v2, "Couldn\'t parse respone into PHContent"

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;->requestFailed(Lcom/playhaven/src/common/PHAPIRequest;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public handleRewards(Lorg/json/JSONObject;Ljava/lang/String;Lcom/playhaven/src/publishersdk/content/PHContentView;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 649
    const-string v0, "rewards"

    invoke-static {p1, v0}, Lcom/playhaven/src/additions/ObjectExtensions$JSONExtensions;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 650
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 651
    invoke-static {v1, v0}, Lcom/playhaven/src/additions/ObjectExtensions$JSONExtensions;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    .line 653
    invoke-virtual {p0, v2}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->validateReward(Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 654
    new-instance v3, Lcom/playhaven/src/publishersdk/content/PHReward;

    invoke-direct {v3}, Lcom/playhaven/src/publishersdk/content/PHReward;-><init>()V

    .line 655
    sget-object v4, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;->IDKey:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;

    invoke-virtual {v4}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;->key()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/playhaven/src/additions/ObjectExtensions$JSONExtensions;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/playhaven/src/publishersdk/content/PHReward;->name:Ljava/lang/String;

    .line 656
    sget-object v4, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;->QuantityKey:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;

    invoke-virtual {v4}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;->key()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/playhaven/src/additions/ObjectExtensions$JSONExtensions;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/playhaven/src/publishersdk/content/PHReward;->quantity:Ljava/lang/String;

    .line 657
    sget-object v4, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;->ReceiptKey:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;

    invoke-virtual {v4}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;->key()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/playhaven/src/additions/ObjectExtensions$JSONExtensions;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/playhaven/src/publishersdk/content/PHReward;->receipt:Ljava/lang/String;

    .line 659
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->reward_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardDelegate;

    if-eqz v2, :cond_0

    .line 660
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->reward_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardDelegate;

    invoke-interface {v2, p0, v3}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardDelegate;->unlockedReward(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHReward;)V

    .line 650
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 664
    :cond_1
    invoke-virtual {p3, p2, v5, v5}, Lcom/playhaven/src/publishersdk/content/PHContentView;->sendCallback(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 665
    return-void
.end method

.method public preload()V
    .locals 1

    .prologue
    .line 417
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->Preloaded:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->targetState:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    .line 418
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->continueLoading()V

    .line 419
    return-void
.end method

.method public requestFailed(Lcom/playhaven/src/common/PHAPIRequest;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 559
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 560
    const-string v1, "error"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 561
    check-cast p1, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;

    .line 563
    iget-object v1, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;->source:Lcom/playhaven/src/publishersdk/content/PHContentView;

    iget-object v2, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;->callback:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->sendCallback(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    :goto_0
    return-void

    .line 564
    :catch_0
    move-exception v0

    .line 565
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestSucceeded(Lcom/playhaven/src/common/PHAPIRequest;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 531
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContent;

    invoke-direct {v0}, Lcom/playhaven/src/publishersdk/content/PHContent;-><init>()V

    .line 532
    invoke-virtual {v0, p2}, Lcom/playhaven/src/publishersdk/content/PHContent;->fromJSON(Lorg/json/JSONObject;)Z

    move-result v1

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse content success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 535
    check-cast p1, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;

    .line 536
    const-string v2, "Subrequest succeeded..."

    invoke-static {v2}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 537
    if-eqz v1, :cond_1

    .line 538
    invoke-direct {p0, v0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->pushContent(Lcom/playhaven/src/publishersdk/content/PHContent;)V

    .line 540
    iget-object v0, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;->source:Lcom/playhaven/src/publishersdk/content/PHContentView;

    iget-object v1, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;->callback:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView;->sendCallback(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 545
    const-string v1, "error"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 546
    iget-object v1, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;->source:Lcom/playhaven/src/publishersdk/content/PHContentView;

    iget-object v2, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;->callback:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, v0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->sendCallback(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 548
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->NoContentTriggered:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    invoke-interface {v0, p0, v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;->didDismissContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 551
    :catch_0
    move-exception v0

    .line 552
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public send()V
    .locals 1

    .prologue
    .line 460
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->DisplayingContent:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->targetState:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    .line 464
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;

    invoke-interface {v0, p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;->willGetContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)V

    .line 467
    :cond_0
    const/16 v0, 0xfa0

    invoke-direct {p0, v0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->showCloseAfterTimeout(I)V

    .line 469
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->continueLoading()V

    .line 470
    return-void
.end method

.method public sendSubrequest(Lorg/json/JSONObject;Ljava/lang/String;Lcom/playhaven/src/publishersdk/content/PHContentView;)V
    .locals 2

    .prologue
    .line 669
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;

    invoke-direct {v0, p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;-><init>(Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;)V

    .line 670
    const-string v1, "url"

    invoke-static {p1, v1}, Lcom/playhaven/src/additions/ObjectExtensions$JSONExtensions;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;->setBaseURL(Ljava/lang/String;)V

    .line 671
    iput-object p2, v0, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;->callback:Ljava/lang/String;

    .line 672
    iput-object p3, v0, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;->source:Lcom/playhaven/src/publishersdk/content/PHContentView;

    .line 674
    invoke-virtual {v0}, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;->send()V

    .line 675
    return-void
.end method

.method public setOverlayImmediately(Z)V
    .locals 0

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->showsOverlayImmediately:Z

    .line 169
    return-void
.end method

.method public setState(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->state:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->state:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    .line 175
    :cond_0
    invoke-virtual {p1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->state:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 176
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->state:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    .line 178
    :cond_1
    return-void
.end method

.method public validateReward(Lorg/json/JSONObject;)Z
    .locals 7

    .prologue
    .line 609
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;->IDKey:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;

    invoke-virtual {v0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;->key()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/playhaven/src/additions/ObjectExtensions$JSONExtensions;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 610
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;->QuantityKey:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;->key()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/playhaven/src/additions/ObjectExtensions$JSONExtensions;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 611
    sget-object v2, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;->ReceiptKey:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;

    invoke-virtual {v2}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;->key()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/playhaven/src/additions/ObjectExtensions$JSONExtensions;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 612
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receipt for reward unlock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 613
    sget-object v3, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;->SignatureKey:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;

    invoke-virtual {v3}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;->key()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/playhaven/src/additions/ObjectExtensions$JSONExtensions;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 615
    const-string v4, "%s:%s:%s:%s:%s"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    invoke-static {}, Lcom/playhaven/src/common/PHConstants;->getUniqueID()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x3

    aput-object v2, v5, v0

    const/4 v0, 0x4

    invoke-static {}, Lcom/playhaven/src/common/PHConstants;->getSecret()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generated signature for reward: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 623
    invoke-static {v0}, Lcom/playhaven/src/common/PHStringUtil;->hexDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 626
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
