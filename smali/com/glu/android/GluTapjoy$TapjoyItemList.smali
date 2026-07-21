.class public Lcom/glu/android/GluTapjoy$TapjoyItemList;
.super Ljava/lang/Object;
.source "GluTapjoy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GluTapjoy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TapjoyItemList"
.end annotation


# instance fields
.field public m_itemList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/glu/android/GluTapjoy$TapjoyItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GluTapjoy$TapjoyItemList;->m_itemList:Ljava/util/Vector;

    .line 51
    return-void
.end method


# virtual methods
.method public addOrModify(Ljava/lang/String;I)V
    .locals 3
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "itemCount"    # I

    .prologue
    .line 55
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/glu/android/GluTapjoy$TapjoyItemList;->m_itemList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 57
    iget-object v2, p0, Lcom/glu/android/GluTapjoy$TapjoyItemList;->m_itemList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/glu/android/GluTapjoy$TapjoyItem;

    iget-object v2, v2, Lcom/glu/android/GluTapjoy$TapjoyItem;->itemId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/glu/android/GluTapjoy$TapjoyItemList;->m_itemList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/glu/android/GluTapjoy$TapjoyItem;

    iput p2, v2, Lcom/glu/android/GluTapjoy$TapjoyItem;->itemCount:I

    .line 66
    :goto_1
    return-void

    .line 55
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    new-instance v1, Lcom/glu/android/GluTapjoy$TapjoyItem;

    invoke-direct {v1, p1, p2}, Lcom/glu/android/GluTapjoy$TapjoyItem;-><init>(Ljava/lang/String;I)V

    .line 65
    .local v1, "tji":Lcom/glu/android/GluTapjoy$TapjoyItem;
    iget-object v2, p0, Lcom/glu/android/GluTapjoy$TapjoyItemList;->m_itemList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getItemCount(Ljava/lang/String;)I
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/glu/android/GluTapjoy$TapjoyItemList;->m_itemList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/glu/android/GluTapjoy$TapjoyItemList;->m_itemList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glu/android/GluTapjoy$TapjoyItem;

    iget-object v1, v1, Lcom/glu/android/GluTapjoy$TapjoyItem;->itemId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/glu/android/GluTapjoy$TapjoyItemList;->m_itemList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glu/android/GluTapjoy$TapjoyItem;

    iget v1, v1, Lcom/glu/android/GluTapjoy$TapjoyItem;->itemCount:I

    .line 111
    :goto_1
    return v1

    .line 105
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public read(Ljava/io/FileInputStream;)V
    .locals 4
    .param p1, "fis"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    :goto_0
    invoke-virtual {p1}, Ljava/io/FileInputStream;->available()I

    move-result v3

    if-lez v3, :cond_0

    .line 77
    invoke-static {p1}, Lcom/glu/android/GluUtil;->readStringASCII(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "itemId":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    .end local v1    # "itemId":Ljava/lang/String;
    :cond_0
    return-void

    .line 81
    .restart local v1    # "itemId":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lcom/glu/android/GluUtil;->readInt(Ljava/io/FileInputStream;)I

    move-result v0

    .line 82
    .local v0, "itemCount":I
    new-instance v2, Lcom/glu/android/GluTapjoy$TapjoyItem;

    invoke-direct {v2, v1, v0}, Lcom/glu/android/GluTapjoy$TapjoyItem;-><init>(Ljava/lang/String;I)V

    .line 83
    .local v2, "tji":Lcom/glu/android/GluTapjoy$TapjoyItem;
    iget-object v3, v2, Lcom/glu/android/GluTapjoy$TapjoyItem;->reserved:[B

    invoke-static {p1, v3}, Lcom/glu/android/GluUtil;->readByteArray(Ljava/io/FileInputStream;[B)V

    .line 85
    iget-object v3, p0, Lcom/glu/android/GluTapjoy$TapjoyItemList;->m_itemList:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/glu/android/GluTapjoy$TapjoyItemList;->m_itemList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 71
    return-void
.end method

.method public write(Ljava/io/FileOutputStream;)V
    .locals 2
    .param p1, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v1, p0, Lcom/glu/android/GluTapjoy$TapjoyItemList;->m_itemList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 93
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 95
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/glu/android/GluTapjoy$TapjoyItemList;->m_itemList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/glu/android/GluTapjoy$TapjoyItemList;->m_itemList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glu/android/GluTapjoy$TapjoyItem;

    iget-object v1, v1, Lcom/glu/android/GluTapjoy$TapjoyItem;->itemId:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/glu/android/GluUtil;->writeStringASCII(Ljava/io/FileOutputStream;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/glu/android/GluTapjoy$TapjoyItemList;->m_itemList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glu/android/GluTapjoy$TapjoyItem;

    iget v1, v1, Lcom/glu/android/GluTapjoy$TapjoyItem;->itemCount:I

    invoke-static {p1, v1}, Lcom/glu/android/GluUtil;->writeInt(Ljava/io/FileOutputStream;I)V

    .line 99
    iget-object v1, p0, Lcom/glu/android/GluTapjoy$TapjoyItemList;->m_itemList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glu/android/GluTapjoy$TapjoyItem;

    iget-object v1, v1, Lcom/glu/android/GluTapjoy$TapjoyItem;->reserved:[B

    invoke-static {p1, v1}, Lcom/glu/android/GluUtil;->writeByteArray(Ljava/io/FileOutputStream;[B)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_1
    return-void
.end method
