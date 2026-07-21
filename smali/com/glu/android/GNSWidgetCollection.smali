.class public Lcom/glu/android/GNSWidgetCollection;
.super Ljava/lang/Object;
.source "GNSWidgetCollection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/glu/android/GNSWidgetCollection$GNSSelector;,
        Lcom/glu/android/GNSWidgetCollection$GNSSwitch;,
        Lcom/glu/android/GNSWidgetCollection$GNSSlider;,
        Lcom/glu/android/GNSWidgetCollection$GNSButton;,
        Lcom/glu/android/GNSWidgetCollection$GNSWidget;
    }
.end annotation


# static fields
.field public static FONT_SIZE:I = 0x0

.field public static final GNS_BUTTON_ID_MASK:I = 0xff

.field public static final GNS_BUTTON_ID_SHIFT:I = 0x0

.field public static final GNS_BUTTON_MESSAGE_MASK:I = 0xff00

.field public static final GNS_BUTTON_MESSAGE_SHIFT:I = 0x8

.field public static final GNS_BUTTON_PROMPT_AFTER_TEXT:I = 0x5

.field public static final GNS_BUTTON_PROMPT_NEGATIVE_TEXT:I = 0x4

.field public static final GNS_BUTTON_PROMPT_POSITIVE_TEXT:I = 0x3

.field public static final GNS_BUTTON_PROMPT_TEXT:I = 0x2

.field public static final GNS_BUTTON_PROMPT_TITLE:I = 0x1

.field public static final GNS_SELECTOR_DEFAULT_MASK:I = 0xff00

.field public static final GNS_SELECTOR_DEFAULT_SHIFT:I = 0x8

.field public static final GNS_SELECTOR_ID_MASK:I = 0xff

.field public static final GNS_SELECTOR_ID_SHIFT:I = 0x0

.field public static ROUND_EDGE_RADIUS:I = 0x0

.field public static ROUND_RECT_MARGIN:I = 0x0

.field public static ROUND_RECT_PADDING:I = 0x0

.field public static final SELECTOR_GRADIENT_NORMAL:[I

.field public static final SELECTOR_GRADIENT_SELECTED:[I

.field public static SELECTOR_ROUND_RECT_RADIUS:I = 0x0

.field public static SELECTOR_ROUND_RECT_THICKNESS:I = 0x0

.field public static SELECTOR_SCROLL_THRESHOLD:I = 0x0

.field public static SETTINGS_INSIDE_MARGIN:I = 0x0

.field public static final SLIDER_GRADIENT_COLORS:[I

.field public static SLIDER_HEIGHT:I = 0x0

.field public static SLIDER_PADDING:I = 0x0

.field public static SLIDER_RR_RADIUS:I = 0x0

.field public static SLIDER_TOUCH_EXTENSION:I = 0x0

.field public static SLIDER_WIDTH:I = 0x0

.field public static SWITCH_TOUCH_EXTENSION:I = 0x0

.field public static TYPICAL_WIDGET_HEIGHT:I = 0x0

.field private static final g1_FONT_SIZE:I = 0xf

.field private static final g1_ROUND_EDGE_RADIUS:I = 0x6

.field private static final g1_ROUND_RECT_MARGIN:I = 0x12

.field private static final g1_ROUND_RECT_PADDING:I = 0x9

.field private static final g1_SELECTOR_ROUND_RECT_RADIUS:I = 0x2

.field private static final g1_SELECTOR_ROUND_RECT_THICKNESS:I = 0x2

.field private static final g1_SELECTOR_SCROLL_THRESHOLD:I = 0x10

.field private static final g1_SETTINGS_INSIDE_MARGIN:I = 0x5

.field private static final g1_SLIDER_HEIGHT:I = 0xe

.field private static final g1_SLIDER_PADDING:I = 0xd

.field private static final g1_SLIDER_RR_RADIUS:I = 0x6

.field private static final g1_SLIDER_TOUCH_EXTENSION:I = 0x14

.field private static final g1_SLIDER_WIDTH:I = 0x8c

.field private static final g1_SWITCH_TOUCH_EXTENSION:I = 0xa

.field private static final g1_TYPICAL_WIDGET_HEIGHT:I = 0x32

.field public static instance:Lcom/glu/android/GNSWidgetCollection;

.field public static sm_tmpRectF:Landroid/graphics/RectF;


# instance fields
.field public m_buttonLabelPaint:Landroid/graphics/Paint;

.field public m_collectionWidth:I

.field public m_collectionX:I

.field public m_collectionY:I

.field public m_firstWidgetY:I

.field public m_labelPaint:Landroid/graphics/Paint;

.field public m_lineSeparatorPaint:Landroid/graphics/Paint;

.field public m_selectorRoundRectPaint:Landroid/graphics/Paint;

.field public m_settingsHeader:Ljava/lang/String;

.field public m_touchActiveWidget:I

.field public m_widgetHeight:I

.field private m_widgets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/glu/android/GNSWidgetCollection$GNSWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/16 v3, 0x12

    const/16 v2, 0x9

    const/4 v1, 0x4

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/glu/android/GNSWidgetCollection;->sm_tmpRectF:Landroid/graphics/RectF;

    .line 711
    const/4 v0, 0x5

    sput v0, Lcom/glu/android/GNSWidgetCollection;->SETTINGS_INSIDE_MARGIN:I

    .line 712
    sput v2, Lcom/glu/android/GNSWidgetCollection;->ROUND_RECT_PADDING:I

    .line 713
    sput v3, Lcom/glu/android/GNSWidgetCollection;->ROUND_RECT_MARGIN:I

    .line 714
    sput v3, Lcom/glu/android/GNSWidgetCollection;->ROUND_EDGE_RADIUS:I

    .line 715
    sput v3, Lcom/glu/android/GNSWidgetCollection;->FONT_SIZE:I

    .line 716
    const/16 v0, 0x32

    sput v0, Lcom/glu/android/GNSWidgetCollection;->TYPICAL_WIDGET_HEIGHT:I

    .line 717
    const/16 v0, 0x64

    sput v0, Lcom/glu/android/GNSWidgetCollection;->SLIDER_WIDTH:I

    .line 718
    const/16 v0, 0xe

    sput v0, Lcom/glu/android/GNSWidgetCollection;->SLIDER_HEIGHT:I

    .line 719
    sput v4, Lcom/glu/android/GNSWidgetCollection;->SLIDER_RR_RADIUS:I

    .line 720
    sput v4, Lcom/glu/android/GNSWidgetCollection;->SLIDER_TOUCH_EXTENSION:I

    .line 721
    sput v2, Lcom/glu/android/GNSWidgetCollection;->SLIDER_PADDING:I

    .line 722
    sput v2, Lcom/glu/android/GNSWidgetCollection;->SWITCH_TOUCH_EXTENSION:I

    .line 723
    const/16 v0, 0x14

    sput v0, Lcom/glu/android/GNSWidgetCollection;->SELECTOR_SCROLL_THRESHOLD:I

    .line 724
    sput v1, Lcom/glu/android/GNSWidgetCollection;->SELECTOR_ROUND_RECT_THICKNESS:I

    .line 725
    const/4 v0, 0x2

    sput v0, Lcom/glu/android/GNSWidgetCollection;->SELECTOR_ROUND_RECT_RADIUS:I

    .line 741
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/glu/android/GNSWidgetCollection;->SLIDER_GRADIENT_COLORS:[I

    .line 744
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/glu/android/GNSWidgetCollection;->SELECTOR_GRADIENT_NORMAL:[I

    .line 745
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/glu/android/GNSWidgetCollection;->SELECTOR_GRADIENT_SELECTED:[I

    .line 748
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GNSWidgetCollection;->instance:Lcom/glu/android/GNSWidgetCollection;

    return-void

    .line 741
    :array_0
    .array-data 4
        -0x878788
        -0x676768
        -0x5f5f60
        -0x474748
    .end array-data

    .line 744
    :array_1
    .array-data 4
        -0x101011
        -0x202021
        -0x202021
        -0x101011
    .end array-data

    .line 745
    :array_2
    .array-data 4
        -0x101071
        -0x202091
        -0x202091
        -0x101071
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    iput-object v1, p0, Lcom/glu/android/GNSWidgetCollection;->m_labelPaint:Landroid/graphics/Paint;

    .line 729
    iput-object v1, p0, Lcom/glu/android/GNSWidgetCollection;->m_buttonLabelPaint:Landroid/graphics/Paint;

    .line 730
    iput-object v1, p0, Lcom/glu/android/GNSWidgetCollection;->m_lineSeparatorPaint:Landroid/graphics/Paint;

    .line 731
    iput-object v1, p0, Lcom/glu/android/GNSWidgetCollection;->m_selectorRoundRectPaint:Landroid/graphics/Paint;

    .line 734
    iput v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_collectionX:I

    .line 735
    iput v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_collectionWidth:I

    .line 736
    iput v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_collectionY:I

    .line 737
    iput v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgetHeight:I

    .line 738
    iput v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_firstWidgetY:I

    .line 751
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    .line 754
    iput-object v1, p0, Lcom/glu/android/GNSWidgetCollection;->m_settingsHeader:Ljava/lang/String;

    .line 876
    const/4 v0, -0x1

    iput v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_touchActiveWidget:I

    .line 756
    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "y"    # I

    .prologue
    const/high16 v3, -0x1000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    iput-object v1, p0, Lcom/glu/android/GNSWidgetCollection;->m_labelPaint:Landroid/graphics/Paint;

    .line 729
    iput-object v1, p0, Lcom/glu/android/GNSWidgetCollection;->m_buttonLabelPaint:Landroid/graphics/Paint;

    .line 730
    iput-object v1, p0, Lcom/glu/android/GNSWidgetCollection;->m_lineSeparatorPaint:Landroid/graphics/Paint;

    .line 731
    iput-object v1, p0, Lcom/glu/android/GNSWidgetCollection;->m_selectorRoundRectPaint:Landroid/graphics/Paint;

    .line 734
    iput v2, p0, Lcom/glu/android/GNSWidgetCollection;->m_collectionX:I

    .line 735
    iput v2, p0, Lcom/glu/android/GNSWidgetCollection;->m_collectionWidth:I

    .line 736
    iput v2, p0, Lcom/glu/android/GNSWidgetCollection;->m_collectionY:I

    .line 737
    iput v2, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgetHeight:I

    .line 738
    iput v2, p0, Lcom/glu/android/GNSWidgetCollection;->m_firstWidgetY:I

    .line 751
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    .line 754
    iput-object v1, p0, Lcom/glu/android/GNSWidgetCollection;->m_settingsHeader:Ljava/lang/String;

    .line 876
    const/4 v0, -0x1

    iput v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_touchActiveWidget:I

    .line 760
    sput-object p0, Lcom/glu/android/GNSWidgetCollection;->instance:Lcom/glu/android/GNSWidgetCollection;

    .line 761
    iput p1, p0, Lcom/glu/android/GNSWidgetCollection;->m_collectionWidth:I

    .line 762
    invoke-virtual {p0}, Lcom/glu/android/GNSWidgetCollection;->adjustLayoutConstants()V

    .line 765
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v0

    iget v1, p0, Lcom/glu/android/GNSWidgetCollection;->m_collectionWidth:I

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_collectionX:I

    .line 766
    iput p2, p0, Lcom/glu/android/GNSWidgetCollection;->m_collectionY:I

    .line 767
    iget v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_collectionY:I

    sget v1, Lcom/glu/android/GNSWidgetCollection;->FONT_SIZE:I

    add-int/2addr v0, v1

    sget v1, Lcom/glu/android/GNSWidgetCollection;->ROUND_RECT_PADDING:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_firstWidgetY:I

    .line 768
    sget v0, Lcom/glu/android/GNSWidgetCollection;->TYPICAL_WIDGET_HEIGHT:I

    iput v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgetHeight:I

    .line 771
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_labelPaint:Landroid/graphics/Paint;

    .line 772
    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_labelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 773
    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_labelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 774
    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_labelPaint:Landroid/graphics/Paint;

    sget v1, Lcom/glu/android/GNSWidgetCollection;->FONT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 775
    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_labelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 776
    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_labelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 777
    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_labelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 778
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/glu/android/GNSWidgetCollection;->m_labelPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_buttonLabelPaint:Landroid/graphics/Paint;

    .line 779
    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_buttonLabelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 780
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_lineSeparatorPaint:Landroid/graphics/Paint;

    .line 781
    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_lineSeparatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 782
    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_lineSeparatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 783
    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_lineSeparatorPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 784
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_selectorRoundRectPaint:Landroid/graphics/Paint;

    .line 785
    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_selectorRoundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 786
    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_selectorRoundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 787
    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_selectorRoundRectPaint:Landroid/graphics/Paint;

    sget v1, Lcom/glu/android/GNSWidgetCollection;->SELECTOR_ROUND_RECT_THICKNESS:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 788
    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_selectorRoundRectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 790
    const v0, 0x7f070035

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_settingsHeader:Ljava/lang/String;

    .line 791
    return-void
.end method

.method public static buttonPromptCallback(I)V
    .locals 2
    .param p0, "which"    # I

    .prologue
    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buttonPromptCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1052
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 1054
    sget-object v0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_dialogActiveButton:Lcom/glu/android/GNSWidgetCollection$GNSButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/glu/android/GNSWidgetCollection$GNSButton;->triggerCallback(I)V

    .line 1057
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_dialogActiveButton:Lcom/glu/android/GNSWidgetCollection$GNSButton;

    .line 1058
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->handlerCloseModalDialog()V

    .line 1059
    return-void
.end method

.method private findExistingWidget(Ljava/lang/String;)I
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 816
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 817
    iget-object v1, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glu/android/GNSWidgetCollection$GNSWidget;

    invoke-virtual {v1}, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 820
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 816
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 820
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public addSelectorOption(ILjava/lang/String;)V
    .locals 5
    .param p1, "iParam"    # I
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 1011
    const v3, 0xff00

    and-int/2addr v3, p1

    shr-int/lit8 v0, v3, 0x8

    .line 1012
    .local v0, "nativeId":I
    and-int/lit16 v2, p1, 0xff

    .line 1014
    .local v2, "widgetId":I
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 1016
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSelectorOption("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") widgetId invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1022
    :goto_0
    return-void

    .line 1020
    :cond_1
    iget-object v3, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glu/android/GNSWidgetCollection$GNSSelector;

    .line 1021
    .local v1, "selector":Lcom/glu/android/GNSWidgetCollection$GNSSelector;
    invoke-virtual {v1, v0, p2}, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->addOption(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public adjustLayoutConstants()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x2

    .line 795
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GNSWidgetCollection;->SETTINGS_INSIDE_MARGIN:I

    .line 796
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GNSWidgetCollection;->ROUND_RECT_PADDING:I

    .line 797
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GNSWidgetCollection;->ROUND_RECT_MARGIN:I

    .line 798
    invoke-static {v2}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GNSWidgetCollection;->ROUND_EDGE_RADIUS:I

    .line 799
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GNSWidgetCollection;->FONT_SIZE:I

    .line 800
    const/16 v0, 0x32

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GNSWidgetCollection;->TYPICAL_WIDGET_HEIGHT:I

    .line 801
    const/16 v0, 0x8c

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GNSWidgetCollection;->SLIDER_WIDTH:I

    .line 802
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GNSWidgetCollection;->SLIDER_HEIGHT:I

    .line 803
    invoke-static {v2}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GNSWidgetCollection;->SLIDER_RR_RADIUS:I

    .line 804
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GNSWidgetCollection;->SLIDER_TOUCH_EXTENSION:I

    .line 805
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GNSWidgetCollection;->SLIDER_PADDING:I

    .line 806
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GNSWidgetCollection;->SWITCH_TOUCH_EXTENSION:I

    .line 807
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GNSWidgetCollection;->SELECTOR_SCROLL_THRESHOLD:I

    .line 808
    invoke-static {v1}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GNSWidgetCollection;->SELECTOR_ROUND_RECT_THICKNESS:I

    .line 809
    invoke-static {v1}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GNSWidgetCollection;->SELECTOR_ROUND_RECT_RADIUS:I

    .line 810
    return-void
.end method

.method public calculateHeight()I
    .locals 3

    .prologue
    .line 830
    invoke-virtual {p0}, Lcom/glu/android/GNSWidgetCollection;->shouldPaint()Z

    move-result v0

    if-nez v0, :cond_0

    .line 831
    const/4 v0, 0x0

    .line 834
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/glu/android/GNSWidgetCollection;->FONT_SIZE:I

    sget v1, Lcom/glu/android/GNSWidgetCollection;->ROUND_RECT_PADDING:I

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget v2, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgetHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public createButtonWidget(Ljava/lang/String;)I
    .locals 6
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 930
    invoke-direct {p0, p1}, Lcom/glu/android/GNSWidgetCollection;->findExistingWidget(Ljava/lang/String;)I

    move-result v0

    .local v0, "ret":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 935
    .end local v0    # "ret":I
    .local v1, "ret":I
    :goto_0
    return v1

    .line 933
    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    :cond_0
    iget-object v2, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 934
    iget-object v2, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    new-instance v3, Lcom/glu/android/GNSWidgetCollection$GNSButton;

    iget v4, p0, Lcom/glu/android/GNSWidgetCollection;->m_firstWidgetY:I

    iget v5, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgetHeight:I

    mul-int/2addr v5, v0

    add-int/2addr v4, v5

    invoke-direct {v3, p1, v4, v0}, Lcom/glu/android/GNSWidgetCollection$GNSButton;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v1, v0

    .line 935
    .end local v0    # "ret":I
    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method public createSelectorWidget(Ljava/lang/String;)I
    .locals 6
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 963
    invoke-direct {p0, p1}, Lcom/glu/android/GNSWidgetCollection;->findExistingWidget(Ljava/lang/String;)I

    move-result v0

    .local v0, "ret":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 968
    .end local v0    # "ret":I
    .local v1, "ret":I
    :goto_0
    return v1

    .line 966
    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    :cond_0
    iget-object v2, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 967
    iget-object v2, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    new-instance v3, Lcom/glu/android/GNSWidgetCollection$GNSSelector;

    iget v4, p0, Lcom/glu/android/GNSWidgetCollection;->m_firstWidgetY:I

    iget v5, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgetHeight:I

    mul-int/2addr v5, v0

    add-int/2addr v4, v5

    invoke-direct {v3, p1, v4, v0}, Lcom/glu/android/GNSWidgetCollection$GNSSelector;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v1, v0

    .line 968
    .end local v0    # "ret":I
    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method public createSliderWidget(Ljava/lang/String;I)I
    .locals 6
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 941
    invoke-direct {p0, p1}, Lcom/glu/android/GNSWidgetCollection;->findExistingWidget(Ljava/lang/String;)I

    move-result v0

    .local v0, "ret":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 946
    .end local v0    # "ret":I
    .local v1, "ret":I
    :goto_0
    return v1

    .line 944
    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    :cond_0
    iget-object v2, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 945
    iget-object v2, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    new-instance v3, Lcom/glu/android/GNSWidgetCollection$GNSSlider;

    iget v4, p0, Lcom/glu/android/GNSWidgetCollection;->m_firstWidgetY:I

    iget v5, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgetHeight:I

    mul-int/2addr v5, v0

    add-int/2addr v4, v5

    invoke-direct {v3, p1, v4, p2, v0}, Lcom/glu/android/GNSWidgetCollection$GNSSlider;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v1, v0

    .line 946
    .end local v0    # "ret":I
    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method public createSwitchWidget(Ljava/lang/String;Z)I
    .locals 6
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 952
    invoke-direct {p0, p1}, Lcom/glu/android/GNSWidgetCollection;->findExistingWidget(Ljava/lang/String;)I

    move-result v0

    .local v0, "ret":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 957
    .end local v0    # "ret":I
    .local v1, "ret":I
    :goto_0
    return v1

    .line 955
    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    :cond_0
    iget-object v2, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 956
    iget-object v2, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    new-instance v3, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;

    iget v4, p0, Lcom/glu/android/GNSWidgetCollection;->m_firstWidgetY:I

    iget v5, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgetHeight:I

    mul-int/2addr v5, v0

    add-int/2addr v4, v5

    invoke-direct {v3, p1, v4, p2, v0}, Lcom/glu/android/GNSWidgetCollection$GNSSwitch;-><init>(Ljava/lang/String;IZI)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v1, v0

    .line 957
    .end local v0    # "ret":I
    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method public doButtonAddText(ILjava/lang/String;)V
    .locals 5
    .param p1, "iParam"    # I
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 991
    const v3, 0xff00

    and-int/2addr v3, p1

    shr-int/lit8 v1, v3, 0x8

    .line 992
    .local v1, "fieldId":I
    and-int/lit16 v2, p1, 0xff

    .line 994
    .local v2, "widgetId":I
    iget-object v3, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glu/android/GNSWidgetCollection$GNSButton;

    .line 996
    .local v0, "btn":Lcom/glu/android/GNSWidgetCollection$GNSButton;
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 997
    iput-object p2, v0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_modalTitle:Ljava/lang/String;

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 998
    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 999
    iput-object p2, v0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_modalText:Ljava/lang/String;

    goto :goto_0

    .line 1000
    :cond_2
    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 1001
    iput-object p2, v0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_modalPositive:Ljava/lang/String;

    goto :goto_0

    .line 1002
    :cond_3
    const/4 v3, 0x4

    if-ne v1, v3, :cond_4

    .line 1003
    iput-object p2, v0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_modalNegative:Ljava/lang/String;

    goto :goto_0

    .line 1004
    :cond_4
    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 1005
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GNS Warning: After text not implemented yet. (but not critical) Text is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hasTouchFocus()Z
    .locals 2

    .prologue
    .line 1041
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1042
    iget-object v1, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glu/android/GNSWidgetCollection$GNSWidget;

    iget-boolean v1, v1, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_touchFocusGrabbed:Z

    if-eqz v1, :cond_0

    .line 1043
    const/4 v1, 0x1

    .line 1045
    :goto_1
    return v1

    .line 1041
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1045
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public paint(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "g"    # Landroid/graphics/Canvas;

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/glu/android/GNSWidgetCollection;->shouldPaint()Z

    move-result v0

    if-nez v0, :cond_1

    .line 864
    :cond_0
    :goto_0
    return-void

    .line 843
    :cond_1
    iget v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_collectionY:I

    sget v1, Lcom/glu/android/GNSWidgetCollection;->ROUND_RECT_PADDING:I

    add-int v8, v0, v1

    .line 844
    .local v8, "yPos":I
    sget-object v0, Lcom/glu/android/GlobalNav;->instance:Lcom/glu/android/GlobalNav;

    iget-object v0, v0, Lcom/glu/android/GlobalNav;->m_mainView:Lcom/glu/android/GlobalNavMainView;

    iget-object v1, p0, Lcom/glu/android/GNSWidgetCollection;->m_settingsHeader:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v8}, Lcom/glu/android/GlobalNavMainView;->drawHeader(Landroid/graphics/Canvas;Ljava/lang/String;I)V

    .line 845
    sget v0, Lcom/glu/android/GNSWidgetCollection;->FONT_SIZE:I

    add-int/2addr v8, v0

    .line 846
    new-instance v0, Landroid/graphics/RectF;

    sget v1, Lcom/glu/android/GNSWidgetCollection;->ROUND_RECT_PADDING:I

    int-to-float v1, v1

    int-to-float v2, v8

    iget v3, p0, Lcom/glu/android/GNSWidgetCollection;->m_collectionWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    iget v5, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgetHeight:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v8

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget v1, Lcom/glu/android/GNSWidgetCollection;->ROUND_EDGE_RADIUS:I

    int-to-float v1, v1

    sget v2, Lcom/glu/android/GNSWidgetCollection;->ROUND_EDGE_RADIUS:I

    int-to-float v2, v2

    sget-object v3, Lcom/glu/android/GlobalNav;->instance:Lcom/glu/android/GlobalNav;

    iget-object v3, v3, Lcom/glu/android/GlobalNav;->m_mainView:Lcom/glu/android/GlobalNavMainView;

    iget-object v3, v3, Lcom/glu/android/GlobalNavMainView;->m_roundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 848
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_1
    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 850
    sget v0, Lcom/glu/android/GNSWidgetCollection;->ROUND_RECT_PADDING:I

    int-to-float v1, v0

    iget v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgetHeight:I

    mul-int/2addr v0, v7

    add-int/2addr v0, v8

    int-to-float v2, v0

    iget v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_collectionWidth:I

    int-to-float v3, v0

    iget v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgetHeight:I

    mul-int/2addr v0, v7

    add-int/2addr v0, v8

    int-to-float v4, v0

    iget-object v5, p0, Lcom/glu/android/GNSWidgetCollection;->m_lineSeparatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 848
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 854
    :cond_2
    const/4 v6, -0x1

    .line 855
    .local v6, "drawLast":I
    const/4 v7, 0x0

    :goto_2
    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v7, v0, :cond_4

    .line 857
    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;

    iget-boolean v0, v0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_touchFocusGrabbed:Z

    if-eqz v0, :cond_3

    .line 858
    move v6, v7

    .line 855
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 860
    :cond_3
    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;

    invoke-virtual {v0, p1}, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->paint(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 862
    :cond_4
    const/4 v0, -0x1

    if-eq v6, v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glu/android/GNSWidgetCollection$GNSWidget;

    invoke-virtual {v0, p1}, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->paint(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public setCollectionWidth(I)V
    .locals 2
    .param p1, "width"    # I

    .prologue
    .line 868
    iput p1, p0, Lcom/glu/android/GNSWidgetCollection;->m_collectionWidth:I

    .line 869
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 871
    iget-object v1, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glu/android/GNSWidgetCollection$GNSWidget;

    invoke-virtual {v1, p1}, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->setWidth(I)V

    .line 872
    iget-object v1, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glu/android/GNSWidgetCollection$GNSWidget;

    invoke-virtual {v1}, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->postWidthChangedCalculations()V

    .line 869
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 874
    :cond_0
    return-void
.end method

.method public setSelectorDefaultOption(I)V
    .locals 5
    .param p1, "iParam"    # I

    .prologue
    .line 1026
    const v3, 0xff00

    and-int/2addr v3, p1

    shr-int/lit8 v0, v3, 0x8

    .line 1027
    .local v0, "nativeId":I
    and-int/lit16 v2, p1, 0xff

    .line 1029
    .local v2, "widgetId":I
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 1031
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSelectorDefaultOption("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") widgetId invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1037
    :goto_0
    return-void

    .line 1035
    :cond_1
    iget-object v3, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glu/android/GNSWidgetCollection$GNSSelector;

    .line 1036
    .local v1, "selector":Lcom/glu/android/GNSWidgetCollection$GNSSelector;
    invoke-virtual {v1, v0}, Lcom/glu/android/GNSWidgetCollection$GNSSelector;->nativeSetSelectedOption(I)V

    goto :goto_0
.end method

.method public shouldPaint()Z
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public touchReceived(III)Z
    .locals 9
    .param p1, "event"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v8, -0x1

    .line 881
    const/4 v3, 0x0

    .line 883
    .local v3, "ret":Z
    invoke-virtual {p0}, Lcom/glu/android/GNSWidgetCollection;->shouldPaint()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 885
    const/4 v2, -0x1

    .line 886
    .local v2, "overrideWidget":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 888
    iget-object v6, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/glu/android/GNSWidgetCollection$GNSWidget;

    iget-boolean v6, v6, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->m_touchFocusGrabbed:Z

    if-eqz v6, :cond_2

    .line 890
    move v2, v1

    .line 895
    :cond_0
    if-eq v2, v8, :cond_3

    .line 897
    iget-object v6, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/glu/android/GNSWidgetCollection$GNSWidget;

    invoke-virtual {v6, p1, p2, p3}, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->handleTouch(III)Z

    move-result v3

    .line 921
    .end local v1    # "i":I
    .end local v2    # "overrideWidget":I
    :cond_1
    :goto_1
    return v3

    .line 886
    .restart local v1    # "i":I
    .restart local v2    # "overrideWidget":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 901
    :cond_3
    sget v6, Lcom/glu/android/GNSWidgetCollection;->FONT_SIZE:I

    sget v7, Lcom/glu/android/GNSWidgetCollection;->ROUND_RECT_PADDING:I

    add-int v4, v6, v7

    .line 902
    .local v4, "startY":I
    iget-object v6, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    iget v7, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgetHeight:I

    mul-int/2addr v6, v7

    add-int v0, v4, v6

    .line 903
    .local v0, "endY":I
    iget v6, p0, Lcom/glu/android/GNSWidgetCollection;->m_touchActiveWidget:I

    if-eq v6, v8, :cond_4

    .line 905
    iget-object v6, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    iget v7, p0, Lcom/glu/android/GNSWidgetCollection;->m_touchActiveWidget:I

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/glu/android/GNSWidgetCollection$GNSWidget;

    invoke-virtual {v6, p1, p2, p3}, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->handleTouch(III)Z

    move-result v3

    .line 906
    const/4 v6, 0x1

    if-ne p1, v6, :cond_1

    .line 907
    iput v8, p0, Lcom/glu/android/GNSWidgetCollection;->m_touchActiveWidget:I

    goto :goto_1

    .line 909
    :cond_4
    if-nez p1, :cond_1

    if-lt p3, v4, :cond_1

    if-ge p3, v0, :cond_1

    iget v6, p0, Lcom/glu/android/GNSWidgetCollection;->m_collectionX:I

    if-lt p2, v6, :cond_1

    iget v6, p0, Lcom/glu/android/GNSWidgetCollection;->m_collectionX:I

    iget v7, p0, Lcom/glu/android/GNSWidgetCollection;->m_collectionWidth:I

    add-int/2addr v6, v7

    if-ge p2, v6, :cond_1

    .line 911
    sub-int v6, p3, v4

    iget v7, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgetHeight:I

    div-int v5, v6, v7

    .line 912
    .local v5, "widgetNum":I
    if-ltz v5, :cond_1

    iget-object v6, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 914
    iget-object v6, p0, Lcom/glu/android/GNSWidgetCollection;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/glu/android/GNSWidgetCollection$GNSWidget;

    invoke-virtual {v6, p1, p2, p3}, Lcom/glu/android/GNSWidgetCollection$GNSWidget;->handleTouch(III)Z

    move-result v3

    .line 915
    iput v5, p0, Lcom/glu/android/GNSWidgetCollection;->m_touchActiveWidget:I

    goto :goto_1
.end method
