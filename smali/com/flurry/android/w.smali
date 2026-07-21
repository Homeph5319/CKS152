.class final Lcom/flurry/android/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/flurry/android/q;

.field private c:Lcom/flurry/android/a;

.field private volatile d:J

.field private e:Lcom/flurry/android/ae;

.field private f:Lcom/flurry/android/ae;

.field private g:Ljava/util/Map;

.field private h:Ljava/util/Map;

.field private i:Ljava/util/Map;

.field private j:Ljava/util/Map;

.field private volatile k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/q;Lcom/flurry/android/a;)V
    .locals 2

    .prologue
    const/16 v1, 0x1e

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/flurry/android/ae;

    invoke-direct {v0, v1}, Lcom/flurry/android/ae;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/android/w;->e:Lcom/flurry/android/ae;

    .line 33
    new-instance v0, Lcom/flurry/android/ae;

    invoke-direct {v0, v1}, Lcom/flurry/android/ae;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/android/w;->f:Lcom/flurry/android/ae;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/w;->g:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/w;->h:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/w;->i:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/w;->j:Ljava/util/Map;

    .line 45
    iput-object p1, p0, Lcom/flurry/android/w;->a:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/flurry/android/w;->b:Lcom/flurry/android/q;

    .line 47
    iput-object p3, p0, Lcom/flurry/android/w;->c:Lcom/flurry/android/a;

    .line 48
    return-void
.end method

.method private declared-synchronized a(B)Lcom/flurry/android/d;
    .locals 2

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/w;->i:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/flurry/android/w;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/flurry/android/w;->k:Z

    .line 444
    iget-boolean v0, p0, Lcom/flurry/android/w;->k:Z

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/flurry/android/w;->b:Lcom/flurry/android/q;

    invoke-virtual {v0, p1}, Lcom/flurry/android/q;->a(I)V

    .line 448
    :cond_0
    return-void

    .line 443
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/io/DataInputStream;)V
    .locals 8

    .prologue
    const/16 v7, 0x1e

    const/4 v0, 0x0

    .line 294
    const-string v1, "FlurryAgent"

    const-string v2, "Reading cache"

    invoke-static {v1, v2}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 297
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 373
    :goto_0
    return-void

    .line 303
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/flurry/android/w;->d:J

    .line 305
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 306
    new-instance v1, Lcom/flurry/android/ae;

    invoke-direct {v1, v7}, Lcom/flurry/android/ae;-><init>(I)V

    iput-object v1, p0, Lcom/flurry/android/w;->e:Lcom/flurry/android/ae;

    move v1, v0

    .line 307
    :goto_1
    if-ge v1, v2, :cond_1

    .line 309
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    .line 310
    new-instance v5, Lcom/flurry/android/AdImage;

    invoke-direct {v5}, Lcom/flurry/android/AdImage;-><init>()V

    .line 311
    invoke-virtual {v5, p1}, Lcom/flurry/android/AdImage;->a(Ljava/io/DataInput;)V

    .line 312
    iget-object v6, p0, Lcom/flurry/android/w;->e:Lcom/flurry/android/ae;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v3, v5}, Lcom/flurry/android/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 315
    :cond_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 316
    new-instance v1, Lcom/flurry/android/ae;

    invoke-direct {v1, v7}, Lcom/flurry/android/ae;-><init>(I)V

    iput-object v1, p0, Lcom/flurry/android/w;->f:Lcom/flurry/android/ae;

    move v1, v0

    .line 317
    :goto_2
    if-ge v1, v2, :cond_4

    .line 319
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    .line 320
    new-instance v5, Lcom/flurry/android/ak;

    invoke-direct {v5}, Lcom/flurry/android/ak;-><init>()V

    .line 321
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/flurry/android/ak;->a:Ljava/lang/String;

    :cond_2
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/flurry/android/ak;->b:Ljava/lang/String;

    :cond_3
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v6

    iput v6, v5, Lcom/flurry/android/ak;->c:I

    .line 322
    iget-object v6, p0, Lcom/flurry/android/w;->f:Lcom/flurry/android/ae;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v3, v5}, Lcom/flurry/android/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 325
    :cond_4
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 326
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/flurry/android/w;->h:Ljava/util/Map;

    move v1, v0

    .line 327
    :goto_3
    if-ge v1, v2, :cond_5

    .line 329
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 330
    new-instance v4, Lcom/flurry/android/f;

    invoke-direct {v4, p1}, Lcom/flurry/android/f;-><init>(Ljava/io/DataInput;)V

    .line 332
    iget-object v5, p0, Lcom/flurry/android/w;->h:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 335
    :cond_5
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    .line 336
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/flurry/android/w;->g:Ljava/util/Map;

    move v2, v0

    .line 337
    :goto_4
    if-ge v2, v3, :cond_7

    .line 339
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 340
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v5

    .line 341
    new-array v6, v5, [Lcom/flurry/android/s;

    move v1, v0

    .line 342
    :goto_5
    if-ge v1, v5, :cond_6

    .line 344
    new-instance v7, Lcom/flurry/android/s;

    invoke-direct {v7}, Lcom/flurry/android/s;-><init>()V

    .line 345
    invoke-virtual {v7, p1}, Lcom/flurry/android/s;->a(Ljava/io/DataInput;)V

    .line 346
    aput-object v7, v6, v1

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 348
    :cond_6
    iget-object v1, p0, Lcom/flurry/android/w;->g:Ljava/util/Map;

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    .line 351
    :cond_7
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 352
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/flurry/android/w;->i:Ljava/util/Map;

    move v1, v0

    .line 353
    :goto_6
    if-ge v1, v2, :cond_8

    .line 355
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 356
    new-instance v4, Lcom/flurry/android/d;

    invoke-direct {v4}, Lcom/flurry/android/d;-><init>()V

    .line 357
    invoke-virtual {v4, p1}, Lcom/flurry/android/d;->b(Ljava/io/DataInput;)V

    .line 358
    iget-object v5, p0, Lcom/flurry/android/w;->i:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 361
    :cond_8
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 362
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/flurry/android/w;->j:Ljava/util/Map;

    .line 363
    :goto_7
    if-ge v0, v1, :cond_9

    .line 365
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    .line 366
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    .line 367
    iget-object v5, p0, Lcom/flurry/android/w;->j:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 370
    :cond_9
    invoke-direct {p0}, Lcom/flurry/android/w;->f()V

    .line 372
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache read, num images: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/w;->e:Lcom/flurry/android/ae;

    invoke-virtual {v2}, Lcom/flurry/android/ae;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private a(Ljava/io/DataOutputStream;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 377
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 379
    iget-wide v0, p0, Lcom/flurry/android/w;->d:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 381
    iget-object v0, p0, Lcom/flurry/android/w;->e:Lcom/flurry/android/ae;

    invoke-virtual {v0}, Lcom/flurry/android/ae;->b()Ljava/util/Collection;

    move-result-object v0

    .line 382
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 383
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 385
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 386
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdImage;

    iget-wide v5, v0, Lcom/flurry/android/AdImage;->a:J

    invoke-interface {p1, v5, v6}, Ljava/io/DataOutput;->writeLong(J)V

    iget v1, v0, Lcom/flurry/android/AdImage;->b:I

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    iget v1, v0, Lcom/flurry/android/AdImage;->c:I

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v1, v0, Lcom/flurry/android/AdImage;->d:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/flurry/android/AdImage;->e:[B

    array-length v1, v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, v0, Lcom/flurry/android/AdImage;->e:[B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    goto :goto_0

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/w;->f:Lcom/flurry/android/ae;

    invoke-virtual {v0}, Lcom/flurry/android/ae;->b()Ljava/util/Collection;

    move-result-object v0

    .line 390
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 391
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 393
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 394
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/ak;

    iget-object v1, v0, Lcom/flurry/android/ak;->a:Ljava/lang/String;

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeBoolean(Z)V

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/flurry/android/ak;->a:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    :cond_1
    iget-object v1, v0, Lcom/flurry/android/ak;->b:Ljava/lang/String;

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeBoolean(Z)V

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/flurry/android/ak;->b:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    :cond_2
    iget v0, v0, Lcom/flurry/android/ak;->c:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_3

    .line 397
    :cond_5
    iget-object v0, p0, Lcom/flurry/android/w;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 398
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 399
    iget-object v0, p0, Lcom/flurry/android/w;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 401
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 402
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/f;

    iget-object v1, v0, Lcom/flurry/android/f;->a:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget-byte v1, v0, Lcom/flurry/android/f;->b:B

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    iget-byte v0, v0, Lcom/flurry/android/f;->c:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_4

    .line 405
    :cond_6
    iget-object v0, p0, Lcom/flurry/android/w;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 406
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 407
    iget-object v0, p0, Lcom/flurry/android/w;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 409
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 410
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/s;

    .line 411
    if-nez v0, :cond_8

    move v1, v3

    .line 412
    :goto_5
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    move v2, v3

    .line 413
    :goto_6
    if-ge v2, v1, :cond_7

    .line 415
    aget-object v5, v0, v2

    iget-wide v6, v5, Lcom/flurry/android/s;->a:J

    invoke-interface {p1, v6, v7}, Ljava/io/DataOutput;->writeLong(J)V

    iget-wide v6, v5, Lcom/flurry/android/s;->b:J

    invoke-interface {p1, v6, v7}, Ljava/io/DataOutput;->writeLong(J)V

    iget-object v6, v5, Lcom/flurry/android/s;->d:Ljava/lang/String;

    invoke-interface {p1, v6}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/flurry/android/s;->c:Ljava/lang/String;

    invoke-interface {p1, v6}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget-wide v6, v5, Lcom/flurry/android/s;->e:J

    invoke-interface {p1, v6, v7}, Ljava/io/DataOutput;->writeLong(J)V

    iget-object v6, v5, Lcom/flurry/android/s;->f:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {p1, v6, v7}, Ljava/io/DataOutput;->writeLong(J)V

    iget-object v6, v5, Lcom/flurry/android/s;->g:[B

    array-length v6, v6

    invoke-interface {p1, v6}, Ljava/io/DataOutput;->writeByte(I)V

    iget-object v5, v5, Lcom/flurry/android/s;->g:[B

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->write([B)V

    .line 413
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 411
    :cond_8
    array-length v1, v0

    goto :goto_5

    .line 419
    :cond_9
    iget-object v0, p0, Lcom/flurry/android/w;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 420
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 421
    iget-object v0, p0, Lcom/flurry/android/w;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 423
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 424
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/d;

    invoke-virtual {v0, p1}, Lcom/flurry/android/d;->a(Ljava/io/DataOutput;)V

    goto :goto_7

    .line 427
    :cond_a
    iget-object v0, p0, Lcom/flurry/android/w;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 428
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 429
    iget-object v0, p0, Lcom/flurry/android/w;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 431
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 432
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_8

    .line 434
    :cond_b
    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 224
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 225
    if-nez v0, :cond_0

    .line 227
    const-string v0, "FlurryAgent"

    const-string v1, "Cannot delete cached ads"

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    return-void
.end method

.method private f()V
    .locals 7

    .prologue
    .line 236
    iget-object v0, p0, Lcom/flurry/android/w;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/w;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/s;

    .line 245
    if-eqz v0, :cond_1

    .line 247
    array-length v3, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 249
    iget-object v5, v4, Lcom/flurry/android/s;->f:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/flurry/android/w;->b(J)Lcom/flurry/android/AdImage;

    move-result-object v5

    iput-object v5, v4, Lcom/flurry/android/s;->h:Lcom/flurry/android/AdImage;

    iget-wide v4, v4, Lcom/flurry/android/s;->a:J

    invoke-virtual {p0, v4, v5}, Lcom/flurry/android/w;->a(J)Lcom/flurry/android/ak;

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/w;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/f;

    .line 257
    iget-object v2, v0, Lcom/flurry/android/f;->d:Lcom/flurry/android/d;

    if-nez v2, :cond_4

    iget-byte v2, v0, Lcom/flurry/android/f;->c:B

    invoke-direct {p0, v2}, Lcom/flurry/android/w;->a(B)Lcom/flurry/android/d;

    move-result-object v2

    iput-object v2, v0, Lcom/flurry/android/f;->d:Lcom/flurry/android/d;

    :cond_4
    iget-object v2, v0, Lcom/flurry/android/f;->d:Lcom/flurry/android/d;

    if-nez v2, :cond_3

    const-string v2, "FlurryAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No ad theme found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v0, v0, Lcom/flurry/android/f;->c:B

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/flurry/android/ah;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 259
    :cond_5
    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".flurryappcircle."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/w;->c:Lcom/flurry/android/a;

    iget-object v1, v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final declared-synchronized a(S)Lcom/flurry/android/AdImage;
    .locals 2

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/w;->j:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/w;->b(J)Lcom/flurry/android/AdImage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(J)Lcom/flurry/android/ak;
    .locals 2

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/w;->f:Lcom/flurry/android/ae;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/ae;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/ak;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a()Ljava/util/Set;
    .locals 1

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/w;->e:Lcom/flurry/android/ae;

    invoke-virtual {v0}, Lcom/flurry/android/ae;->c()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/w;->d:J

    .line 126
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 128
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/flurry/android/w;->e:Lcom/flurry/android/ae;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/flurry/android/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 134
    :cond_1
    :try_start_1
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 136
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 138
    iget-object v2, p0, Lcom/flurry/android/w;->f:Lcom/flurry/android/ae;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/flurry/android/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 142
    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 144
    iput-object p2, p0, Lcom/flurry/android/w;->h:Ljava/util/Map;

    .line 146
    :cond_4
    if-eqz p3, :cond_5

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 148
    iput-object p3, p0, Lcom/flurry/android/w;->i:Ljava/util/Map;

    .line 150
    :cond_5
    if-eqz p6, :cond_6

    invoke-interface {p6}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 152
    iput-object p6, p0, Lcom/flurry/android/w;->j:Ljava/util/Map;

    .line 155
    :cond_6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/w;->g:Ljava/util/Map;

    .line 156
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 158
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/f;

    .line 159
    iget-byte v2, v1, Lcom/flurry/android/f;->b:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/flurry/android/s;

    .line 160
    if-eqz v2, :cond_8

    .line 162
    iget-object v4, p0, Lcom/flurry/android/w;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_8
    iget-byte v0, v1, Lcom/flurry/android/f;->c:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/d;

    .line 165
    if-eqz v0, :cond_7

    .line 167
    iput-object v0, v1, Lcom/flurry/android/f;->d:Lcom/flurry/android/d;

    goto :goto_2

    .line 171
    :cond_9
    invoke-direct {p0}, Lcom/flurry/android/w;->f()V

    .line 172
    const/16 v0, 0xca

    invoke-direct {p0, v0}, Lcom/flurry/android/w;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    monitor-exit p0

    return-void
.end method

.method final declared-synchronized a(Ljava/lang/String;)[Lcom/flurry/android/s;
    .locals 2

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/w;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/s;

    .line 58
    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/flurry/android/w;->g:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_0
    monitor-exit p0

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(J)Lcom/flurry/android/AdImage;
    .locals 2

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/w;->e:Lcom/flurry/android/ae;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/ae;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdImage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(Ljava/lang/String;)Lcom/flurry/android/f;
    .locals 2

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/w;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/f;

    .line 94
    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/flurry/android/w;->h:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
    monitor-exit p0

    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/flurry/android/w;->k:Z

    return v0
.end method

.method final c()J
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Lcom/flurry/android/w;->d:J

    return-wide v0
.end method

.method final declared-synchronized d()V
    .locals 5

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/w;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/flurry/android/w;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 183
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    const/4 v2, 0x0

    .line 190
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 191
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 193
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 194
    const v2, 0xb5fb

    if-ne v0, v2, :cond_0

    .line 196
    invoke-direct {p0, v1}, Lcom/flurry/android/w;->a(Ljava/io/DataInputStream;)V

    .line 198
    const/16 v0, 0xc9

    invoke-direct {p0, v0}, Lcom/flurry/android/w;->a(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 213
    :goto_0
    :try_start_3
    invoke-static {v1}, Lcom/flurry/android/i;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 220
    :goto_1
    monitor-exit p0

    return-void

    .line 202
    :cond_0
    :try_start_4
    invoke-static {v3}, Lcom/flurry/android/w;->a(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 207
    :goto_2
    :try_start_5
    const-string v2, "FlurryAgent"

    const-string v4, "Discarding cache"

    invoke-static {v2, v4, v0}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    invoke-static {v3}, Lcom/flurry/android/w;->a(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 213
    :try_start_6
    invoke-static {v1}, Lcom/flurry/android/i;->a(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 213
    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_3
    :try_start_7
    invoke-static {v1}, Lcom/flurry/android/i;->a(Ljava/io/Closeable;)V

    throw v0

    .line 215
    :cond_1
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cache file does not exist, path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 213
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 205
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method final declared-synchronized e()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 264
    monitor-enter p0

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/w;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/flurry/android/w;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 270
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    .line 271
    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 273
    const-string v0, "FlurryAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create persistent dir: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 288
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/flurry/android/i;->a(Ljava/io/Closeable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    :goto_0
    monitor-exit p0

    return-void

    .line 276
    :cond_0
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 277
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 278
    const v0, 0xb5fb

    :try_start_3
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 280
    invoke-direct {p0, v2}, Lcom/flurry/android/w;->a(Ljava/io/DataOutputStream;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 288
    :try_start_4
    invoke-static {v2}, Lcom/flurry/android/i;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 282
    :catch_0
    move-exception v0

    .line 284
    :goto_1
    :try_start_5
    const-string v2, "FlurryAgent"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 288
    :try_start_6
    invoke-static {v1}, Lcom/flurry/android/i;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_2
    invoke-static {v1}, Lcom/flurry/android/i;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 282
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method
