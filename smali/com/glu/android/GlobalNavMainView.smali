.class public Lcom/glu/android/GlobalNavMainView;
.super Lcom/glu/android/BaseWebView;
.source "GlobalNavMainView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/glu/android/GlobalNavMainView$1;,
        Lcom/glu/android/GlobalNavMainView$GNWebViewClient;
    }
.end annotation


# static fields
.field public static FONT_SIZE:I = 0x0

.field public static ROUND_EDGE_RADIUS:I = 0x0

.field public static ROUND_RECT_MARGIN:I = 0x0

.field public static ROUND_RECT_PADDING:I = 0x0

.field public static SECTION_TOP_MARGIN:I = 0x0

.field public static final g1_FONT_SIZE:I = 0xf

.field public static final g1_ROUND_EDGE_RADIUS:I = 0x6

.field public static final g1_ROUND_RECT_MARGIN:I = 0x12

.field public static final g1_ROUND_RECT_PADDING:I = 0x9

.field public static final g1_SECTION_TOP_MARGIN:I = 0x14


# instance fields
.field public m_aboutHeader:Ljava/lang/String;

.field public m_aboutText:Ljava/lang/String;

.field private m_fullSettingsViewHeight:I

.field private m_gingerbreadHackScroll:I

.field private m_hackScrollLastY:I

.field public m_headerPaint:Landroid/graphics/Paint;

.field public m_headerPaint2:Landroid/graphics/Paint;

.field public m_roundRectPaint:Landroid/graphics/Paint;

.field public m_scrollOffset:I

.field public m_textPaint:Landroid/graphics/Paint;

.field private m_visibleViewHeight:I

.field public m_wrappedAboutText:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x12

    .line 38
    const/16 v0, 0x9

    sput v0, Lcom/glu/android/GlobalNavMainView;->ROUND_RECT_PADDING:I

    .line 39
    sput v1, Lcom/glu/android/GlobalNavMainView;->ROUND_RECT_MARGIN:I

    .line 40
    sput v1, Lcom/glu/android/GlobalNavMainView;->ROUND_EDGE_RADIUS:I

    .line 41
    const/16 v0, 0x14

    sput v0, Lcom/glu/android/GlobalNavMainView;->SECTION_TOP_MARGIN:I

    .line 42
    sput v1, Lcom/glu/android/GlobalNavMainView;->FONT_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 55
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-direct {p0, v0}, Lcom/glu/android/BaseWebView;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object v1, p0, Lcom/glu/android/GlobalNavMainView;->m_textPaint:Landroid/graphics/Paint;

    .line 46
    iput-object v1, p0, Lcom/glu/android/GlobalNavMainView;->m_headerPaint:Landroid/graphics/Paint;

    .line 47
    iput-object v1, p0, Lcom/glu/android/GlobalNavMainView;->m_headerPaint2:Landroid/graphics/Paint;

    .line 48
    iput-object v1, p0, Lcom/glu/android/GlobalNavMainView;->m_aboutText:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/glu/android/GlobalNavMainView;->m_wrappedAboutText:Ljava/util/Vector;

    .line 50
    iput-object v1, p0, Lcom/glu/android/GlobalNavMainView;->m_roundRectPaint:Landroid/graphics/Paint;

    .line 51
    iput-object v1, p0, Lcom/glu/android/GlobalNavMainView;->m_aboutHeader:Ljava/lang/String;

    .line 164
    iput v3, p0, Lcom/glu/android/GlobalNavMainView;->m_scrollOffset:I

    .line 165
    iput v2, p0, Lcom/glu/android/GlobalNavMainView;->m_visibleViewHeight:I

    .line 166
    iput v2, p0, Lcom/glu/android/GlobalNavMainView;->m_fullSettingsViewHeight:I

    .line 169
    iput v3, p0, Lcom/glu/android/GlobalNavMainView;->m_gingerbreadHackScroll:I

    .line 214
    iput v3, p0, Lcom/glu/android/GlobalNavMainView;->m_hackScrollLastY:I

    .line 57
    const-string v0, "~~ GlobalNavMainView created"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 59
    const/16 v0, 0x4b1

    invoke-virtual {p0, v0}, Lcom/glu/android/GlobalNavMainView;->setId(I)V

    .line 60
    new-instance v0, Lcom/glu/android/GlobalNavMainView$GNWebViewClient;

    invoke-direct {v0, p0, v1}, Lcom/glu/android/GlobalNavMainView$GNWebViewClient;-><init>(Lcom/glu/android/GlobalNavMainView;Lcom/glu/android/GlobalNavMainView$1;)V

    invoke-virtual {p0, v0}, Lcom/glu/android/GlobalNavMainView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 61
    invoke-direct {p0}, Lcom/glu/android/GlobalNavMainView;->scaleLayoutConstants()V

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GlobalNavMainView;->m_textPaint:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcom/glu/android/GlobalNavMainView;->m_textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget-object v0, p0, Lcom/glu/android/GlobalNavMainView;->m_textPaint:Landroid/graphics/Paint;

    sget v1, Lcom/glu/android/GlobalNavMainView;->FONT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 66
    iget-object v0, p0, Lcom/glu/android/GlobalNavMainView;->m_textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 67
    iget-object v0, p0, Lcom/glu/android/GlobalNavMainView;->m_textPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/glu/android/GlobalNavMainView;->m_textPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/glu/android/GlobalNavMainView;->m_headerPaint:Landroid/graphics/Paint;

    .line 70
    iget-object v0, p0, Lcom/glu/android/GlobalNavMainView;->m_headerPaint:Landroid/graphics/Paint;

    const v1, -0xcfcfd0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v0, p0, Lcom/glu/android/GlobalNavMainView;->m_headerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 72
    iget-object v0, p0, Lcom/glu/android/GlobalNavMainView;->m_headerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/glu/android/GlobalNavMainView;->m_headerPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/glu/android/GlobalNavMainView;->m_headerPaint2:Landroid/graphics/Paint;

    .line 74
    iget-object v0, p0, Lcom/glu/android/GlobalNavMainView;->m_headerPaint2:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GlobalNavMainView;->m_roundRectPaint:Landroid/graphics/Paint;

    .line 77
    iget-object v0, p0, Lcom/glu/android/GlobalNavMainView;->m_roundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    iget-object v0, p0, Lcom/glu/android/GlobalNavMainView;->m_roundRectPaint:Landroid/graphics/Paint;

    const v1, -0x5f000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    const v0, 0x7f070034

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glu/android/GlobalNavMainView;->m_aboutHeader:Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/glu/android/GNSWidgetCollection;

    sget v1, Lcom/glu/android/GlobalNav;->DIALOG_WIDTH:I

    sget v2, Lcom/glu/android/GlobalNavMainView;->ROUND_RECT_PADDING:I

    shl-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    sget v2, Lcom/glu/android/GlobalNavMainView;->SECTION_TOP_MARGIN:I

    invoke-direct {v0, v1, v2}, Lcom/glu/android/GNSWidgetCollection;-><init>(II)V

    .line 83
    return-void
.end method

.method private final getTextAreaHeight()I
    .locals 2

    .prologue
    .line 197
    sget v0, Lcom/glu/android/GlobalNavMainView;->FONT_SIZE:I

    iget-object v1, p0, Lcom/glu/android/GlobalNavMainView;->m_wrappedAboutText:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method private final getTextAreaWidth()I
    .locals 2

    .prologue
    .line 203
    sget v0, Lcom/glu/android/GlobalNav;->DIALOG_WIDTH:I

    sget v1, Lcom/glu/android/GlobalNavMainView;->ROUND_RECT_PADDING:I

    shl-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    sget v1, Lcom/glu/android/GlobalNavMainView;->ROUND_RECT_MARGIN:I

    shl-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method private scaleLayoutConstants()V
    .locals 1

    .prologue
    .line 87
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GlobalNavMainView;->ROUND_RECT_PADDING:I

    .line 88
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GlobalNavMainView;->ROUND_RECT_MARGIN:I

    .line 89
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GlobalNavMainView;->ROUND_EDGE_RADIUS:I

    .line 90
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GlobalNavMainView;->FONT_SIZE:I

    .line 91
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GlobalNavMainView;->SECTION_TOP_MARGIN:I

    .line 92
    return-void
.end method

.method private shouldFixBrokenSettingsScroll()Z
    .locals 2

    .prologue
    .line 245
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget v0, v0, Lcom/glu/android/GameLet;->m_platformVersionI:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public calculateSettingsViewHeight()I
    .locals 3

    .prologue
    .line 188
    sget v1, Lcom/glu/android/GlobalNavMainView;->ROUND_RECT_PADDING:I

    shl-int/lit8 v1, v1, 0x1

    sget v2, Lcom/glu/android/GlobalNavMainView;->ROUND_RECT_MARGIN:I

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    sget v2, Lcom/glu/android/GlobalNavMainView;->SECTION_TOP_MARGIN:I

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    invoke-direct {p0}, Lcom/glu/android/GlobalNavMainView;->getTextAreaHeight()I

    move-result v2

    add-int v0, v1, v2

    .line 189
    .local v0, "ret":I
    sget-object v1, Lcom/glu/android/GNSWidgetCollection;->instance:Lcom/glu/android/GNSWidgetCollection;

    invoke-virtual {v1}, Lcom/glu/android/GNSWidgetCollection;->calculateHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 191
    invoke-virtual {p0}, Lcom/glu/android/GlobalNavMainView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/glu/android/GlobalNavMainView;->m_fullSettingsViewHeight:I

    .line 192
    iget v1, p0, Lcom/glu/android/GlobalNavMainView;->m_fullSettingsViewHeight:I

    return v1
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Lcom/glu/android/BaseWebView;->computeVerticalScrollExtent()I

    move-result v0

    iput v0, p0, Lcom/glu/android/GlobalNavMainView;->m_visibleViewHeight:I

    .line 183
    iget v0, p0, Lcom/glu/android/GlobalNavMainView;->m_visibleViewHeight:I

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Lcom/glu/android/BaseWebView;->computeVerticalScrollOffset()I

    move-result v0

    iput v0, p0, Lcom/glu/android/GlobalNavMainView;->m_scrollOffset:I

    .line 174
    invoke-direct {p0}, Lcom/glu/android/GlobalNavMainView;->shouldFixBrokenSettingsScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/glu/android/GlobalNavMainView;->isSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget v0, p0, Lcom/glu/android/GlobalNavMainView;->m_gingerbreadHackScroll:I

    iput v0, p0, Lcom/glu/android/GlobalNavMainView;->m_scrollOffset:I

    .line 177
    :cond_0
    iget v0, p0, Lcom/glu/android/GlobalNavMainView;->m_scrollOffset:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 154
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/glu/android/GlobalNavMainView;->isSettings()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-boolean v1, v1, Lcom/glu/android/GameLet;->m_gnsIsOpen:Z

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/glu/android/GlobalNavMainView;->calculateSettingsViewHeight()I

    move-result v0

    .line 160
    :goto_0
    return v0

    .line 157
    :cond_0
    invoke-super {p0}, Lcom/glu/android/BaseWebView;->computeVerticalScrollRange()I

    move-result v0

    goto :goto_0
.end method

.method public drawHeader(Landroid/graphics/Canvas;Ljava/lang/String;I)V
    .locals 3
    .param p1, "g"    # Landroid/graphics/Canvas;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "y"    # I

    .prologue
    .line 250
    sget v0, Lcom/glu/android/GlobalNavMainView;->ROUND_RECT_PADDING:I

    sget v1, Lcom/glu/android/GNSWidgetCollection;->SETTINGS_INSIDE_MARGIN:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Lcom/glu/android/GlobalNavMainView;->FONT_SIZE:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/glu/android/GlobalNavMainView;->m_headerPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 251
    sget v0, Lcom/glu/android/GlobalNavMainView;->ROUND_RECT_PADDING:I

    sget v1, Lcom/glu/android/GNSWidgetCollection;->SETTINGS_INSIDE_MARGIN:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Lcom/glu/android/GlobalNavMainView;->FONT_SIZE:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p3

    int-to-float v1, v1

    iget-object v2, p0, Lcom/glu/android/GlobalNavMainView;->m_headerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 252
    return-void
.end method

.method protected handleBackWithEmptyHistory()V
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/glu/android/GlobalNav;->instance:Lcom/glu/android/GlobalNav;

    invoke-virtual {v0}, Lcom/glu/android/GlobalNav;->handleBackKey()V

    .line 97
    return-void
.end method

.method protected final isSettings()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 208
    sget-object v1, Lcom/glu/android/GlobalNav;->instance:Lcom/glu/android/GlobalNav;

    if-nez v1, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/glu/android/GlobalNav;->instance:Lcom/glu/android/GlobalNav;

    iget-object v1, v1, Lcom/glu/android/GlobalNav;->m_tabView:Lcom/glu/android/GlobalNav$GlobalNavTabView;

    invoke-virtual {v1}, Lcom/glu/android/GlobalNav$GlobalNavTabView;->getSelectedTab()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "g"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 256
    invoke-virtual {p0}, Lcom/glu/android/GlobalNavMainView;->isSettings()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 259
    invoke-direct {p0}, Lcom/glu/android/GlobalNavMainView;->shouldFixBrokenSettingsScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget v0, p0, Lcom/glu/android/GlobalNavMainView;->m_scrollOffset:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v11, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 262
    :cond_0
    sget-object v0, Lcom/glu/android/GNSWidgetCollection;->instance:Lcom/glu/android/GNSWidgetCollection;

    invoke-virtual {p0}, Lcom/glu/android/GlobalNavMainView;->getWidth()I

    move-result v3

    sget v4, Lcom/glu/android/GlobalNavMainView;->ROUND_RECT_PADDING:I

    shl-int/lit8 v4, v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/glu/android/GNSWidgetCollection;->setCollectionWidth(I)V

    .line 264
    invoke-virtual {p0}, Lcom/glu/android/GlobalNavMainView;->calculateSettingsViewHeight()I

    move-result v9

    .line 265
    .local v9, "trueHeight":I
    sget-object v0, Lcom/glu/android/GlobalNav;->instance:Lcom/glu/android/GlobalNav;

    iget-object v0, v0, Lcom/glu/android/GlobalNav;->GNS_IMAGES:[Landroid/graphics/drawable/Drawable;

    const/16 v3, 0x8

    aget-object v1, v0, v3

    .line 266
    .local v1, "tileImg":Landroid/graphics/drawable/Drawable;
    sget-object v0, Lcom/glu/android/GNSWidgetCollection;->instance:Lcom/glu/android/GNSWidgetCollection;

    invoke-virtual {v0}, Lcom/glu/android/GNSWidgetCollection;->calculateHeight()I

    move-result v0

    sget v3, Lcom/glu/android/GlobalNavMainView;->SECTION_TOP_MARGIN:I

    add-int v7, v0, v3

    .line 275
    .local v7, "settingsHeight":I
    invoke-virtual {p0}, Lcom/glu/android/GlobalNavMainView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/glu/android/GlobalNavMainView;->calculateSettingsViewHeight()I

    move-result v5

    move-object v0, p1

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/glu/android/GluUtil;->drawImageTiled(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 277
    sget v0, Lcom/glu/android/GlobalNavMainView;->ROUND_RECT_MARGIN:I

    add-int v10, v7, v0

    .line 278
    .local v10, "yPos":I
    iget-object v0, p0, Lcom/glu/android/GlobalNavMainView;->m_aboutHeader:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v10}, Lcom/glu/android/GlobalNavMainView;->drawHeader(Landroid/graphics/Canvas;Ljava/lang/String;I)V

    .line 279
    sget v0, Lcom/glu/android/GlobalNavMainView;->FONT_SIZE:I

    add-int/2addr v10, v0

    .line 281
    new-instance v0, Landroid/graphics/RectF;

    sget v2, Lcom/glu/android/GlobalNavMainView;->ROUND_RECT_PADDING:I

    int-to-float v2, v2

    int-to-float v3, v10

    invoke-virtual {p0}, Lcom/glu/android/GlobalNavMainView;->getWidth()I

    move-result v4

    sget v5, Lcom/glu/android/GlobalNavMainView;->ROUND_RECT_PADDING:I

    shl-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/glu/android/GlobalNavMainView;->ROUND_RECT_PADDING:I

    shl-int/lit8 v5, v5, 0x1

    sub-int v5, v9, v5

    int-to-float v5, v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget v2, Lcom/glu/android/GlobalNavMainView;->ROUND_EDGE_RADIUS:I

    int-to-float v2, v2

    sget v3, Lcom/glu/android/GlobalNavMainView;->ROUND_EDGE_RADIUS:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/glu/android/GlobalNavMainView;->m_roundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 285
    sget v0, Lcom/glu/android/GlobalNavMainView;->ROUND_RECT_PADDING:I

    iget-object v2, p0, Lcom/glu/android/GlobalNavMainView;->m_textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v0, v2

    add-int/2addr v10, v0

    .line 286
    invoke-virtual {p0}, Lcom/glu/android/GlobalNavMainView;->getWidth()I

    move-result v0

    shr-int/lit8 v8, v0, 0x1

    .line 287
    .local v8, "textX":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/glu/android/GlobalNavMainView;->m_wrappedAboutText:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/glu/android/GlobalNavMainView;->m_wrappedAboutText:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    int-to-float v2, v8

    sget v3, Lcom/glu/android/GlobalNavMainView;->FONT_SIZE:I

    mul-int/2addr v3, v6

    add-int/2addr v3, v10

    int-to-float v3, v3

    iget-object v4, p0, Lcom/glu/android/GlobalNavMainView;->m_textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 287
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 291
    :cond_1
    sget-object v0, Lcom/glu/android/GNSWidgetCollection;->instance:Lcom/glu/android/GNSWidgetCollection;

    invoke-virtual {v0, p1}, Lcom/glu/android/GNSWidgetCollection;->paint(Landroid/graphics/Canvas;)V

    .line 293
    invoke-direct {p0}, Lcom/glu/android/GlobalNavMainView;->shouldFixBrokenSettingsScroll()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    iget v0, p0, Lcom/glu/android/GlobalNavMainView;->m_scrollOffset:I

    int-to-float v0, v0

    invoke-virtual {p1, v11, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 296
    :cond_2
    invoke-virtual {p0}, Lcom/glu/android/GlobalNavMainView;->invalidate()V

    .line 306
    .end local v1    # "tileImg":Landroid/graphics/drawable/Drawable;
    .end local v6    # "i":I
    .end local v7    # "settingsHeight":I
    .end local v8    # "textX":I
    .end local v9    # "trueHeight":I
    .end local v10    # "yPos":I
    :goto_1
    return-void

    .line 302
    :cond_3
    invoke-super {p0, p1}, Lcom/glu/android/BaseWebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 304
    invoke-virtual {p0, p1}, Lcom/glu/android/GlobalNavMainView;->drawProgressBar(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 217
    invoke-virtual {p0}, Lcom/glu/android/GlobalNavMainView;->isSettings()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 219
    sget-object v4, Lcom/glu/android/GNSWidgetCollection;->instance:Lcom/glu/android/GNSWidgetCollection;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0}, Lcom/glu/android/GlobalNavMainView;->computeVerticalScrollOffset()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/glu/android/GNSWidgetCollection;->touchReceived(III)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 240
    :goto_0
    return v3

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/glu/android/GlobalNavMainView;->shouldFixBrokenSettingsScroll()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 224
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v1, v4

    .line 225
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    .line 226
    .local v2, "y":I
    if-nez v0, :cond_2

    .line 227
    iput v2, p0, Lcom/glu/android/GlobalNavMainView;->m_hackScrollLastY:I

    .line 240
    .end local v0    # "action":I
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/glu/android/BaseWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    .line 228
    .restart local v0    # "action":I
    .restart local v1    # "x":I
    .restart local v2    # "y":I
    :cond_2
    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    if-ne v0, v3, :cond_1

    .line 230
    :cond_3
    iget v3, p0, Lcom/glu/android/GlobalNavMainView;->m_gingerbreadHackScroll:I

    iget v4, p0, Lcom/glu/android/GlobalNavMainView;->m_hackScrollLastY:I

    sub-int v4, v2, v4

    shl-int/lit8 v4, v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/glu/android/GlobalNavMainView;->m_gingerbreadHackScroll:I

    .line 231
    iput v2, p0, Lcom/glu/android/GlobalNavMainView;->m_hackScrollLastY:I

    .line 232
    iget v3, p0, Lcom/glu/android/GlobalNavMainView;->m_gingerbreadHackScroll:I

    if-gez v3, :cond_4

    .line 233
    const/4 v3, 0x0

    iput v3, p0, Lcom/glu/android/GlobalNavMainView;->m_gingerbreadHackScroll:I

    goto :goto_1

    .line 234
    :cond_4
    iget v3, p0, Lcom/glu/android/GlobalNavMainView;->m_gingerbreadHackScroll:I

    iget v4, p0, Lcom/glu/android/GlobalNavMainView;->m_fullSettingsViewHeight:I

    iget v5, p0, Lcom/glu/android/GlobalNavMainView;->m_visibleViewHeight:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_1

    .line 235
    iget v3, p0, Lcom/glu/android/GlobalNavMainView;->m_fullSettingsViewHeight:I

    iget v4, p0, Lcom/glu/android/GlobalNavMainView;->m_visibleViewHeight:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/glu/android/GlobalNavMainView;->m_gingerbreadHackScroll:I

    goto :goto_1
.end method

.method public setAboutText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/glu/android/GlobalNavMainView;->m_aboutText:Ljava/lang/String;

    .line 102
    invoke-direct {p0}, Lcom/glu/android/GlobalNavMainView;->getTextAreaWidth()I

    move-result v0

    iget-object v1, p0, Lcom/glu/android/GlobalNavMainView;->m_textPaint:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1}, Lcom/glu/android/GluUtil;->wrapText(Ljava/lang/String;ILandroid/graphics/Paint;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/glu/android/GlobalNavMainView;->m_wrappedAboutText:Ljava/util/Vector;

    .line 103
    return-void
.end method
