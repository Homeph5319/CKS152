.class public final synthetic Lcom/dataManager/MainActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/dataManager/MainActivity;"
    method = "lambda$initViews$2"
    proto = "(Landroid/widget/CheckBox;Landroid/content/SharedPreferences;Landroid/view/View;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "7bbc1d7254613ffaa026de47d975f73968361ef3e5d7b818ce0a83a33039c6b8"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/dataManager/MainActivity;

.field public final synthetic f$1:Landroid/widget/CheckBox;

.field public final synthetic f$2:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Lcom/dataManager/MainActivity;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda5;->f$0:Lcom/dataManager/MainActivity;

    iput-object p2, p0, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda5;->f$1:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda5;->f$2:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda5;->f$0:Lcom/dataManager/MainActivity;

    iget-object v1, p0, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda5;->f$1:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda5;->f$2:Landroid/content/SharedPreferences;

    invoke-static {v0, v1, v2, p1}, Lcom/dataManager/MainActivity;->$r8$lambda$vZTDjCKCzIpuL_gx6cAd2Fh-Y0c(Lcom/dataManager/MainActivity;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;Landroid/view/View;)V

    return-void
.end method
