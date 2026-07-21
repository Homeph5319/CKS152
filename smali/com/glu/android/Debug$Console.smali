.class public Lcom/glu/android/Debug$Console;
.super Landroid/view/View;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Console"
.end annotation


# static fields
.field private static final PH_TEST_SECRET:Ljava/lang/String; = "b34a08753ecb447d82455492dad82bcd"

.field private static final PH_TEST_TOKEN:Ljava/lang/String; = "eff4899f61bb429594ae32060903c8f1"


# instance fields
.field private final BASE_COLOR:I

.field private final BASE_COLOR_SHADOW:I

.field private final BG_COLOR:I

.field private final COMMAND_FPS:Ljava/lang/String;

.field private final COMMAND_GLOBALNAV:Ljava/lang/String;

.field private final COMMAND_GOOGLE_IAP_SET_RESULT:Ljava/lang/String;

.field private final COMMAND_HELP:Ljava/lang/String;

.field private final COMMAND_MOVE_AD:Ljava/lang/String;

.field private final COMMAND_OEMPAUSE:Ljava/lang/String;

.field private final COMMAND_OEMRESUME:Ljava/lang/String;

.field private final COMMAND_PAUSE:Ljava/lang/String;

.field private final COMMAND_PHONE_STATS:Ljava/lang/String;

.field private final COMMAND_PLAYHAVEN:Ljava/lang/String;

.field private final COMMAND_PROGRAM:Ljava/lang/String;

.field private final COMMAND_PROGRAM_WAIT:Ljava/lang/String;

.field private final COMMAND_TEST_IAP_ASYNCHRONOUS_ITEM:Ljava/lang/String;

.field private final COMMAND_TEST_IAP_ASYNCHRONOUS_ITEM2:Ljava/lang/String;

.field private final COMMAND_TEST_IAP_CONFIG:Ljava/lang/String;

.field private final COMMAND_TEST_IAP_RANDOM_ASYNCHRONOUS:Ljava/lang/String;

.field private final COMMAND_TEST_IAP_SET_RESTORE:Ljava/lang/String;

.field private final COMMAND_TEST_IAP_SET_RESULT:Ljava/lang/String;

.field private final COMMAND_THROTTLE_DELAY:Ljava/lang/String;

.field private final COMMAND_TOUCH_MOVE:Ljava/lang/String;

.field private final COMMAND_TOUCH_PRESS:Ljava/lang/String;

.field private final COMMAND_TOUCH_RELEASE:Ljava/lang/String;

.field private final COMMAND_VOIP_CONNECT:Ljava/lang/String;

.field private final COMMAND_VOIP_DISCONNECT:Ljava/lang/String;

.field private final COMMAND_VOIP_RECORD:Ljava/lang/String;

.field public final GIAP_ITEM_FAILURE:Ljava/lang/String;

.field public final GIAP_ITEM_REFUNDED:Ljava/lang/String;

.field public final GIAP_ITEM_SUCCESS:Ljava/lang/String;

.field public final GIAP_ITEM_UNAVAILABLE:Ljava/lang/String;

.field public GOOGLE_IAP_OVERRIDE_ITEM:Ljava/lang/String;

.field private final MAX_FPS_HISTORY:I

.field private final MAX_LOG_HISTORY:I

.field private final SHORT_FPS_HISTORY:I

.field private m_adLocationOverride:Z

.field private m_bgPaint:Landroid/graphics/Paint;

.field private m_entryBuffer:[C

.field private m_fpsEnabled:Z

.field private m_fpsLog:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_fpsText:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_logBuffer:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_program:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_textEntryVisible:Z

.field private m_textPaint:Landroid/graphics/Paint;

.field private m_tickDelay:I

.field private m_tickStopped:Z

.field private m_wrappedLogBuffer:Ljava/util/Vector;
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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 704
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 613
    const/16 v0, 0x32

    iput v0, p0, Lcom/glu/android/Debug$Console;->MAX_FPS_HISTORY:I

    .line 614
    const/16 v0, 0xa

    iput v0, p0, Lcom/glu/android/Debug$Console;->SHORT_FPS_HISTORY:I

    .line 615
    const/16 v0, 0x1e

    iput v0, p0, Lcom/glu/android/Debug$Console;->MAX_LOG_HISTORY:I

    .line 617
    const-string v0, "fps"

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->COMMAND_FPS:Ljava/lang/String;

    .line 618
    const-string v0, "setadat"

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->COMMAND_MOVE_AD:Ljava/lang/String;

    .line 619
    const-string v0, "delay"

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->COMMAND_THROTTLE_DELAY:Ljava/lang/String;

    .line 620
    const-string v0, "stoptick"

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->COMMAND_PAUSE:Ljava/lang/String;

    .line 621
    const-string v0, "oempause"

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->COMMAND_OEMPAUSE:Ljava/lang/String;

    .line 622
    const-string v0, "oemresume"

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->COMMAND_OEMRESUME:Ljava/lang/String;

    .line 623
    const-string v0, "globalnav"

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->COMMAND_GLOBALNAV:Ljava/lang/String;

    .line 624
    const-string v0, "phone"

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->COMMAND_PHONE_STATS:Ljava/lang/String;

    .line 627
    const-string v0, "tp"

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->COMMAND_TOUCH_PRESS:Ljava/lang/String;

    .line 628
    const-string v0, "tm"

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->COMMAND_TOUCH_MOVE:Ljava/lang/String;

    .line 629
    const-string v0, "tr"

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->COMMAND_TOUCH_RELEASE:Ljava/lang/String;

    .line 635
    const-string v0, "ph"

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->COMMAND_PLAYHAVEN:Ljava/lang/String;

    .line 638
    const-string v0, "iapasync"

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->COMMAND_TEST_IAP_ASYNCHRONOUS_ITEM:Ljava/lang/String;

    .line 639
    const-string v0, "iapasync2"

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->COMMAND_TEST_IAP_ASYNCHRONOUS_ITEM2:Ljava/lang/String;

    .line 640
    const-string v0, "iaprandasync"

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->COMMAND_TEST_IAP_RANDOM_ASYNCHRONOUS:Ljava/lang/String;

    .line 641
    const-string v0, "iapresult"

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->COMMAND_TEST_IAP_SET_RESULT:Ljava/lang/String;

    .line 642
    const-string v0, "iaprestore"

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->COMMAND_TEST_IAP_SET_RESTORE:Ljava/lang/String;

    .line 643
    const-string v0, "iapcfg"

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->COMMAND_TEST_IAP_CONFIG:Ljava/lang/String;

    .line 647
    const-string v0, "giapresult"

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->COMMAND_GOOGLE_IAP_SET_RESULT:Ljava/lang/String;

    .line 650
    const-string v0, "voiprec"

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->COMMAND_VOIP_RECORD:Ljava/lang/String;

    .line 651
    const-string v0, "voipconn"

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->COMMAND_VOIP_CONNECT:Ljava/lang/String;

    .line 652
    const-string v0, "voipdc"

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->COMMAND_VOIP_DISCONNECT:Ljava/lang/String;

    .line 655
    const-string v0, "help"

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->COMMAND_HELP:Ljava/lang/String;

    .line 658
    const-string v0, "run"

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->COMMAND_PROGRAM:Ljava/lang/String;

    .line 659
    const-string v0, "wait"

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->COMMAND_PROGRAM_WAIT:Ljava/lang/String;

    .line 661
    const/4 v0, -0x1

    iput v0, p0, Lcom/glu/android/Debug$Console;->BASE_COLOR:I

    .line 662
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/glu/android/Debug$Console;->BASE_COLOR_SHADOW:I

    .line 663
    const v0, -0x3fffffc0    # -2.0000153f

    iput v0, p0, Lcom/glu/android/Debug$Console;->BG_COLOR:I

    .line 666
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->m_logBuffer:Ljava/util/Vector;

    .line 667
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->m_wrappedLogBuffer:Ljava/util/Vector;

    .line 668
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->m_fpsLog:Ljava/util/Vector;

    .line 669
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->m_fpsText:Ljava/util/Vector;

    .line 671
    iput-boolean v1, p0, Lcom/glu/android/Debug$Console;->m_textEntryVisible:Z

    .line 672
    const/16 v0, 0x50

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->m_entryBuffer:[C

    .line 673
    iput-object v2, p0, Lcom/glu/android/Debug$Console;->m_textPaint:Landroid/graphics/Paint;

    .line 674
    iput-object v2, p0, Lcom/glu/android/Debug$Console;->m_bgPaint:Landroid/graphics/Paint;

    .line 677
    iput-boolean v1, p0, Lcom/glu/android/Debug$Console;->m_fpsEnabled:Z

    .line 678
    iput v1, p0, Lcom/glu/android/Debug$Console;->m_tickDelay:I

    .line 679
    iput-boolean v1, p0, Lcom/glu/android/Debug$Console;->m_tickStopped:Z

    .line 680
    iput-boolean v1, p0, Lcom/glu/android/Debug$Console;->m_adLocationOverride:Z

    .line 683
    iput-object v2, p0, Lcom/glu/android/Debug$Console;->m_program:Ljava/util/Vector;

    .line 1259
    const-string v0, "android.test.purchased"

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->GIAP_ITEM_SUCCESS:Ljava/lang/String;

    .line 1260
    const-string v0, "android.test.canceled"

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->GIAP_ITEM_FAILURE:Ljava/lang/String;

    .line 1261
    const-string v0, "android.test.refunded"

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->GIAP_ITEM_REFUNDED:Ljava/lang/String;

    .line 1262
    const-string v0, "android.test.item_unavailable"

    iput-object v0, p0, Lcom/glu/android/Debug$Console;->GIAP_ITEM_UNAVAILABLE:Ljava/lang/String;

    .line 1263
    iput-object v2, p0, Lcom/glu/android/Debug$Console;->GOOGLE_IAP_OVERRIDE_ITEM:Ljava/lang/String;

    .line 705
    sput-object p0, Lcom/glu/android/Debug;->CONSOLE:Lcom/glu/android/Debug$Console;

    .line 708
    return-void
.end method

.method private clearCurrentEntry()V
    .locals 1

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/glu/android/Debug$Console;->m_entryBuffer:[C

    invoke-static {v0}, Lcom/glu/android/GluUtil;->zero([C)V

    .line 1124
    return-void
.end method

.method private drawTextNice(Landroid/graphics/Canvas;Ljava/lang/String;II)V
    .locals 3
    .param p1, "g"    # Landroid/graphics/Canvas;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/glu/android/Debug$Console;->m_textPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1129
    add-int/lit8 v0, p3, 0x1

    int-to-float v0, v0

    add-int/lit8 v1, p4, 0x1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/glu/android/Debug$Console;->m_textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1130
    iget-object v0, p0, Lcom/glu/android/Debug$Console;->m_textPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1131
    int-to-float v0, p3

    int-to-float v1, p4

    iget-object v2, p0, Lcom/glu/android/Debug$Console;->m_textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1132
    return-void
.end method

.method public static getDesiredHeight()I
    .locals 1

    .prologue
    .line 1253
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public static getDesiredWidth()I
    .locals 1

    .prologue
    .line 1254
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public static getDesiredX()I
    .locals 2

    .prologue
    .line 1255
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/glu/android/Debug$Console;->getDesiredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public static getDesiredY()I
    .locals 2

    .prologue
    .line 1256
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v0

    invoke-static {}, Lcom/glu/android/Debug$Console;->getDesiredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private getTextWidth()I
    .locals 1

    .prologue
    .line 1252
    invoke-static {}, Lcom/glu/android/Debug$Console;->getDesiredWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    return v0
.end method

.method private printHelp()V
    .locals 1

    .prologue
    .line 1053
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/glu/android/Debug$Console;->printHelp(Ljava/lang/String;)V

    return-void
.end method

.method private printHelp(Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 1056
    if-nez p1, :cond_0

    .line 1058
    const-string v0, "Welcome. Valid commands: fps, setadat, delay, stoptick, oempause, oemresume, tp, tm, tr, phone, iapasync, ph, iapasync2, iapresult, iaprestore, iaprandasync, iapcfg, giapresult, voiprec, voipconn, voipdc, run, wait"

    invoke-virtual {p0, v0}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    .line 1067
    const-string v0, "Type help [command] for more info."

    invoke-virtual {p0, v0}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    .line 1119
    :goto_0
    return-void

    .line 1069
    :cond_0
    const-string v0, "help"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1070
    const-string v0, "help [topic]: Get information on a topic, like you just did..."

    invoke-virtual {p0, v0}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto :goto_0

    .line 1071
    :cond_1
    const-string v0, "fps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1072
    const-string v0, "fps [0/1]: Hide/show FPS overlay"

    invoke-virtual {p0, v0}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto :goto_0

    .line 1073
    :cond_2
    const-string v0, "setadat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1074
    const-string v0, "setadat [x] [y]: Move ad to (x,y) and locks it there. If x,y not included as parameters, the game code will regain control of this."

    invoke-virtual {p0, v0}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto :goto_0

    .line 1075
    :cond_3
    const-string v0, "delay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1076
    const-string v0, "delay [ms]: Adds a delay of [ms] to every tick."

    invoke-virtual {p0, v0}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto :goto_0

    .line 1077
    :cond_4
    const-string v0, "stoptick"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1078
    const-string v0, "stoptick [0/1]: If set to 1, will stop all ticks to the game. Warning: May cause lock-up."

    invoke-virtual {p0, v0}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto :goto_0

    .line 1079
    :cond_5
    const-string v0, "oempause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1080
    const-string v0, "oempause: Sends an OEM pause event to the game."

    invoke-virtual {p0, v0}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto :goto_0

    .line 1081
    :cond_6
    const-string v0, "oemresume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1082
    const-string v0, "oemresume: Sends an OEM resume event to the game."

    invoke-virtual {p0, v0}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto :goto_0

    .line 1083
    :cond_7
    const-string v0, "globalnav"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1084
    const-string v0, "globalnav: Opens a vanilla GlobalNav screen, defaulting to the About screen tab with fake about text. Warning: Closing this screen can mess around with game logic, as the callback still gets called."

    invoke-virtual {p0, v0}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto :goto_0

    .line 1085
    :cond_8
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1086
    const-string v0, "phone: Prints some useful stats about the phone."

    invoke-virtual {p0, v0}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto :goto_0

    .line 1087
    :cond_9
    const-string v0, "tp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1088
    const-string v0, "tp [x] [y]: Sends a touch pressed event to the game. Warning: If the game is scaled, so too will this touch event."

    invoke-virtual {p0, v0}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1089
    :cond_a
    const-string v0, "tm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1090
    const-string v0, "tm [x] [y]: Sends a touch moved event to the game. Warning: If the game is scaled, so too will this touch event."

    invoke-virtual {p0, v0}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1091
    :cond_b
    const-string v0, "tr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1092
    const-string v0, "tr [x] [y]: Sends a touch released event to the game. Warning: If the game is scaled, so too will this touch event."

    invoke-virtual {p0, v0}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1093
    :cond_c
    const-string v0, "iapasync"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1094
    const-string v0, "iapasync [appleProductID]: Queue an asynchronous item with the supplied product ID. You must be using test IAP."

    invoke-virtual {p0, v0}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1095
    :cond_d
    const-string v0, "iapasync2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1096
    const-string v0, "iapasync2 [appleProductID]: Queue an second asynchronous item with the supplied product ID. This will allow testing an edge case where multiple IAP items are awarded simultaneously. You must be using test IAP and have the first configured."

    invoke-virtual {p0, v0}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1097
    :cond_e
    const-string v0, "iapresult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1098
    const-string v0, "iapresult [int]: Rig the result of the next IAP purchase. Values:\n1=success 2=netrefused 3=timeout 4=noconnection 5=failimmediate 6=notinregion 7=usercancel"

    invoke-virtual {p0, v0}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1099
    :cond_f
    const-string v0, "iaprestore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1100
    const-string v0, "iaprestore [0/1]: Turns off/on simulation of a currently existing non-consumable IAP item being restored. Only works if your app calls querySingleProduct()"

    invoke-virtual {p0, v0}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1101
    :cond_10
    const-string v0, "iaprandasync"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1102
    const-string v0, "iaprandasync [1/2]: Queues one or two random asynchronous IAP items, since queueing a specific one takes forever to type."

    invoke-virtual {p0, v0}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1103
    :cond_11
    const-string v0, "iapcfg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1104
    const-string v0, "iapcfg: Print current test IAP configuration."

    invoke-virtual {p0, v0}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1105
    :cond_12
    const-string v0, "giapresult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1106
    const-string v0, "giapresult [int]: Rig result of next Google IAP purchase. 0=clear 1=success 2=failure 3=refunded 4=unavailable"

    invoke-virtual {p0, v0}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1107
    :cond_13
    const-string v0, "voiprec"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1108
    const-string v0, "run [1-3]: 1=start recording, 2=stop recording, 3=playback"

    invoke-virtual {p0, v0}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1109
    :cond_14
    const-string v0, "voipconn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1110
    const-string v0, "voipconn [ipAddress]: Connect to a user via IP address."

    invoke-virtual {p0, v0}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1111
    :cond_15
    const-string v0, "voipdc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1112
    const-string v0, "voipdc: Disconnect from any P2P."

    invoke-virtual {p0, v0}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1113
    :cond_16
    const-string v0, "run"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1114
    const-string v0, "run [filename]: Run a script, which is just a simple sequential list of commands in a file. Filename is relative to your SD card root.\nExample: run touchseq"

    invoke-virtual {p0, v0}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1115
    :cond_17
    const-string v0, "wait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1116
    const-string v0, "wait [int]: Only works in programs. Wait for n ticks."

    invoke-virtual {p0, v0}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1118
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No help available for \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private setTextEntryVisible(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    const/16 v4, 0x9

    .line 731
    iget-boolean v1, p0, Lcom/glu/android/Debug$Console;->m_textEntryVisible:Z

    if-ne v1, p1, :cond_1

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 733
    :cond_1
    iput-boolean p1, p0, Lcom/glu/android/Debug$Console;->m_textEntryVisible:Z

    .line 734
    invoke-virtual {p0}, Lcom/glu/android/Debug$Console;->determineNeedsToBeDisplayed()V

    .line 736
    sget-object v1, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-boolean v1, v1, Lcom/glu/android/GameLet;->m_keyboardSupported:Z

    if-nez v1, :cond_0

    .line 739
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    div-int/lit8 v0, v1, 0x10

    .line 741
    .local v0, "bumpUpConsole":I
    iget-boolean v1, p0, Lcom/glu/android/Debug$Console;->m_textEntryVisible:Z

    if-eqz v1, :cond_2

    .line 743
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/glu/android/GluUtil;->showKeyboard(Z)V

    .line 744
    sget-object v1, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    invoke-static {}, Lcom/glu/android/Debug$Console;->getDesiredX()I

    move-result v2

    invoke-static {}, Lcom/glu/android/Debug$Console;->getDesiredY()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v4, v2, v3}, Lcom/glu/android/GluCanvasOverlayGroup;->setViewXY(III)V

    goto :goto_0

    .line 748
    :cond_2
    invoke-static {}, Lcom/glu/android/GluUtil;->hideKeyboard()V

    .line 749
    sget-object v1, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    invoke-static {}, Lcom/glu/android/Debug$Console;->getDesiredX()I

    move-result v2

    invoke-static {}, Lcom/glu/android/Debug$Console;->getDesiredY()I

    move-result v3

    invoke-virtual {v1, v4, v2, v3}, Lcom/glu/android/GluCanvasOverlayGroup;->setViewXY(III)V

    goto :goto_0
.end method

.method private submitCurrentEntryBuffer()V
    .locals 24

    .prologue
    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/glu/android/Debug$Console;->m_entryBuffer:[C

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/glu/android/GluUtil;->nativeCharArrayLen([C)I

    move-result v13

    .line 803
    .local v13, "len":I
    if-nez v13, :cond_1

    .line 1051
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/glu/android/Debug$Console;->m_entryBuffer:[C

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v13}, Ljava/lang/String;-><init>([CII)V

    .line 807
    .local v18, "userEntry":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "> "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    .line 808
    const-string v22, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/glu/android/GluUtil;->simpleTokenizer(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v4

    .line 809
    .local v4, "args":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v22

    if-eqz v22, :cond_0

    .line 812
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 814
    .local v5, "command":Ljava/lang/String;
    :try_start_0
    const-string v22, "fps"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 816
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    const/16 v22, 0x1

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->setFPSEnabled(Z)V

    .line 817
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "FPS Enabled: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/glu/android/Debug$Console;->m_fpsEnabled:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1050
    :cond_2
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/glu/android/Debug$Console;->clearCurrentEntry()V

    goto/16 :goto_0

    .line 816
    :cond_3
    const/16 v22, 0x0

    goto :goto_1

    .line 819
    :cond_4
    :try_start_1
    const-string v22, "setadat"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 821
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 823
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/glu/android/Debug$Console;->m_adLocationOverride:Z

    .line 824
    const-string v22, "Ad unlocked. Game will control x,y."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1046
    :catch_0
    move-exception v8

    .line 1047
    .local v8, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/glu/android/Debug$Console;->printHelp(Ljava/lang/String;)V

    goto :goto_2

    .line 828
    .end local v8    # "ex":Ljava/lang/Exception;
    :cond_5
    const/16 v22, 0x1

    :try_start_2
    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 829
    .local v20, "x":I
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 830
    .local v21, "y":I
    sget-object v22, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/glu/android/GluCanvasOverlayGroup;->setViewXY(III)V

    .line 831
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/glu/android/Debug$Console;->m_adLocationOverride:Z

    .line 832
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Banner moved to ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ") and locked there"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 835
    .end local v20    # "x":I
    .end local v21    # "y":I
    :cond_6
    const-string v22, "ph"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 837
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 838
    .local v7, "event":I
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_7

    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 839
    .local v12, "iParam":I
    :goto_3
    const/16 v16, 0x0

    .line 840
    .local v16, "sParam":Ljava/lang/String;
    const/4 v11, 0x3

    .local v11, "i":I
    :goto_4
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v11, v0, :cond_9

    .line 842
    if-nez v16, :cond_8

    .line 843
    invoke-virtual {v4, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "sParam":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 840
    .restart local v16    # "sParam":Ljava/lang/String;
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 838
    .end local v11    # "i":I
    .end local v12    # "iParam":I
    .end local v16    # "sParam":Ljava/lang/String;
    :cond_7
    const/4 v12, 0x0

    goto :goto_3

    .line 845
    .restart local v11    # "i":I
    .restart local v12    # "iParam":I
    .restart local v16    # "sParam":Ljava/lang/String;
    :cond_8
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v4, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_5

    .line 847
    :cond_9
    if-nez v16, :cond_a

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v7, v0, :cond_a

    .line 849
    const-string v22, "super secret auto token/secret"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    .line 850
    const/16 v22, 0x1

    const-string v23, "eff4899f61bb429594ae32060903c8f1"

    invoke-static/range {v23 .. v23}, Lcom/glu/android/GluUtil;->stringToNativeByteArray(Ljava/lang/String;)[B

    move-result-object v23

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v12, v1}, Lcom/glu/android/GluPlayHaven;->playHavenEvent(II[B)I

    .line 851
    const/16 v22, 0x2

    const-string v23, "b34a08753ecb447d82455492dad82bcd"

    invoke-static/range {v23 .. v23}, Lcom/glu/android/GluUtil;->stringToNativeByteArray(Ljava/lang/String;)[B

    move-result-object v23

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v12, v1}, Lcom/glu/android/GluPlayHaven;->playHavenEvent(II[B)I

    goto/16 :goto_2

    .line 855
    :cond_a
    if-nez v16, :cond_b

    const/16 v22, 0x0

    :goto_6
    move-object/from16 v0, v22

    invoke-static {v7, v12, v0}, Lcom/glu/android/GluPlayHaven;->playHavenEvent(II[B)I

    move-result v15

    .line 856
    .local v15, "ret":I
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ret="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 855
    .end local v15    # "ret":I
    :cond_b
    invoke-static/range {v16 .. v16}, Lcom/glu/android/GluUtil;->stringToNativeByteArray(Ljava/lang/String;)[B

    move-result-object v22

    goto :goto_6

    .line 859
    .end local v7    # "event":I
    .end local v11    # "i":I
    .end local v12    # "iParam":I
    .end local v16    # "sParam":Ljava/lang/String;
    :cond_c
    const-string v22, "delay"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 861
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/glu/android/Debug$Console;->m_tickDelay:I

    .line 862
    move-object/from16 v0, p0

    iget v0, v0, Lcom/glu/android/Debug$Console;->m_tickDelay:I

    move/from16 v22, v0

    if-gez v22, :cond_d

    .line 863
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/glu/android/Debug$Console;->m_tickDelay:I

    .line 864
    :cond_d
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Tick Delay: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/glu/android/Debug$Console;->m_tickDelay:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 866
    :cond_e
    const-string v22, "stoptick"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 868
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    const/16 v22, 0x1

    :goto_7
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/glu/android/Debug$Console;->m_tickStopped:Z

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Tick stopped: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/glu/android/Debug$Console;->m_tickStopped:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    const/16 v22, 0x0

    goto :goto_7

    .line 870
    :cond_10
    const-string v22, "oempause"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 872
    sget-object v22, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual/range {v22 .. v22}, Lcom/glu/android/GameLet;->suspendNative()V

    .line 873
    const-string v22, "Native paused."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 875
    :cond_11
    const-string v22, "oemresume"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 877
    sget-object v22, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual/range {v22 .. v22}, Lcom/glu/android/GameLet;->resumeNative()V

    .line 878
    const-string v22, "Native resumed."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 880
    :cond_12
    const-string v22, "tp"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 882
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 883
    .restart local v20    # "x":I
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 884
    .restart local v21    # "y":I
    sget-object v22, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    const/16 v23, 0x0

    move/from16 v0, v23

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/glu/android/GluUtil;->createFakeMotionEvent(III)Landroid/view/MotionEvent;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/glu/android/GluView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 885
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Touch press at "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 887
    .end local v20    # "x":I
    .end local v21    # "y":I
    :cond_13
    const-string v22, "tm"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 889
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 890
    .restart local v20    # "x":I
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 891
    .restart local v21    # "y":I
    sget-object v22, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    const/16 v23, 0x2

    move/from16 v0, v23

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/glu/android/GluUtil;->createFakeMotionEvent(III)Landroid/view/MotionEvent;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/glu/android/GluView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 892
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Touch move at "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 894
    .end local v20    # "x":I
    .end local v21    # "y":I
    :cond_14
    const-string v22, "tr"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 896
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 897
    .restart local v20    # "x":I
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 898
    .restart local v21    # "y":I
    sget-object v22, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    const/16 v23, 0x1

    move/from16 v0, v23

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/glu/android/GluUtil;->createFakeMotionEvent(III)Landroid/view/MotionEvent;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/glu/android/GluView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 899
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Touch release at "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 901
    .end local v20    # "x":I
    .end local v21    # "y":I
    :cond_15
    const-string v22, "phone"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 903
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "{Screen dimensions: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "} "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "{UDID: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/glu/android/GameLet;->m_deviceID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "} "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "{SDK level: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    move-object/from16 v0, v23

    iget v0, v0, Lcom/glu/android/GameLet;->m_platformVersionI:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "} "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "{Model: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/glu/android/GameLet;->m_deviceModel:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "} "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "{Manufacturer: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "} "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "{Device: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "} "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "{CPU_ABI: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "} "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "{Locale_Country: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/glu/android/GameLet;->m_locale:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "_"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/glu/android/GameLet;->m_countryCode:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "} "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 912
    :cond_16
    const-string v22, "iapasync"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_18

    .line 914
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "null"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_17

    const/16 v22, 0x0

    :goto_8
    sput-object v22, Lcom/glu/android/TestIAP;->TEST_ASYNCHRONOUS_IAP_ITEM:Ljava/lang/String;

    .line 915
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Async item #1 set to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/glu/android/TestIAP;->TEST_ASYNCHRONOUS_IAP_ITEM:Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Lcom/glu/android/GluUtil;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    .line 916
    const-string v22, "Note that once it\'s awarded, it will be set to null."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 914
    :cond_17
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    goto :goto_8

    .line 918
    :cond_18
    const-string v22, "iapasync2"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 920
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "null"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_19

    const/16 v22, 0x0

    :goto_9
    sput-object v22, Lcom/glu/android/TestIAP;->TEST_ASYNCHRONOUS_IAP_ITEM_SECOND:Ljava/lang/String;

    .line 921
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Async item #2 set to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/glu/android/TestIAP;->TEST_ASYNCHRONOUS_IAP_ITEM_SECOND:Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Lcom/glu/android/GluUtil;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    .line 922
    const-string v22, "Note that once it\'s awarded, it will be set to null."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 920
    :cond_19
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    goto :goto_9

    .line 924
    :cond_1a
    const-string v22, "iaprandasync"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1d

    .line 926
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 927
    .local v6, "count":I
    if-gtz v6, :cond_1b

    .line 928
    new-instance v22, Ljava/lang/Exception;

    const-string v23, "GOTO LIVES!!!"

    invoke-direct/range {v22 .. v23}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v22

    .line 930
    :cond_1b
    sget-object v22, Lcom/glu/android/IAP;->m_realToNativeProductIdHash:Ljava/util/Hashtable;

    invoke-virtual/range {v22 .. v22}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v19

    .line 931
    .local v19, "values":[Ljava/lang/Object;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/glu/android/GluUtil;->getRandomInt(I)I

    move-result v22

    aget-object v22, v19, v22

    check-cast v22, Ljava/lang/String;

    sput-object v22, Lcom/glu/android/TestIAP;->TEST_ASYNCHRONOUS_IAP_ITEM:Ljava/lang/String;

    .line 932
    const/16 v22, 0x2

    move/from16 v0, v22

    if-lt v6, v0, :cond_1c

    .line 933
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/glu/android/GluUtil;->getRandomInt(I)I

    move-result v22

    aget-object v22, v19, v22

    check-cast v22, Ljava/lang/String;

    sput-object v22, Lcom/glu/android/TestIAP;->TEST_ASYNCHRONOUS_IAP_ITEM_SECOND:Ljava/lang/String;

    .line 936
    :goto_a
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Async item #1 set to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/glu/android/TestIAP;->TEST_ASYNCHRONOUS_IAP_ITEM:Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Lcom/glu/android/GluUtil;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    .line 937
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Async item #2 set to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/glu/android/TestIAP;->TEST_ASYNCHRONOUS_IAP_ITEM_SECOND:Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Lcom/glu/android/GluUtil;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    .line 938
    const-string v22, "Note that once it\'s awarded, it will be set to null."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 935
    :cond_1c
    const/16 v22, 0x0

    sput-object v22, Lcom/glu/android/TestIAP;->TEST_ASYNCHRONOUS_IAP_ITEM_SECOND:Ljava/lang/String;

    goto :goto_a

    .line 940
    .end local v6    # "count":I
    .end local v19    # "values":[Ljava/lang/Object;
    :cond_1d
    const-string v22, "iapresult"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1e

    .line 942
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    sput v22, Lcom/glu/android/TestIAP;->CURRENT_TEST:I

    .line 943
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Set test to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v23, Lcom/glu/android/TestIAP;->CURRENT_TEST:I

    invoke-static/range {v23 .. v23}, Lcom/glu/android/TestIAP;->testIdToString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 945
    :cond_1e
    const-string v22, "iaprestore"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_20

    .line 947
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1f

    const/16 v22, 0x1

    :goto_b
    sput-boolean v22, Lcom/glu/android/TestIAP;->SIMULATE_RESTORE:Z

    .line 948
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Set IAP restore to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-boolean v23, Lcom/glu/android/TestIAP;->SIMULATE_RESTORE:Z

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 947
    :cond_1f
    const/16 v22, 0x0

    goto :goto_b

    .line 950
    :cond_20
    const-string v22, "iapcfg"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_21

    .line 952
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Async item #1 is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/glu/android/TestIAP;->TEST_ASYNCHRONOUS_IAP_ITEM:Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Lcom/glu/android/GluUtil;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    .line 953
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Async item #2 is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/glu/android/TestIAP;->TEST_ASYNCHRONOUS_IAP_ITEM_SECOND:Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Lcom/glu/android/GluUtil;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    .line 954
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Current test is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v23, Lcom/glu/android/TestIAP;->CURRENT_TEST:I

    invoke-static/range {v23 .. v23}, Lcom/glu/android/TestIAP;->testIdToString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    .line 955
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "IAP restore is set to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-boolean v23, Lcom/glu/android/TestIAP;->SIMULATE_RESTORE:Z

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 957
    :cond_21
    const-string v22, "giapresult"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_23

    .line 959
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 960
    .local v10, "giapResult":I
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/glu/android/Debug$Console;->testGIAPResult(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/glu/android/Debug$Console;->GOOGLE_IAP_OVERRIDE_ITEM:Ljava/lang/String;

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/glu/android/Debug$Console;->GOOGLE_IAP_OVERRIDE_ITEM:Ljava/lang/String;

    move-object/from16 v22, v0

    if-nez v22, :cond_22

    .line 962
    const-string v22, "Google IAP result cleared."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 964
    :cond_22
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Google IAP result set to: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/glu/android/Debug$Console;->GOOGLE_IAP_OVERRIDE_ITEM:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 966
    .end local v10    # "giapResult":I
    :cond_23
    const-string v22, "voiprec"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_27

    .line 968
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 969
    .local v17, "test":I
    const/16 v22, 0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_24

    .line 970
    sget-object v22, Lcom/glu/android/GluVOIP;->instance:Lcom/glu/android/GluVOIP;

    invoke-virtual/range {v22 .. v22}, Lcom/glu/android/GluVOIP;->startStreamingVoiceToFile()V

    goto/16 :goto_2

    .line 971
    :cond_24
    const/16 v22, 0x2

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_25

    .line 972
    sget-object v22, Lcom/glu/android/GluVOIP;->instance:Lcom/glu/android/GluVOIP;

    invoke-virtual/range {v22 .. v22}, Lcom/glu/android/GluVOIP;->stopStreamingVoiceToFile()V

    goto/16 :goto_2

    .line 973
    :cond_25
    const/16 v22, 0x3

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_26

    .line 974
    sget-object v22, Lcom/glu/android/GluVOIP;->instance:Lcom/glu/android/GluVOIP;

    invoke-virtual/range {v22 .. v22}, Lcom/glu/android/GluVOIP;->streamVoiceFromFile()V

    goto/16 :goto_2

    .line 977
    :cond_26
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Invalid option: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    .line 978
    new-instance v22, Ljava/lang/Exception;

    const-string v23, "Invalid option."

    invoke-direct/range {v22 .. v23}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v22

    .line 981
    .end local v17    # "test":I
    :cond_27
    const-string v22, "ph"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_28

    .line 982
    const-string v22, "ph [event] [iParam] [sParam]: iParam and sParam are optional"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 983
    :cond_28
    const-string v22, "voipconn"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_29

    .line 985
    sget-object v23, Lcom/glu/android/GluVOIP;->instance:Lcom/glu/android/GluVOIP;

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/GluVOIP;->connectToIP(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 987
    :cond_29
    const-string v22, "voipdc"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2a

    .line 989
    sget-object v22, Lcom/glu/android/GluVOIP;->instance:Lcom/glu/android/GluVOIP;

    invoke-virtual/range {v22 .. v22}, Lcom/glu/android/GluVOIP;->disconnectP2P()V

    goto/16 :goto_2

    .line 1017
    :cond_2a
    const-string v22, "run"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2e

    .line 1019
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1020
    .local v9, "filename":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "/sdcard/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1021
    .local v14, "pgmFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_2b

    .line 1022
    new-instance v14, Ljava/io/File;

    .end local v14    # "pgmFile":Ljava/io/File;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "/sdcard/sd/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1023
    .restart local v14    # "pgmFile":Ljava/io/File;
    :cond_2b
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_2d

    .line 1025
    invoke-static {v14}, Lcom/glu/android/GluUtil;->getFileContentsAsVector(Ljava/io/File;)Ljava/util/Vector;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/glu/android/Debug$Console;->m_program:Ljava/util/Vector;

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/glu/android/Debug$Console;->m_program:Ljava/util/Vector;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/glu/android/Debug$Console;->m_program:Ljava/util/Vector;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    if-nez v22, :cond_2

    .line 1028
    :cond_2c
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "File is empty: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    .line 1029
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/glu/android/Debug$Console;->m_program:Ljava/util/Vector;

    goto/16 :goto_2

    .line 1033
    :cond_2d
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "File not found on SD: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1035
    .end local v9    # "filename":Ljava/lang/String;
    .end local v14    # "pgmFile":Ljava/io/File;
    :cond_2e
    const-string v22, "wait"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2f

    .line 1037
    const-string v22, "wait can only be used in programs."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1039
    :cond_2f
    const-string v22, "help"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 1041
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_30

    .line 1042
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/glu/android/Debug$Console;->printHelp(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1044
    :cond_30
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/glu/android/Debug$Console;->printHelp(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method

.method private testGIAPResult(I)Ljava/lang/String;
    .locals 1
    .param p1, "giapResult"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1267
    if-nez p1, :cond_0

    .line 1268
    const/4 v0, 0x0

    .line 1281
    :goto_0
    return-object v0

    .line 1269
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1270
    const-string v0, "android.test.purchased"

    goto :goto_0

    .line 1271
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 1272
    const-string v0, "android.test.canceled"

    goto :goto_0

    .line 1273
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 1275
    const-string v0, "Testing android.test.refunded is not recommended as refund is not supported."

    invoke-virtual {p0, v0}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    .line 1276
    const-string v0, "android.test.refunded"

    goto :goto_0

    .line 1278
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 1280
    const-string v0, "Testing android.test.item_unavailable is not necessary as a build must always ship with all items valid."

    invoke-virtual {p0, v0}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    .line 1281
    const-string v0, "android.test.item_unavailable"

    goto :goto_0

    .line 1284
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method


# virtual methods
.method public determineNeedsToBeDisplayed()V
    .locals 3

    .prologue
    .line 691
    iget-boolean v1, p0, Lcom/glu/android/Debug$Console;->m_fpsEnabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/glu/android/Debug$Console;->m_textEntryVisible:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 693
    .local v0, "shouldBeVisible":Z
    :goto_0
    sget-object v1, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lcom/glu/android/GluCanvasOverlayGroup;->setViewVisibility(IZ)V

    .line 694
    return-void

    .line 691
    .end local v0    # "shouldBeVisible":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFPSDelay()I
    .locals 1

    .prologue
    .line 685
    iget v0, p0, Lcom/glu/android/Debug$Console;->m_tickDelay:I

    return v0
.end method

.method public handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 757
    const/4 v0, 0x0

    return v0
.end method

.method public isAdLocationOverriden()Z
    .locals 1

    .prologue
    .line 687
    iget-boolean v0, p0, Lcom/glu/android/Debug$Console;->m_adLocationOverride:Z

    return v0
.end method

.method public isTickStopped()Z
    .locals 1

    .prologue
    .line 686
    iget-boolean v0, p0, Lcom/glu/android/Debug$Console;->m_tickStopped:Z

    return v0
.end method

.method public logConsole(Ljava/lang/String;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1242
    iget-object v2, p0, Lcom/glu/android/Debug$Console;->m_logBuffer:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1243
    iget-object v2, p0, Lcom/glu/android/Debug$Console;->m_logBuffer:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/16 v3, 0x1e

    if-le v2, v3, :cond_0

    .line 1244
    iget-object v2, p0, Lcom/glu/android/Debug$Console;->m_logBuffer:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    .line 1246
    :cond_0
    iget-object v2, p0, Lcom/glu/android/Debug$Console;->m_wrappedLogBuffer:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    .line 1247
    invoke-direct {p0}, Lcom/glu/android/Debug$Console;->getTextWidth()I

    move-result v1

    .line 1248
    .local v1, "w":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/glu/android/Debug$Console;->m_logBuffer:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1249
    iget-object v2, p0, Lcom/glu/android/Debug$Console;->m_logBuffer:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0}, Lcom/glu/android/Debug$Console;->getTextWidth()I

    move-result v3

    iget-object v4, p0, Lcom/glu/android/Debug$Console;->m_textPaint:Landroid/graphics/Paint;

    const v5, 0x5f5e0ff

    iget-object v6, p0, Lcom/glu/android/Debug$Console;->m_wrappedLogBuffer:Ljava/util/Vector;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/glu/android/GluUtil;->wrapText(Ljava/lang/String;ILandroid/graphics/Paint;ILjava/util/Vector;)Ljava/util/Vector;

    .line 1248
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1250
    :cond_1
    return-void
.end method

.method public logFPS(J)V
    .locals 0
    .param p1, "deltaMS"    # J

    .prologue
    .line 1214
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "g"    # Landroid/graphics/Canvas;

    .prologue
    .line 1137
    return-void
.end method

.method public setFPSEnabled(Z)V
    .locals 0
    .param p1, "fps"    # Z

    .prologue
    .line 698
    iput-boolean p1, p0, Lcom/glu/android/Debug$Console;->m_fpsEnabled:Z

    .line 699
    invoke-virtual {p0}, Lcom/glu/android/Debug$Console;->determineNeedsToBeDisplayed()V

    .line 700
    return-void
.end method
