.class public Lcom/glu/android/GlobalNav;
.super Landroid/widget/LinearLayout;
.source "GlobalNav.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/glu/android/GlobalNav$GlobalNavTabView;,
        Lcom/glu/android/GlobalNav$GlobalNavTitleView;
    }
.end annotation


# static fields
.field public static ABOUT_CELL_HEIGHT:I = 0x0

.field public static BUTTON_CELL_BUTTON_HEIGHT:I = 0x0

.field public static BUTTON_CELL_LEFT_OFFSET:I = 0x0

.field public static BUTTON_CELL_TOP_OFFSET:I = 0x0

.field public static DIALOG_HEIGHT:I = 0x0

.field public static DIALOG_WIDTH:I = 0x0

.field public static final ERROR_STRING_SCAN_MASK:Ljava/lang/String; = "{\"blog\":%d, \"game\":%d}"

.field public static final GLU_COLOR:I = -0x950de

.field public static final GNS_CALLBACK_ID_FINISHED:I = 0x100

.field public static final GNS_DEFAULT_NEWS_INTERVAL:I = 0x3e

.field public static final GNS_EVENT_ADD_BUTTON:I = 0xb

.field public static final GNS_EVENT_ADD_SELECTOR:I = 0x9

.field public static final GNS_EVENT_ADD_SLIDER:I = 0xa

.field public static final GNS_EVENT_ADD_SWITCH:I = 0xc

.field public static final GNS_EVENT_BUTTON_ADD_TEXT:I = 0xf

.field public static final GNS_EVENT_IS_VISIBLE:I = 0x8

.field public static final GNS_EVENT_SELECTOR_ADD_OPTION:I = 0xd

.field public static final GNS_EVENT_SELECTOR_SET_DEFAULT_OPTION:I = 0xe

.field public static final GNS_EVENT_SET_ABOUT_TEXT:I = 0x5

.field public static final GNS_EVENT_SET_APP_ID:I = 0x6

.field public static final GNS_EVENT_SET_DEFAULT_TAB:I = 0x4

.field public static final GNS_EVENT_SET_LOCALE:I = 0x7

.field public static final GNS_EVENT_SET_VALID_TABS:I = 0x3

.field public static final GNS_EVENT_START:I = 0x1

.field public static final GNS_EVENT_STOP:I = 0x2

.field public static final GNS_IMAGE_ABOUT:I = 0x0

.field public static final GNS_IMAGE_BLOG:I = 0x2

.field public static final GNS_IMAGE_BUTTON_BG:I = 0x3

.field public static final GNS_IMAGE_COUNT:I = 0x9

.field public static final GNS_IMAGE_FEEDBACK:I = 0x4

.field public static final GNS_IMAGE_GAMES:I = 0x5

.field public static final GNS_IMAGE_GAME_BUTTON:I = 0x1

.field public static final GNS_IMAGE_HIGHSCORE:I = 0x6

.field public static final GNS_IMAGE_SETTINGS:I = 0x7

.field public static final GNS_IMAGE_SETTINGS_BG:I = 0x8

.field public static final GNS_PAGE_ID_BLOG:I = 0x2

.field public static final GNS_PAGE_ID_FEEDBACK:I = 0x4

.field public static final GNS_PAGE_ID_GAMES:I = 0x3

.field public static final GNS_PAGE_ID_HIGHSCORE:I = 0x1

.field public static final GNS_PAGE_ID_LAST:I = 0x5

.field public static final GNS_PAGE_ID_SETTINGS:I = 0x0

.field public static final NEWS_STRING_SCAN_MASK:Ljava/lang/String; = "{\"blog\":%d, \"game\":%d}"

.field public static final PADDING:I = 0x4

.field public static final REDIRECT_TO_APPSTORE_SCAN_MASK:Ljava/lang/String; = "http://gcs.glu.com/gcs/android/android.jsp?t=%s&src="

.field public static final REQUIRED_PARAMETER:Ljava/lang/String; = "&src=%s&p=android&n=facebook&l=en_US&mobid=%s"

.field public static SETTINGS_CELL_HEIGHT:I = 0x0

.field public static SETTINGS_MUSIC_SLIDER_HEIGHT:I = 0x0

.field public static SETTINGS_MUSIC_SLIDER_WIDTH:I = 0x0

.field public static SETTINGS_SOUND_SWITCH_HEIGHT:I = 0x0

.field public static SETTINGS_SOUND_SWITCH_WIDTH:I = 0x0

.field public static SWITCH_CELL_HEIGHT:I = 0x0

.field public static SWITCH_CELL_LEFT_OFFSET:I = 0x0

.field public static SWITCH_CELL_TOP_OFFSET:I = 0x0

.field public static final TAB_GRADIENT_ACTIVE:[I

.field public static final TAB_GRADIENT_NORMAL:[I

.field public static final TAB_GRADIENT_PRESSED:[I

.field public static TAB_HEIGHT:I = 0x0

.field public static final TITLE_GRADIENT_COLORS:[I

.field public static TITLE_HEIGHT:I = 0x0

.field public static final URL_BLOG:Ljava/lang/String; = "gnav/content/blog/"

.field public static final URL_FEEDBACK:Ljava/lang/String; = "gnav/feedback/"

.field public static final URL_GAMES:Ljava/lang/String; = "gnav/content/game/"

.field public static final URL_HIGHSCORE:Ljava/lang/String; = "gnav/highscore/?uid=%s&sk=%s"

.field public static final URL_NEWS_REQUEST_FORMAT:Ljava/lang/String; = "gnav/content/updates/%s/%s"

.field public static final URL_SERVER:Ljava/lang/String; = "http://apps.glu.com/"

.field public static final VIEW_COLOR:I = -0x1

.field private static final g1_ABOUT_CELL_HEIGHT:I = 0x64

.field private static final g1_BUTTON_CELL_BUTTON_HEIGHT:I = 0x28

.field private static final g1_BUTTON_CELL_LEFT_OFFSET:I = 0x1e

.field private static final g1_BUTTON_CELL_TOP_OFFSET:I = 0x5

.field private static final g1_SETTINGS_CELL_HEIGHT:I = 0x32

.field private static final g1_SETTINGS_MUSIC_SLIDER_HEIGHT:I = 0x28

.field private static final g1_SETTINGS_MUSIC_SLIDER_WIDTH:I = 0x96

.field private static final g1_SETTINGS_SOUND_SWITCH_HEIGHT:I = 0x28

.field private static final g1_SETTINGS_SOUND_SWITCH_WIDTH:I = 0x3c

.field private static final g1_SWITCH_CELL_HEIGHT:I = 0x19

.field private static final g1_SWITCH_CELL_LEFT_OFFSET:I = 0x8

.field private static final g1_SWITCH_CELL_TOP_OFFSET:I = 0xc

.field private static final g1_TAB_HEIGHT:I = 0x37

.field private static final g1_TITLE_HEIGHT:I = 0x32

.field public static instance:Lcom/glu/android/GlobalNav;


# instance fields
.field public DIALOG_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field public GNS_IMAGES:[Landroid/graphics/drawable/Drawable;

.field public GNS_TAB_IMAGES:[Landroid/graphics/drawable/Drawable;

.field public GNS_TAB_STRINGS:[Ljava/lang/String;

.field public m_aboutFile:Ljava/io/File;

.field public m_appID:Ljava/lang/String;

.field public m_destroyHistory:Z

.field public m_isInit:Z

.field public m_layout:Landroid/widget/LinearLayout;

.field public m_mainView:Lcom/glu/android/GlobalNavMainView;

.field public m_pushLink:Ljava/lang/String;

.field public m_tabView:Lcom/glu/android/GlobalNav$GlobalNavTabView;

.field public m_titleView:Lcom/glu/android/GlobalNav$GlobalNavTitleView;

.field public m_viewHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x32

    const/16 v2, 0x28

    const/4 v1, 0x4

    .line 58
    const/16 v0, 0x3c

    sput v0, Lcom/glu/android/GlobalNav;->SETTINGS_SOUND_SWITCH_WIDTH:I

    .line 59
    sput v2, Lcom/glu/android/GlobalNav;->SETTINGS_SOUND_SWITCH_HEIGHT:I

    .line 60
    const/16 v0, 0x19

    sput v0, Lcom/glu/android/GlobalNav;->SWITCH_CELL_HEIGHT:I

    .line 61
    const/16 v0, 0x8

    sput v0, Lcom/glu/android/GlobalNav;->SWITCH_CELL_LEFT_OFFSET:I

    .line 62
    const/16 v0, 0xc

    sput v0, Lcom/glu/android/GlobalNav;->SWITCH_CELL_TOP_OFFSET:I

    .line 63
    sput v2, Lcom/glu/android/GlobalNav;->SETTINGS_MUSIC_SLIDER_HEIGHT:I

    .line 64
    const/16 v0, 0x96

    sput v0, Lcom/glu/android/GlobalNav;->SETTINGS_MUSIC_SLIDER_WIDTH:I

    .line 65
    sput v3, Lcom/glu/android/GlobalNav;->SETTINGS_CELL_HEIGHT:I

    .line 66
    const/16 v0, 0x64

    sput v0, Lcom/glu/android/GlobalNav;->ABOUT_CELL_HEIGHT:I

    .line 67
    const/16 v0, 0x1e

    sput v0, Lcom/glu/android/GlobalNav;->BUTTON_CELL_LEFT_OFFSET:I

    .line 68
    const/4 v0, 0x5

    sput v0, Lcom/glu/android/GlobalNav;->BUTTON_CELL_TOP_OFFSET:I

    .line 69
    sput v2, Lcom/glu/android/GlobalNav;->BUTTON_CELL_BUTTON_HEIGHT:I

    .line 70
    sput v3, Lcom/glu/android/GlobalNav;->TITLE_HEIGHT:I

    .line 71
    const/16 v0, 0x37

    sput v0, Lcom/glu/android/GlobalNav;->TAB_HEIGHT:I

    .line 72
    const/16 v0, 0x1c0

    sput v0, Lcom/glu/android/GlobalNav;->DIALOG_HEIGHT:I

    .line 73
    const/16 v0, 0x120

    sput v0, Lcom/glu/android/GlobalNav;->DIALOG_WIDTH:I

    .line 129
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/glu/android/GlobalNav;->TITLE_GRADIENT_COLORS:[I

    .line 130
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/glu/android/GlobalNav;->TAB_GRADIENT_NORMAL:[I

    .line 131
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/glu/android/GlobalNav;->TAB_GRADIENT_ACTIVE:[I

    .line 132
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/glu/android/GlobalNav;->TAB_GRADIENT_PRESSED:[I

    .line 135
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GlobalNav;->instance:Lcom/glu/android/GlobalNav;

    return-void

    .line 129
    :array_0
    .array-data 4
        -0xbfbfc0
        -0xcfcfd0
        -0xd7d7d8
        -0xe7e7e8
    .end array-data

    .line 130
    :array_1
    .array-data 4
        -0x9f9fa0
        -0xafafb0
        -0xb7b7b8
        -0xc7c7c8
    .end array-data

    .line 131
    :array_2
    .array-data 4
        -0x7f7f80
        -0x8f8f90
        -0x979798
        -0xa7a7a8
    .end array-data

    .line 132
    :array_3
    .array-data 4
        -0x45c0
        -0x1055c4
        -0x185ccc
        -0x286cd0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 175
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 138
    iput-object v2, p0, Lcom/glu/android/GlobalNav;->DIALOG_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 139
    iput-object v2, p0, Lcom/glu/android/GlobalNav;->m_layout:Landroid/widget/LinearLayout;

    .line 140
    iput-object v2, p0, Lcom/glu/android/GlobalNav;->m_titleView:Lcom/glu/android/GlobalNav$GlobalNavTitleView;

    .line 141
    iput-object v2, p0, Lcom/glu/android/GlobalNav;->m_mainView:Lcom/glu/android/GlobalNavMainView;

    .line 142
    iput-object v2, p0, Lcom/glu/android/GlobalNav;->m_tabView:Lcom/glu/android/GlobalNav$GlobalNavTabView;

    .line 143
    const/4 v0, 0x1

    iput v0, p0, Lcom/glu/android/GlobalNav;->m_viewHeight:I

    .line 144
    iput-boolean v1, p0, Lcom/glu/android/GlobalNav;->m_isInit:Z

    .line 157
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/glu/android/GlobalNav;->GNS_IMAGES:[Landroid/graphics/drawable/Drawable;

    .line 160
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/glu/android/GlobalNav;->GNS_TAB_IMAGES:[Landroid/graphics/drawable/Drawable;

    .line 161
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/glu/android/GlobalNav;->GNS_TAB_STRINGS:[Ljava/lang/String;

    .line 164
    iput-object v2, p0, Lcom/glu/android/GlobalNav;->m_appID:Ljava/lang/String;

    .line 165
    iput-object v2, p0, Lcom/glu/android/GlobalNav;->m_aboutFile:Ljava/io/File;

    .line 168
    iput-boolean v1, p0, Lcom/glu/android/GlobalNav;->m_destroyHistory:Z

    .line 171
    iput-object v2, p0, Lcom/glu/android/GlobalNav;->m_pushLink:Ljava/lang/String;

    .line 177
    sput-object p0, Lcom/glu/android/GlobalNav;->instance:Lcom/glu/android/GlobalNav;

    .line 178
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v0, v0, Lcom/glu/android/GameLet;->m_nativeProperties:Lcom/glu/android/CaseInsensitiveHash;

    const-string v1, "Glu-Upsell-URL"

    invoke-virtual {v0, v1}, Lcom/glu/android/CaseInsensitiveHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/glu/android/GlobalNav;->m_pushLink:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->m_pushLink:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/glu/android/GlobalNav;->m_pushLink:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iput-object v2, p0, Lcom/glu/android/GlobalNav;->m_pushLink:Ljava/lang/String;

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/glu/android/GlobalNav;->createGNSImages()V

    .line 182
    invoke-direct {p0}, Lcom/glu/android/GlobalNav;->scaleLayoutConstants()V

    .line 183
    invoke-direct {p0}, Lcom/glu/android/GlobalNav;->fillTabArrays()V

    .line 184
    new-instance v0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;

    invoke-direct {v0, p0}, Lcom/glu/android/GlobalNav$GlobalNavTitleView;-><init>(Lcom/glu/android/GlobalNav;)V

    iput-object v0, p0, Lcom/glu/android/GlobalNav;->m_titleView:Lcom/glu/android/GlobalNav$GlobalNavTitleView;

    .line 185
    new-instance v0, Lcom/glu/android/GlobalNav$GlobalNavTabView;

    invoke-direct {v0, p0}, Lcom/glu/android/GlobalNav$GlobalNavTabView;-><init>(Lcom/glu/android/GlobalNav;)V

    iput-object v0, p0, Lcom/glu/android/GlobalNav;->m_tabView:Lcom/glu/android/GlobalNav$GlobalNavTabView;

    .line 186
    return-void
.end method

.method private createGNSImages()V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->GNS_IMAGES:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const v2, 0x7f020006

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 192
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->GNS_IMAGES:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const v2, 0x7f02001c

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 193
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->GNS_IMAGES:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    const v2, 0x7f020008

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 194
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->GNS_IMAGES:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x3

    const v2, 0x7f020009

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 195
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->GNS_IMAGES:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x4

    const v2, 0x7f02000a

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 196
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->GNS_IMAGES:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x5

    const v2, 0x7f02000b

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 197
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->GNS_IMAGES:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x6

    const v2, 0x7f020010

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 198
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->GNS_IMAGES:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x7

    const v2, 0x7f020011

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 199
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->GNS_IMAGES:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x8

    const v2, 0x7f020013

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 200
    return-void
.end method

.method private fillTabArrays()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 224
    sget-object v0, Lcom/glu/android/GNSWidgetCollection;->instance:Lcom/glu/android/GNSWidgetCollection;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/glu/android/GNSWidgetCollection;->instance:Lcom/glu/android/GNSWidgetCollection;

    invoke-virtual {v0}, Lcom/glu/android/GNSWidgetCollection;->shouldPaint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->GNS_TAB_IMAGES:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/glu/android/GlobalNav;->GNS_IMAGES:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    aput-object v1, v0, v3

    .line 228
    :goto_0
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->GNS_TAB_IMAGES:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/glu/android/GlobalNav;->GNS_IMAGES:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    aput-object v1, v0, v6

    .line 229
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->GNS_TAB_IMAGES:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/glu/android/GlobalNav;->GNS_IMAGES:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v4

    aput-object v1, v0, v4

    .line 230
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->GNS_TAB_IMAGES:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/glu/android/GlobalNav;->GNS_IMAGES:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    aput-object v1, v0, v7

    .line 231
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->GNS_TAB_IMAGES:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/glu/android/GlobalNav;->GNS_IMAGES:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v5

    aput-object v1, v0, v5

    .line 233
    sget-object v0, Lcom/glu/android/GNSWidgetCollection;->instance:Lcom/glu/android/GNSWidgetCollection;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/glu/android/GNSWidgetCollection;->instance:Lcom/glu/android/GNSWidgetCollection;

    invoke-virtual {v0}, Lcom/glu/android/GNSWidgetCollection;->shouldPaint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->GNS_TAB_STRINGS:[Ljava/lang/String;

    const v1, 0x7f070035

    invoke-static {v1}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 237
    :goto_1
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->GNS_TAB_STRINGS:[Ljava/lang/String;

    const v1, 0x7f070036

    invoke-static {v1}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 238
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->GNS_TAB_STRINGS:[Ljava/lang/String;

    const v1, 0x7f070037

    invoke-static {v1}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 239
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->GNS_TAB_STRINGS:[Ljava/lang/String;

    const v1, 0x7f070038

    invoke-static {v1}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 240
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->GNS_TAB_STRINGS:[Ljava/lang/String;

    const v1, 0x7f070039

    invoke-static {v1}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 241
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->GNS_TAB_IMAGES:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/glu/android/GlobalNav;->GNS_IMAGES:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v3

    aput-object v1, v0, v3

    goto :goto_0

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->GNS_TAB_STRINGS:[Ljava/lang/String;

    const v1, 0x7f070034

    invoke-static {v1}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_1
.end method

.method private scaleLayoutConstants()V
    .locals 3

    .prologue
    const/16 v2, 0x32

    const/16 v1, 0x28

    .line 204
    const/16 v0, 0x3c

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GlobalNav;->SETTINGS_SOUND_SWITCH_WIDTH:I

    .line 205
    invoke-static {v1}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GlobalNav;->SETTINGS_SOUND_SWITCH_HEIGHT:I

    .line 206
    const/16 v0, 0x19

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GlobalNav;->SWITCH_CELL_HEIGHT:I

    .line 207
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GlobalNav;->SWITCH_CELL_LEFT_OFFSET:I

    .line 208
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GlobalNav;->SWITCH_CELL_TOP_OFFSET:I

    .line 209
    invoke-static {v1}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GlobalNav;->SETTINGS_MUSIC_SLIDER_HEIGHT:I

    .line 210
    const/16 v0, 0x96

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GlobalNav;->SETTINGS_MUSIC_SLIDER_WIDTH:I

    .line 211
    invoke-static {v2}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GlobalNav;->SETTINGS_CELL_HEIGHT:I

    .line 212
    const/16 v0, 0x64

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GlobalNav;->ABOUT_CELL_HEIGHT:I

    .line 213
    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GlobalNav;->BUTTON_CELL_LEFT_OFFSET:I

    .line 214
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GlobalNav;->BUTTON_CELL_TOP_OFFSET:I

    .line 215
    invoke-static {v1}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GlobalNav;->BUTTON_CELL_BUTTON_HEIGHT:I

    .line 216
    invoke-static {v2}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GlobalNav;->TITLE_HEIGHT:I

    .line 217
    const/16 v0, 0x37

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GlobalNav;->TAB_HEIGHT:I

    .line 218
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v0

    sput v0, Lcom/glu/android/GlobalNav;->DIALOG_WIDTH:I

    .line 219
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v0

    sput v0, Lcom/glu/android/GlobalNav;->DIALOG_HEIGHT:I

    .line 220
    return-void
.end method


# virtual methods
.method public getCurrentTabString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->GNS_TAB_STRINGS:[Ljava/lang/String;

    iget-object v1, p0, Lcom/glu/android/GlobalNav;->m_tabView:Lcom/glu/android/GlobalNav$GlobalNavTabView;

    iget-object v1, v1, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_tabIds:[I

    iget-object v2, p0, Lcom/glu/android/GlobalNav;->m_tabView:Lcom/glu/android/GlobalNav$GlobalNavTabView;

    invoke-virtual {v2}, Lcom/glu/android/GlobalNav$GlobalNavTabView;->getSelectedTab()I

    move-result v2

    aget v1, v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getCurrentTabURL()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    .line 322
    iget-object v3, p0, Lcom/glu/android/GlobalNav;->m_tabView:Lcom/glu/android/GlobalNav$GlobalNavTabView;

    iget-object v3, v3, Lcom/glu/android/GlobalNav$GlobalNavTabView;->m_tabIds:[I

    iget-object v4, p0, Lcom/glu/android/GlobalNav;->m_tabView:Lcom/glu/android/GlobalNav$GlobalNavTabView;

    invoke-virtual {v4}, Lcom/glu/android/GlobalNav$GlobalNavTabView;->getSelectedTab()I

    move-result v4

    aget v0, v3, v4

    .line 323
    .local v0, "curTabID":I
    sget-object v3, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v2, v3, Lcom/glu/android/GameLet;->m_deviceID:Ljava/lang/String;

    .line 325
    .local v2, "userID":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    const-string v3, "http://apps.glu.com/"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 327
    .local v1, "urlToReturn":Ljava/lang/String;
    if-ne v0, v8, :cond_0

    .line 330
    const-string v3, "http://www.pamelabowman.org/yt_market_test.htm"

    .line 356
    :goto_0
    return-object v3

    .line 332
    :cond_0
    if-ne v0, v5, :cond_1

    .line 333
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gnav/content/blog/?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&src=%s&p=android&n=facebook&l=en_US&mobid=%s"

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/glu/android/GlobalNav;->m_appID:Ljava/lang/String;

    aput-object v7, v5, v6

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GNS URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    move-object v3, v1

    .line 356
    goto :goto_0

    .line 334
    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gnav/content/game/?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 336
    :cond_2
    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gnav/feedback/?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 346
    :cond_3
    const-string v3, "Warning: getCurrentTabURL() called in invalid tab."

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 347
    const-string v3, "http://www.glu.com"

    goto/16 :goto_0
.end method

.method public handleBackKey()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->m_mainView:Lcom/glu/android/GlobalNavMainView;

    invoke-virtual {v0}, Lcom/glu/android/GlobalNavMainView;->isSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->closeGNSDialog()V

    .line 298
    :cond_0
    return-void
.end method

.method public init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 246
    iget-boolean v0, p0, Lcom/glu/android/GlobalNav;->m_isInit:Z

    if-nez v0, :cond_0

    .line 248
    iput-boolean v4, p0, Lcom/glu/android/GlobalNav;->m_isInit:Z

    .line 249
    const-string v0, "~~ GlobalNav.init()"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 251
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lcom/glu/android/GlobalNav;->DIALOG_WIDTH:I

    sget v2, Lcom/glu/android/GlobalNav;->DIALOG_HEIGHT:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/glu/android/GlobalNav;->DIALOG_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 254
    invoke-virtual {p0, v4}, Lcom/glu/android/GlobalNav;->setOrientation(I)V

    .line 255
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/glu/android/GlobalNav;->setBackgroundColor(I)V

    .line 258
    new-instance v0, Lcom/glu/android/GlobalNav$GlobalNavTitleView;

    invoke-direct {v0, p0}, Lcom/glu/android/GlobalNav$GlobalNavTitleView;-><init>(Lcom/glu/android/GlobalNav;)V

    iput-object v0, p0, Lcom/glu/android/GlobalNav;->m_titleView:Lcom/glu/android/GlobalNav$GlobalNavTitleView;

    .line 259
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->m_titleView:Lcom/glu/android/GlobalNav$GlobalNavTitleView;

    sget v1, Lcom/glu/android/GlobalNav;->DIALOG_WIDTH:I

    sget v2, Lcom/glu/android/GlobalNav;->TITLE_HEIGHT:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/glu/android/GlobalNav;->addView(Landroid/view/View;II)V

    .line 262
    new-instance v0, Lcom/glu/android/GlobalNavMainView;

    invoke-direct {v0}, Lcom/glu/android/GlobalNavMainView;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GlobalNav;->m_mainView:Lcom/glu/android/GlobalNavMainView;

    .line 263
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->m_mainView:Lcom/glu/android/GlobalNavMainView;

    sget v1, Lcom/glu/android/GlobalNav;->DIALOG_WIDTH:I

    sget v2, Lcom/glu/android/GlobalNav;->DIALOG_HEIGHT:I

    sget v3, Lcom/glu/android/GlobalNav;->TAB_HEIGHT:I

    sub-int/2addr v2, v3

    sget v3, Lcom/glu/android/GlobalNav;->TITLE_HEIGHT:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/glu/android/GlobalNav;->addView(Landroid/view/View;II)V

    .line 266
    new-instance v0, Lcom/glu/android/GlobalNav$GlobalNavTabView;

    invoke-direct {v0, p0}, Lcom/glu/android/GlobalNav$GlobalNavTabView;-><init>(Lcom/glu/android/GlobalNav;)V

    iput-object v0, p0, Lcom/glu/android/GlobalNav;->m_tabView:Lcom/glu/android/GlobalNav$GlobalNavTabView;

    .line 267
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->m_tabView:Lcom/glu/android/GlobalNav$GlobalNavTabView;

    sget v1, Lcom/glu/android/GlobalNav;->DIALOG_WIDTH:I

    sget v2, Lcom/glu/android/GlobalNav;->TAB_HEIGHT:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/glu/android/GlobalNav;->addView(Landroid/view/View;II)V

    .line 269
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->m_titleView:Lcom/glu/android/GlobalNav$GlobalNavTitleView;

    invoke-virtual {v0, v5}, Lcom/glu/android/GlobalNav$GlobalNavTitleView;->setFocusable(Z)V

    .line 270
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->m_mainView:Lcom/glu/android/GlobalNavMainView;

    invoke-virtual {v0, v4}, Lcom/glu/android/GlobalNavMainView;->setFocusable(Z)V

    .line 271
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->m_tabView:Lcom/glu/android/GlobalNav$GlobalNavTabView;

    invoke-virtual {v0, v5}, Lcom/glu/android/GlobalNav$GlobalNavTabView;->setFocusable(Z)V

    .line 272
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->m_mainView:Lcom/glu/android/GlobalNavMainView;

    invoke-virtual {v0}, Lcom/glu/android/GlobalNavMainView;->requestFocus()Z

    .line 276
    :cond_0
    return-void
.end method

.method public setAboutText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 303
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 304
    .local v0, "contents":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const-string v1, "<html><head></head><body>"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 306
    const-string v1, "</body></html>"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v1, p0, Lcom/glu/android/GlobalNav;->m_mainView:Lcom/glu/android/GlobalNavMainView;

    invoke-virtual {v1, p1}, Lcom/glu/android/GlobalNavMainView;->setAboutText(Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public setAppID(Ljava/lang/String;)V
    .locals 0
    .param p1, "appID"    # Ljava/lang/String;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/glu/android/GlobalNav;->m_appID:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public setTab(I)V
    .locals 4
    .param p1, "tabID"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->m_tabView:Lcom/glu/android/GlobalNav$GlobalNavTabView;

    invoke-virtual {v0, p1}, Lcom/glu/android/GlobalNav$GlobalNavTabView;->setSelectedTab(I)V

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/GlobalNav;->m_destroyHistory:Z

    .line 284
    if-eqz p1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->m_mainView:Lcom/glu/android/GlobalNavMainView;

    invoke-virtual {p0}, Lcom/glu/android/GlobalNav;->getCurrentTabURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/glu/android/GlobalNavMainView;->loadUrl(Ljava/lang/String;)V

    .line 289
    :goto_0
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->m_mainView:Lcom/glu/android/GlobalNavMainView;

    invoke-virtual {v0}, Lcom/glu/android/GlobalNavMainView;->invalidate()V

    .line 290
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->m_mainView:Lcom/glu/android/GlobalNavMainView;

    const-string v1, "<html><body></body></html>"

    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v2, v3}, Lcom/glu/android/GlobalNavMainView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setValidTabs([Z)V
    .locals 1
    .param p1, "validTabs"    # [Z

    .prologue
    .line 366
    iget-object v0, p0, Lcom/glu/android/GlobalNav;->m_tabView:Lcom/glu/android/GlobalNav$GlobalNavTabView;

    invoke-virtual {v0, p1}, Lcom/glu/android/GlobalNav$GlobalNavTabView;->setVisibleTabs([Z)V

    .line 367
    return-void
.end method
