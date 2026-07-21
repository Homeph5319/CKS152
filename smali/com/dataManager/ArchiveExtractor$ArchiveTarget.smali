.class public final Lcom/dataManager/ArchiveExtractor$ArchiveTarget;
.super Ljava/lang/Object;
.source "ArchiveExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dataManager/ArchiveExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArchiveTarget"
.end annotation


# instance fields
.field public final archiveName:Ljava/lang/String;

.field public final destinationPath:Ljava/lang/String;

.field public final displayName:Ljava/lang/String;

.field public final uncompressedSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "archiveName"    # Ljava/lang/String;
    .param p2, "destinationPath"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;
    .param p4, "uncompressedSize"    # J

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object p1, p0, Lcom/dataManager/ArchiveExtractor$ArchiveTarget;->archiveName:Ljava/lang/String;

    .line 329
    iput-object p2, p0, Lcom/dataManager/ArchiveExtractor$ArchiveTarget;->destinationPath:Ljava/lang/String;

    .line 330
    iput-object p3, p0, Lcom/dataManager/ArchiveExtractor$ArchiveTarget;->displayName:Ljava/lang/String;

    .line 331
    iput-wide p4, p0, Lcom/dataManager/ArchiveExtractor$ArchiveTarget;->uncompressedSize:J

    .line 332
    return-void
.end method
