.class public final Lcom/dataManager/ArchiveExtractor$InstallInfo;
.super Ljava/lang/Object;
.source "ArchiveExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dataManager/ArchiveExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstallInfo"
.end annotation


# instance fields
.field public final archiveName:Ljava/lang/String;

.field public final installedAt:Ljava/lang/String;

.field public final uncompressedSize:J

.field public final version:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "installedAt"    # Ljava/lang/String;
    .param p3, "archiveName"    # Ljava/lang/String;
    .param p4, "uncompressedSize"    # J

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput p1, p0, Lcom/dataManager/ArchiveExtractor$InstallInfo;->version:I

    .line 344
    iput-object p2, p0, Lcom/dataManager/ArchiveExtractor$InstallInfo;->installedAt:Ljava/lang/String;

    .line 345
    iput-object p3, p0, Lcom/dataManager/ArchiveExtractor$InstallInfo;->archiveName:Ljava/lang/String;

    .line 346
    iput-wide p4, p0, Lcom/dataManager/ArchiveExtractor$InstallInfo;->uncompressedSize:J

    .line 347
    return-void
.end method
