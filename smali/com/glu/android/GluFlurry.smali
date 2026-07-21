.class public Lcom/glu/android/GluFlurry;
.super Ljava/lang/Object;
.source "GluFlurry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/glu/android/GluFlurry$FlurryEvent;
    }
.end annotation


# static fields
.field public static final EVENT_APP_START:Ljava/lang/String; = "EVENT_JAVA_START"

.field public static final EVENT_DOWNLOAD_NETWORK:Ljava/lang/String; = "EVENT_DOWNLOAD_NETWORK"

.field public static final EVENT_NATIVE_START:Ljava/lang/String; = "EVENT_NATIVE_START"

.field public static final EVENT_OF_LOGIN:Ljava/lang/String; = "EVENT_OPENFEINT_LOGIN"

.field public static final EVENT_OF_LOGOUT:Ljava/lang/String; = "EVENT_OPENFEINT_EXPLICIT_USER_LOGOUT"

.field public static final EVENT_OF_USER_AVOIDED_LOGIN:Ljava/lang/String; = "EVENT_OPENFEINT_USER_DIDNT_LOGIN"

.field public static final PARAM_LONG:Ljava/lang/String; = "long"

.field public static final PARAM_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARAM_STRING:Ljava/lang/String; = "string"

.field public static sm_isInit:Z

.field public static sm_queuedEvents:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/glu/android/GluFlurry$FlurryEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/glu/android/GluFlurry;->PARAM_MAP:Ljava/util/Map;

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/glu/android/GluFlurry;->sm_isInit:Z

    .line 112
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/glu/android/GluFlurry;->sm_queuedEvents:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method public static destroy()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "Flurry destroy?"

    invoke-static {v0}, Lcom/glu/android/Debug;->logSafe(Ljava/lang/String;)V

    .line 60
    sget-boolean v0, Lcom/glu/android/GluFlurry;->sm_isInit:Z

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "Yep, Flurry destroy!"

    invoke-static {v0}, Lcom/glu/android/Debug;->logSafe(Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/glu/android/GluFlurry;->sm_isInit:Z

    .line 66
    :cond_0
    return-void
.end method

.method public static flushQueue()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Flushing Flurry event queue, size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/glu/android/GluFlurry;->sm_queuedEvents:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 98
    .local v0, "event":Lcom/glu/android/GluFlurry$FlurryEvent;
    :goto_0
    sget-object v1, Lcom/glu/android/GluFlurry;->sm_queuedEvents:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 100
    sget-object v1, Lcom/glu/android/GluFlurry;->sm_queuedEvents:Ljava/util/Vector;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "event":Lcom/glu/android/GluFlurry$FlurryEvent;
    check-cast v0, Lcom/glu/android/GluFlurry$FlurryEvent;

    .line 101
    .restart local v0    # "event":Lcom/glu/android/GluFlurry$FlurryEvent;
    sget-object v1, Lcom/glu/android/GluFlurry;->sm_queuedEvents:Ljava/util/Vector;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->removeElementAt(I)V

    .line 102
    iget-object v1, v0, Lcom/glu/android/GluFlurry$FlurryEvent;->event:Ljava/lang/String;

    iget-wide v2, v0, Lcom/glu/android/GluFlurry$FlurryEvent;->lValue:J

    iget-object v4, v0, Lcom/glu/android/GluFlurry$FlurryEvent;->sValue:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/glu/android/GluFlurry;->logEvent(Ljava/lang/String;JLjava/lang/String;)I

    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 39
    const-string v2, "Flurry init?"

    invoke-static {v2}, Lcom/glu/android/Debug;->logSafe(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "packageToUse":Ljava/lang/String;
    const-string v0, "VR3BVI74LK6QGHAFM415"

    .line 42
    .local v0, "curKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-boolean v2, Lcom/glu/android/GluFlurry;->sm_isInit:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/glu/android/Settings;->FLURRY_DISABLED:Z

    if-nez v2, :cond_0

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Yep, enabled! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/Debug;->logSafe(Ljava/lang/String;)V

    .line 45
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->setLogEnabled(Z)V

    .line 46
    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    const/4 v2, 0x1

    sput-boolean v2, Lcom/glu/android/GluFlurry;->sm_isInit:Z

    .line 54
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flurry disabled... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/glu/android/GluFlurry;->sm_isInit:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") set("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/glu/android/Settings;->FLURRY_DISABLED:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/Debug;->logSafe(Ljava/lang/String;)V

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No flurry key for... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/Debug;->logSafe(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static logEvent(Ljava/lang/String;)I
    .locals 3
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 68
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/glu/android/GluFlurry;->logEvent(Ljava/lang/String;JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static logEvent(Ljava/lang/String;JLjava/lang/String;)I
    .locals 4
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "lValue"    # J
    .param p3, "sValue"    # Ljava/lang/String;

    .prologue
    .line 71
    sget-boolean v0, Lcom/glu/android/GluFlurry;->sm_isInit:Z

    if-eqz v0, :cond_1

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Logging Flurry event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   long: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/glu/android/GluUtil;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->logSafe(Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/glu/android/GluFlurry;->PARAM_MAP:Ljava/util/Map;

    const-string v1, "long"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/glu/android/GluFlurry;->PARAM_MAP:Ljava/util/Map;

    const-string v1, "string"

    if-nez p3, :cond_0

    const-string p3, ""

    .end local p3    # "sValue":Ljava/lang/String;
    :cond_0
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/glu/android/GluFlurry;->PARAM_MAP:Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 78
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    .line 82
    .restart local p3    # "sValue":Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/glu/android/GluFlurry;->queueEvent(Ljava/lang/String;JLjava/lang/String;)V

    .line 85
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static pause()V
    .locals 0

    .prologue
    .line 56
    invoke-static {}, Lcom/glu/android/GluFlurry;->destroy()V

    return-void
.end method

.method public static queueEvent(Ljava/lang/String;)V
    .locals 3
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 88
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/glu/android/GluFlurry;->queueEvent(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public static queueEvent(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "lValue"    # J
    .param p3, "sValue"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string v0, "Not init: Queueing Flurry event."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/glu/android/GluFlurry;->sm_queuedEvents:Ljava/util/Vector;

    new-instance v1, Lcom/glu/android/GluFlurry$FlurryEvent;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/glu/android/GluFlurry$FlurryEvent;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method public static reportError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 108
    sget-boolean v0, Lcom/glu/android/GluFlurry;->sm_isInit:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/flurry/android/FlurryAgent;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    return-void
.end method

.method public static resume()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-static {v0}, Lcom/glu/android/GluFlurry;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/glu/android/GluFlurry;->flushQueue()V

    return-void
.end method
