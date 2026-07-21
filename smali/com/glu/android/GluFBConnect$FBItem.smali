.class public Lcom/glu/android/GluFBConnect$FBItem;
.super Ljava/lang/Object;
.source "GluFBConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GluFBConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FBItem"
.end annotation


# instance fields
.field public imageSize:Ljava/lang/String;

.field public imageUser:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "_imageSize"    # Ljava/lang/String;
    .param p2, "_imageUser"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 945
    iput-object v0, p0, Lcom/glu/android/GluFBConnect$FBItem;->imageSize:Ljava/lang/String;

    .line 946
    iput-object v0, p0, Lcom/glu/android/GluFBConnect$FBItem;->imageUser:Ljava/lang/String;

    .line 949
    iput-object p1, p0, Lcom/glu/android/GluFBConnect$FBItem;->imageSize:Ljava/lang/String;

    .line 950
    iput-object p2, p0, Lcom/glu/android/GluFBConnect$FBItem;->imageUser:Ljava/lang/String;

    .line 951
    return-void
.end method
