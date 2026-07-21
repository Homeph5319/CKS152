.class public Lcom/glu/android/GluTestTapjoy;
.super Ljava/lang/Object;
.source "GluTestTapjoy.java"


# static fields
.field private static final DO_NOT_RETRY:I = 0xfacade

.field private static final FAKE_INTERFACE_ACTION_TIMER:I = 0x1388

.field private static final TEST_ACTION_COUNT:I = 0x2

.field private static final TEST_ACTION_GETTING_POINTS:I = 0x0

.field private static final TEST_ACTION_NOT_GETTING_POINTS:I = 0x1

.field public static instance:Lcom/glu/android/GluTestTapjoy;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final TJ_TEST_DECORATION:Ljava/lang/String;

.field private m_fakeInterfaceActionTimer:I

.field private m_fakeUserTJActionThread:Ljava/lang/Thread;

.field private m_gotDataFromServer:Z

.field private m_initialized:Z

.field private m_lastConsumed:I

.field private m_lastPointTotal:I

.field private m_mimickingServerHiccup:Z

.field private m_pretendingInterfaceIsOpen:Z

.field private m_remainingPointTotal:I

.field private m_tickCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GluTestTapjoy;->instance:Lcom/glu/android/GluTestTapjoy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v1, p0, Lcom/glu/android/GluTestTapjoy;->m_remainingPointTotal:I

    .line 34
    iput v1, p0, Lcom/glu/android/GluTestTapjoy;->m_lastPointTotal:I

    .line 39
    const v0, 0xfacade

    iput v0, p0, Lcom/glu/android/GluTestTapjoy;->m_fakeInterfaceActionTimer:I

    .line 41
    iput v1, p0, Lcom/glu/android/GluTestTapjoy;->m_lastConsumed:I

    .line 42
    iput v1, p0, Lcom/glu/android/GluTestTapjoy;->m_tickCount:I

    .line 43
    iput-boolean v1, p0, Lcom/glu/android/GluTestTapjoy;->m_gotDataFromServer:Z

    .line 45
    iput-boolean v1, p0, Lcom/glu/android/GluTestTapjoy;->m_pretendingInterfaceIsOpen:Z

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/GluTestTapjoy;->m_mimickingServerHiccup:Z

    .line 47
    iput-boolean v1, p0, Lcom/glu/android/GluTestTapjoy;->m_initialized:Z

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/GluTestTapjoy;->m_fakeUserTJActionThread:Ljava/lang/Thread;

    .line 215
    const-string v0, "TapjoyTest"

    iput-object v0, p0, Lcom/glu/android/GluTestTapjoy;->TAG:Ljava/lang/String;

    .line 216
    const-string v0, "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^Tapjoy Test Bed^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"

    iput-object v0, p0, Lcom/glu/android/GluTestTapjoy;->TJ_TEST_DECORATION:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "don\'t instantiate this!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/glu/android/GluTestTapjoy;)I
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/GluTestTapjoy;

    .prologue
    .line 25
    iget v0, p0, Lcom/glu/android/GluTestTapjoy;->m_remainingPointTotal:I

    return v0
.end method

.method static synthetic access$012(Lcom/glu/android/GluTestTapjoy;I)I
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/GluTestTapjoy;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iget v0, p0, Lcom/glu/android/GluTestTapjoy;->m_remainingPointTotal:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/glu/android/GluTestTapjoy;->m_remainingPointTotal:I

    return v0
.end method

.method static synthetic access$112(Lcom/glu/android/GluTestTapjoy;I)I
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/GluTestTapjoy;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iget v0, p0, Lcom/glu/android/GluTestTapjoy;->m_lastPointTotal:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/glu/android/GluTestTapjoy;->m_lastPointTotal:I

    return v0
.end method

.method static synthetic access$200(Lcom/glu/android/GluTestTapjoy;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/GluTestTapjoy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/glu/android/GluTestTapjoy;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/glu/android/GluTestTapjoy;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/GluTestTapjoy;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/glu/android/GluTestTapjoy;->m_fakeUserTJActionThread:Ljava/lang/Thread;

    return-object p1
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 219
    const-string v0, "TapjoyTest"

    const-string v1, "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^Tapjoy Test Bed^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"

    invoke-static {v0, v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v0, "TapjoyTest"

    invoke-static {v0, p1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v0, "TapjoyTest"

    const-string v1, "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^Tapjoy Test Bed^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"

    invoke-static {v0, v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method


# virtual methods
.method public areAllItemsClaimed()Z
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public canDisplayInterface()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 150
    iget-boolean v1, p0, Lcom/glu/android/GluTestTapjoy;->m_mimickingServerHiccup:Z

    if-eqz v1, :cond_0

    .line 152
    const-string v1, "Simulating interface not ready -- server communication not yet established."

    invoke-direct {p0, v1}, Lcom/glu/android/GluTestTapjoy;->log(Ljava/lang/String;)V

    .line 153
    iput-boolean v0, p0, Lcom/glu/android/GluTestTapjoy;->m_mimickingServerHiccup:Z

    .line 157
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public closeInterface()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/GluTestTapjoy;->m_pretendingInterfaceIsOpen:Z

    .line 114
    const-string v0, "Test bed closed the imaginary interface."

    invoke-direct {p0, v0}, Lcom/glu/android/GluTestTapjoy;->log(Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/glu/android/GluJNI;->systemEvent(I)V

    .line 118
    return-void
.end method

.method public consumeTapjoyPoints(I)Z
    .locals 2
    .param p1, "points"    # I

    .prologue
    .line 127
    iget v0, p0, Lcom/glu/android/GluTestTapjoy;->m_remainingPointTotal:I

    if-le p1, v0, :cond_0

    .line 129
    const-string v0, "ERROR: Game is trying to consume more TJ points than available."

    invoke-direct {p0, v0}, Lcom/glu/android/GluTestTapjoy;->log(Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x0

    .line 136
    :goto_0
    return v0

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Consuming "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tapjoy points."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/glu/android/GluTestTapjoy;->log(Ljava/lang/String;)V

    .line 134
    iput p1, p0, Lcom/glu/android/GluTestTapjoy;->m_lastConsumed:I

    .line 135
    iget v0, p0, Lcom/glu/android/GluTestTapjoy;->m_remainingPointTotal:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/glu/android/GluTestTapjoy;->m_remainingPointTotal:I

    .line 136
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public consumeVirtualGood(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "itemID"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public debugGivePoints(I)V
    .locals 2
    .param p1, "amount"    # I

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "debugGivePoints("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/glu/android/GluTestTapjoy;->log(Ljava/lang/String;)V

    .line 211
    iget v0, p0, Lcom/glu/android/GluTestTapjoy;->m_remainingPointTotal:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/glu/android/GluTestTapjoy;->m_remainingPointTotal:I

    .line 212
    iget v0, p0, Lcom/glu/android/GluTestTapjoy;->m_lastPointTotal:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/glu/android/GluTestTapjoy;->m_lastPointTotal:I

    .line 213
    return-void
.end method

.method public displayInterface()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 80
    iget-object v0, p0, Lcom/glu/android/GluTestTapjoy;->m_fakeUserTJActionThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 83
    :cond_0
    iput-boolean v1, p0, Lcom/glu/android/GluTestTapjoy;->m_pretendingInterfaceIsOpen:Z

    .line 86
    invoke-static {v1}, Lcom/glu/android/GluJNI;->systemEvent(I)V

    .line 87
    new-instance v0, Lcom/glu/android/GluTestTapjoy$1;

    invoke-direct {v0, p0}, Lcom/glu/android/GluTestTapjoy$1;-><init>(Lcom/glu/android/GluTestTapjoy;)V

    iput-object v0, p0, Lcom/glu/android/GluTestTapjoy;->m_fakeUserTJActionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public getLastConsumed()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/glu/android/GluTestTapjoy;->m_lastConsumed:I

    return v0
.end method

.method public getLastPointTotal()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/glu/android/GluTestTapjoy;->m_lastPointTotal:I

    return v0
.end method

.method public getRemainingItemCount(Ljava/lang/String;)I
    .locals 1
    .param p1, "itemID"    # Ljava/lang/String;

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public getTapjoyPoints()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/glu/android/GluTestTapjoy;->m_remainingPointTotal:I

    return v0
.end method

.method public handleResume(Z)V
    .locals 2
    .param p1, "virtualGoodsEnabled"    # Z

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TJ resume("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/glu/android/GluTestTapjoy;->log(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public initUserData()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 62
    invoke-static {}, Lcom/glu/android/GluUtil;->getRandomBoolean()Z

    move-result v0

    .line 63
    .local v0, "pointsOnStartup":Z
    if-eqz v0, :cond_0

    .line 65
    const/16 v2, 0x1e

    invoke-static {v4, v2}, Lcom/glu/android/GluUtil;->getRandomInt(II)I

    move-result v1

    .line 66
    .local v1, "toAdd":I
    iget v2, p0, Lcom/glu/android/GluTestTapjoy;->m_remainingPointTotal:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/glu/android/GluTestTapjoy;->m_remainingPointTotal:I

    .line 67
    iget v2, p0, Lcom/glu/android/GluTestTapjoy;->m_lastPointTotal:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/glu/android/GluTestTapjoy;->m_lastPointTotal:I

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting test bed with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/glu/android/GluTestTapjoy;->m_remainingPointTotal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " points from a previous purchase."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/glu/android/GluTestTapjoy;->log(Ljava/lang/String;)V

    .line 74
    .end local v1    # "toAdd":I
    :goto_0
    iput-boolean v4, p0, Lcom/glu/android/GluTestTapjoy;->m_initialized:Z

    .line 75
    return-void

    .line 72
    :cond_0
    const-string v2, "Starting test bed with no points pending from a previous purchase."

    invoke-direct {p0, v2}, Lcom/glu/android/GluTestTapjoy;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isInit()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/glu/android/GluTestTapjoy;->m_initialized:Z

    return v0
.end method

.method public isInterfaceOpen()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/glu/android/GluTestTapjoy;->m_pretendingInterfaceIsOpen:Z

    return v0
.end method

.method public showIAPInterface()V
    .locals 1

    .prologue
    .line 178
    const-string v0, "Not handling TJ Virtual Goods Interface"

    invoke-direct {p0, v0}, Lcom/glu/android/GluTestTapjoy;->log(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public tick(I)V
    .locals 2
    .param p1, "deltaMS"    # I

    .prologue
    .line 141
    iget v0, p0, Lcom/glu/android/GluTestTapjoy;->m_tickCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/glu/android/GluTestTapjoy;->m_tickCount:I

    .line 144
    iget v0, p0, Lcom/glu/android/GluTestTapjoy;->m_tickCount:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 145
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->handlerInitTapjoyUserData()V

    .line 146
    :cond_0
    return-void
.end method
