.class Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;
.super Ljava/lang/Object;
.source "GluGoogleIAP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GIAPSingleItem"
.end annotation


# instance fields
.field private consumed:Z

.field private longId:J

.field private productId:Ljava/lang/String;

.field private reserved:[B

.field final synthetic this$0:Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;


# direct methods
.method public constructor <init>(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;)V
    .locals 2

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->this$0:Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->productId:Ljava/lang/String;

    .line 1136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->consumed:Z

    .line 1137
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->longId:J

    .line 1138
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->reserved:[B

    .line 1134
    iget-object v0, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->reserved:[B

    invoke-static {v0}, Lcom/glu/android/GluUtil;->zero([B)V

    return-void
.end method

.method static synthetic access$1500(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;)J
    .locals 2
    .param p0, "x0"    # Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;

    .prologue
    .line 1132
    iget-wide v0, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->longId:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;J)J
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;
    .param p1, "x1"    # J

    .prologue
    .line 1132
    iput-wide p1, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->longId:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->productId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->productId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;

    .prologue
    .line 1132
    iget-boolean v0, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->consumed:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;
    .param p1, "x1"    # Z

    .prologue
    .line 1132
    iput-boolean p1, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->consumed:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;)[B
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->reserved:[B

    return-object v0
.end method
