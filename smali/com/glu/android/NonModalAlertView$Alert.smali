.class Lcom/glu/android/NonModalAlertView$Alert;
.super Ljava/lang/Object;
.source "NonModalAlertView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/NonModalAlertView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Alert"
.end annotation


# instance fields
.field durationMS:I

.field message:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/NonModalAlertView$Alert;->message:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/glu/android/NonModalAlertView$Alert;->durationMS:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/glu/android/NonModalAlertView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/glu/android/NonModalAlertView$1;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/glu/android/NonModalAlertView$Alert;-><init>()V

    return-void
.end method
