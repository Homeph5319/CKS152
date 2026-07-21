.class Lcom/glu/android/OfflineNotificationManager$ONMObject;
.super Ljava/lang/Object;
.source "OfflineNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/OfflineNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ONMObject"
.end annotation


# instance fields
.field private displayAt:J

.field private expiresAt:J

.field private message:Ljava/lang/String;

.field private payload:Ljava/lang/String;


# direct methods
.method private constructor <init>(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "d"    # J
    .param p3, "e"    # J
    .param p5, "m"    # Ljava/lang/String;
    .param p6, "p"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/glu/android/OfflineNotificationManager$ONMObject;->displayAt:J

    iput-wide p3, p0, Lcom/glu/android/OfflineNotificationManager$ONMObject;->expiresAt:J

    iput-object p5, p0, Lcom/glu/android/OfflineNotificationManager$ONMObject;->message:Ljava/lang/String;

    iput-object p6, p0, Lcom/glu/android/OfflineNotificationManager$ONMObject;->payload:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(JJLjava/lang/String;Ljava/lang/String;Lcom/glu/android/OfflineNotificationManager$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # J
    .param p5, "x2"    # Ljava/lang/String;
    .param p6, "x3"    # Ljava/lang/String;
    .param p7, "x4"    # Lcom/glu/android/OfflineNotificationManager$1;

    .prologue
    .line 49
    invoke-direct/range {p0 .. p6}, Lcom/glu/android/OfflineNotificationManager$ONMObject;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/glu/android/OfflineNotificationManager$ONMObject;)J
    .locals 2
    .param p0, "x0"    # Lcom/glu/android/OfflineNotificationManager$ONMObject;

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/glu/android/OfflineNotificationManager$ONMObject;->expiresAt:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/glu/android/OfflineNotificationManager$ONMObject;)J
    .locals 2
    .param p0, "x0"    # Lcom/glu/android/OfflineNotificationManager$ONMObject;

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/glu/android/OfflineNotificationManager$ONMObject;->displayAt:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/glu/android/OfflineNotificationManager$ONMObject;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/OfflineNotificationManager$ONMObject;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/glu/android/OfflineNotificationManager$ONMObject;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/glu/android/OfflineNotificationManager$ONMObject;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/OfflineNotificationManager$ONMObject;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/glu/android/OfflineNotificationManager$ONMObject;->payload:Ljava/lang/String;

    return-object v0
.end method
