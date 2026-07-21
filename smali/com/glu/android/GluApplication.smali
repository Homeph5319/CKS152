.class public Lcom/glu/android/GluApplication;
.super Landroid/app/Application;
.source "GluApplication.java"


# static fields
.field public static instance:Lcom/glu/android/GluApplication;


# instance fields
.field public m_nativeProperties:Lcom/glu/android/CaseInsensitiveHash;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glu/android/CaseInsensitiveHash",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GluApplication;->instance:Lcom/glu/android/GluApplication;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/GluApplication;->m_nativeProperties:Lcom/glu/android/CaseInsensitiveHash;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 20
    sput-object p0, Lcom/glu/android/GluApplication;->instance:Lcom/glu/android/GluApplication;

    .line 22
    const-string v0, "GluApplication.onCreate()"

    invoke-static {v0}, Lcom/glu/android/Debug;->logSafe(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/glu/android/GluUtil;->copyPropertiesFileToNative()V

    .line 24
    invoke-static {}, Lcom/glu/android/GluUtil;->getNativeProperties()Lcom/glu/android/CaseInsensitiveHash;

    move-result-object v0

    iput-object v0, p0, Lcom/glu/android/GluApplication;->m_nativeProperties:Lcom/glu/android/CaseInsensitiveHash;

    .line 25
    invoke-static {}, Lcom/glu/android/Settings;->determineSettingsFromPropertiesFile()V

    .line 27
    invoke-static {}, Lcom/glu/android/GluEmbeddedPush;->onApplicationCreate()V

    .line 28
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "GluApplication.onLowMemory() called"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 39
    const-string v0, "GluApplication.onTerminate() called"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GluApplication;->instance:Lcom/glu/android/GluApplication;

    .line 42
    return-void
.end method
