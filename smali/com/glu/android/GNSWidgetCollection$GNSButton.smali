.class public Lcom/glu/android/GNSWidgetCollection$GNSButton;
.super Lcom/glu/android/GNSWidgetCollection$GNSWidget;
.source "GNSWidgetCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GNSWidgetCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GNSButton"
.end annotation


# static fields
.field public static m_dialogActiveButton:Lcom/glu/android/GNSWidgetCollection$GNSButton;


# instance fields
.field public m_buttonRect:Landroid/graphics/Rect;

.field public m_modalNegative:Ljava/lang/String;

.field public m_modalPositive:Ljava/lang/String;

.field public m_modalText:Ljava/lang/String;

.field public m_modalTitle:Ljava/lang/String;

.field public m_selected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_dialogActiveButton:Lcom/glu/android/GNSWidgetCollection$GNSButton;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "y"    # I
    .param p3, "widgetId"    # I

    .prologue
    const/4 v2, 0x0

    .line 149
    sget-object v0, Lcom/glu/android/GNSWidgetCollection;->instance:Lcom/glu/android/GNSWidgetCollection;

    iget v0, v0, Lcom/glu/android/GNSWidgetCollection;->m_collectionWidth:I

    sget-object v1, Lcom/glu/android/GNSWidgetCollection;->instance:Lcom/glu/android/GNSWidgetCollection;

    iget v1, v1, Lcom/glu/android/GNSWidgetCollection;->m_widgetHeight:I

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/glu/android/GNSWidgetCollection$GNSWidget;-><init>(IIII)V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_selected:Z

    .line 138
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_buttonRect:Landroid/graphics/Rect;

    .line 140
    iput-object v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_modalTitle:Ljava/lang/String;

    .line 141
    iput-object v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_modalText:Ljava/lang/String;

    .line 142
    iput-object v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_modalPositive:Ljava/lang/String;

    .line 143
    iput-object v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_modalNegative:Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/glu/android/GNSWidgetCollection$GNSButton;->setLabel(Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Lcom/glu/android/GNSWidgetCollection$GNSButton;->calculateButtonPos()V

    .line 154
    return-void
.end method

.method private calculateButtonPos()V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_buttonRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_width:I

    shr-int/lit8 v1, v1, 0x1

    sget v2, Lcom/glu/android/GNSWidgetCollection;->SETTINGS_INSIDE_MARGIN:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 161
    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_buttonRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_dx:I

    sget v2, Lcom/glu/android/GNSWidgetCollection;->ROUND_RECT_PADDING:I

    shl-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 162
    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_buttonRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_y:I

    sget v2, Lcom/glu/android/GNSWidgetCollection;->SETTINGS_INSIDE_MARGIN:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 163
    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_buttonRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_dy:I

    sget v2, Lcom/glu/android/GNSWidgetCollection;->SETTINGS_INSIDE_MARGIN:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 164
    return-void
.end method


# virtual methods
.method public differentWidgetTouched(Lcom/glu/android/GNSWidgetCollection$GNSWidget;I)V
    .locals 1
    .param p1, "widget"    # Lcom/glu/android/GNSWidgetCollection$GNSWidget;
    .param p2, "event"    # I

    .prologue
    .line 208
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 209
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_selected:Z

    .line 210
    :cond_1
    return-void
.end method

.method protected doPaint(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 3
    .param p1, "g"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_buttonRect:Landroid/graphics/Rect;

    iget-boolean v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_selected:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/glu/android/GluUtil;->CF_BUTTON_SELECTED:Landroid/graphics/LightingColorFilter;

    :goto_0
    sget-object v2, Lcom/glu/android/GNSWidgetCollection;->instance:Lcom/glu/android/GNSWidgetCollection;

    iget-object v2, v2, Lcom/glu/android/GNSWidgetCollection;->m_buttonLabelPaint:Landroid/graphics/Paint;

    invoke-static {p1, v1, v0, p2, v2}, Lcom/glu/android/GluUtil;->paintButton(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/ColorFilter;Ljava/lang/String;Landroid/graphics/Paint;)V

    .line 174
    return-void

    .line 173
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleTouch(III)Z
    .locals 8
    .param p1, "event"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v1, 0x1

    .line 178
    iget-object v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_buttonRect:Landroid/graphics/Rect;

    invoke-static {v2, p2, p3}, Lcom/glu/android/GluUtil;->isInRect(Landroid/graphics/Rect;II)Z

    move-result v0

    .line 180
    .local v0, "inArea":Z
    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 182
    iput-boolean v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_selected:Z

    .line 203
    :cond_0
    :goto_0
    return v1

    .line 185
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    iget-boolean v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_selected:Z

    if-nez v2, :cond_0

    .line 189
    :cond_2
    if-ne p1, v1, :cond_4

    .line 191
    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_selected:Z

    if-eqz v2, :cond_3

    .line 193
    sput-object p0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_dialogActiveButton:Lcom/glu/android/GNSWidgetCollection$GNSButton;

    .line 194
    iget-object v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_modalTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_modalText:Ljava/lang/String;

    iget-object v4, p0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_modalPositive:Ljava/lang/String;

    iget-object v5, p0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_modalNegative:Ljava/lang/String;

    const-string v6, "GluCallbacks"

    const-string v7, "buttonPromptCallback"

    invoke-static {v6, v7}, Lcom/glu/android/GluUtil;->getMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/glu/android/GluUtil;->openModalDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 198
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_selected:Z

    goto :goto_0

    .line 203
    :cond_4
    iget-boolean v1, p0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_selected:Z

    goto :goto_0
.end method

.method public paint(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "g"    # Landroid/graphics/Canvas;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/glu/android/GNSWidgetCollection$GNSButton;->m_label:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/glu/android/GNSWidgetCollection$GNSButton;->doPaint(Landroid/graphics/Canvas;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public postWidthChangedCalculations()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/glu/android/GNSWidgetCollection$GNSButton;->calculateButtonPos()V

    .line 215
    return-void
.end method
