.class public Lcom/glu/android/ck/CK;
.super Lcom/glu/android/GluApplication;
.source "CK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/glu/android/ck/CK$GluActivity;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/glu/android/GluApplication;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/glu/android/GluApplication;->onCreate()V

    .line 14
    const-class v0, Lcom/glu/android/ck/CK$GluActivity;

    sput-object v0, Lcom/glu/android/GluEmbeddedPush;->sm_activityClass:Ljava/lang/Class;

    .line 15
    return-void
.end method
