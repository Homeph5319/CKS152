.class public Lcom/glu/android/GluTapjoy$tTapjoyData;
.super Ljava/lang/Object;
.source "GluTapjoy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GluTapjoy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "tTapjoyData"
.end annotation


# static fields
.field public static final TAPJOY_DATA_SIZE:I = 0x100

.field public static final UDID_LENGTH:I = 0x20


# instance fields
.field public m_allItemsList:Lcom/glu/android/GluTapjoy$TapjoyItemList;

.field public m_remainingPointsToAward:I

.field public m_reserved:[B

.field public m_totalPointsHandled:I

.field public m_udid:[B

.field public m_usedItemsList:Lcom/glu/android/GluTapjoy$TapjoyItemList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput v0, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_totalPointsHandled:I

    .line 121
    iput v0, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_remainingPointsToAward:I

    .line 122
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_udid:[B

    .line 123
    const/16 v0, 0xd8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_reserved:[B

    .line 125
    new-instance v0, Lcom/glu/android/GluTapjoy$TapjoyItemList;

    invoke-direct {v0}, Lcom/glu/android/GluTapjoy$TapjoyItemList;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_allItemsList:Lcom/glu/android/GluTapjoy$TapjoyItemList;

    .line 126
    new-instance v0, Lcom/glu/android/GluTapjoy$TapjoyItemList;

    invoke-direct {v0}, Lcom/glu/android/GluTapjoy$TapjoyItemList;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_usedItemsList:Lcom/glu/android/GluTapjoy$TapjoyItemList;

    .line 130
    invoke-direct {p0}, Lcom/glu/android/GluTapjoy$tTapjoyData;->setDefault()V

    .line 131
    return-void
.end method

.method private getAdjustedUDID()[B
    .locals 5

    .prologue
    .line 135
    iget-object v3, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_udid:[B

    array-length v3, v3

    new-array v1, v3, [B

    .line 136
    .local v1, "ret":[B
    invoke-static {v1}, Lcom/glu/android/GluUtil;->zero([B)V

    .line 138
    sget-object v3, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v3, v3, Lcom/glu/android/GameLet;->m_deviceID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 139
    .local v2, "udid":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 140
    aget-char v3, v2, v0

    add-int/lit8 v4, v0, 0x1

    add-int/2addr v4, v0

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    return-object v1
.end method

.method private setDefault()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 169
    iput v0, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_totalPointsHandled:I

    .line 170
    iput v0, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_remainingPointsToAward:I

    .line 171
    iget-object v0, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_reserved:[B

    invoke-static {v0}, Lcom/glu/android/GluUtil;->zero([B)V

    .line 172
    invoke-virtual {p0}, Lcom/glu/android/GluTapjoy$tTapjoyData;->setUDID()V

    .line 173
    return-void
.end method


# virtual methods
.method public addOrModifyTotal(Ljava/lang/String;I)V
    .locals 1
    .param p1, "itemID"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_allItemsList:Lcom/glu/android/GluTapjoy$TapjoyItemList;

    invoke-virtual {v0, p1, p2}, Lcom/glu/android/GluTapjoy$TapjoyItemList;->addOrModify(Ljava/lang/String;I)V

    .line 230
    return-void
.end method

.method public areAllItemsClaimed()Z
    .locals 3

    .prologue
    .line 234
    const/4 v1, 0x1

    .line 235
    .local v1, "ret":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_allItemsList:Lcom/glu/android/GluTapjoy$TapjoyItemList;

    iget-object v2, v2, Lcom/glu/android/GluTapjoy$TapjoyItemList;->m_itemList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 237
    iget-object v2, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_allItemsList:Lcom/glu/android/GluTapjoy$TapjoyItemList;

    iget-object v2, v2, Lcom/glu/android/GluTapjoy$TapjoyItemList;->m_itemList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/glu/android/GluTapjoy$TapjoyItem;

    iget-object v2, v2, Lcom/glu/android/GluTapjoy$TapjoyItem;->itemId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/glu/android/GluTapjoy$tTapjoyData;->getRemainingCount(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    const/4 v2, 0x0

    .line 240
    :goto_1
    return v2

    .line 235
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public consumeItem(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "itemID"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/glu/android/GluTapjoy$tTapjoyData;->getRemainingCount(Ljava/lang/String;)I

    move-result v0

    .local v0, "remaining":I
    if-ge v0, p2, :cond_0

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not consume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 220
    const/4 v1, 0x0

    .line 224
    :goto_0
    return v1

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_usedItemsList:Lcom/glu/android/GluTapjoy$TapjoyItemList;

    iget-object v2, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_usedItemsList:Lcom/glu/android/GluTapjoy$TapjoyItemList;

    invoke-virtual {v2, p1}, Lcom/glu/android/GluTapjoy$TapjoyItemList;->getItemCount(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v1, p1, v2}, Lcom/glu/android/GluTapjoy$TapjoyItemList;->addOrModify(Ljava/lang/String;I)V

    .line 224
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public doesUDIDMatch()Z
    .locals 4

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/glu/android/GluTapjoy$tTapjoyData;->getAdjustedUDID()[B

    move-result-object v1

    .line 153
    .local v1, "tmp":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_udid:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_udid:[B

    aget-byte v2, v2, v0

    aget-byte v3, v1, v0

    if-eq v2, v3, :cond_0

    .line 155
    const/4 v2, 0x0

    .line 157
    :goto_1
    return v2

    .line 153
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public getRemainingCount(Ljava/lang/String;)I
    .locals 2
    .param p1, "itemID"    # Ljava/lang/String;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_allItemsList:Lcom/glu/android/GluTapjoy$TapjoyItemList;

    invoke-virtual {v0, p1}, Lcom/glu/android/GluTapjoy$TapjoyItemList;->getItemCount(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_usedItemsList:Lcom/glu/android/GluTapjoy$TapjoyItemList;

    invoke-virtual {v1, p1}, Lcom/glu/android/GluTapjoy$TapjoyItemList;->getItemCount(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public read(Ljava/io/FileInputStream;)Z
    .locals 3
    .param p1, "fis"    # Ljava/io/FileInputStream;

    .prologue
    .line 189
    const/4 v1, 0x0

    .line 192
    .local v1, "success":Z
    :try_start_0
    invoke-static {p1}, Lcom/glu/android/GluUtil;->readInt(Ljava/io/FileInputStream;)I

    move-result v2

    iput v2, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_totalPointsHandled:I

    .line 193
    invoke-static {p1}, Lcom/glu/android/GluUtil;->readInt(Ljava/io/FileInputStream;)I

    move-result v2

    iput v2, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_remainingPointsToAward:I

    .line 194
    iget-object v2, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_udid:[B

    invoke-static {p1, v2}, Lcom/glu/android/GluUtil;->readByteArray(Ljava/io/FileInputStream;[B)V

    .line 195
    iget-object v2, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_reserved:[B

    invoke-static {p1, v2}, Lcom/glu/android/GluUtil;->readByteArray(Ljava/io/FileInputStream;[B)V

    .line 197
    invoke-virtual {p0}, Lcom/glu/android/GluTapjoy$tTapjoyData;->doesUDIDMatch()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    const/4 v1, 0x1

    .line 200
    :cond_0
    iget-object v2, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_allItemsList:Lcom/glu/android/GluTapjoy$TapjoyItemList;

    invoke-virtual {v2, p1}, Lcom/glu/android/GluTapjoy$TapjoyItemList;->read(Ljava/io/FileInputStream;)V

    .line 201
    iget-object v2, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_usedItemsList:Lcom/glu/android/GluTapjoy$TapjoyItemList;

    invoke-virtual {v2, p1}, Lcom/glu/android/GluTapjoy$TapjoyItemList;->read(Ljava/io/FileInputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return v1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/glu/android/GluTapjoy$tTapjoyData;->setDefault()V

    .line 163
    iget-object v0, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_allItemsList:Lcom/glu/android/GluTapjoy$TapjoyItemList;

    invoke-virtual {v0}, Lcom/glu/android/GluTapjoy$TapjoyItemList;->reset()V

    .line 164
    iget-object v0, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_usedItemsList:Lcom/glu/android/GluTapjoy$TapjoyItemList;

    invoke-virtual {v0}, Lcom/glu/android/GluTapjoy$TapjoyItemList;->reset()V

    .line 165
    return-void
.end method

.method public setUDID()V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/glu/android/GluTapjoy$tTapjoyData;->getAdjustedUDID()[B

    move-result-object v0

    iput-object v0, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_udid:[B

    .line 148
    return-void
.end method

.method public write(Ljava/io/FileOutputStream;)V
    .locals 1
    .param p1, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 178
    iget v0, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_totalPointsHandled:I

    invoke-static {p1, v0}, Lcom/glu/android/GluUtil;->writeInt(Ljava/io/FileOutputStream;I)V

    .line 179
    iget v0, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_remainingPointsToAward:I

    invoke-static {p1, v0}, Lcom/glu/android/GluUtil;->writeInt(Ljava/io/FileOutputStream;I)V

    .line 180
    iget-object v0, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_udid:[B

    invoke-static {p1, v0}, Lcom/glu/android/GluUtil;->writeByteArray(Ljava/io/FileOutputStream;[B)V

    .line 181
    iget-object v0, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_reserved:[B

    invoke-static {p1, v0}, Lcom/glu/android/GluUtil;->writeByteArray(Ljava/io/FileOutputStream;[B)V

    .line 183
    iget-object v0, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_allItemsList:Lcom/glu/android/GluTapjoy$TapjoyItemList;

    invoke-virtual {v0, p1}, Lcom/glu/android/GluTapjoy$TapjoyItemList;->write(Ljava/io/FileOutputStream;)V

    .line 184
    iget-object v0, p0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_usedItemsList:Lcom/glu/android/GluTapjoy$TapjoyItemList;

    invoke-virtual {v0, p1}, Lcom/glu/android/GluTapjoy$TapjoyItemList;->write(Ljava/io/FileOutputStream;)V

    .line 185
    return-void
.end method
