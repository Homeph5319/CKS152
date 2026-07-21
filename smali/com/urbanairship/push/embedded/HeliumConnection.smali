.class public Lcom/urbanairship/push/embedded/HeliumConnection;
.super Ljava/lang/Thread;


# static fields
.field public static connected:Z


# instance fields
.field private boxOffice:Lcom/urbanairship/push/embedded/BoxOfficeClient;

.field private helium:Lcom/urbanairship/push/embedded/HeliumClient;

.field private lastRetryInterval:J

.field private manager:Lcom/urbanairship/push/embedded/EmbeddedPushManager;

.field private volatile running:Z

.field private socket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/urbanairship/push/embedded/HeliumConnection;->connected:Z

    return-void
.end method

.method public constructor <init>(Lcom/urbanairship/push/embedded/EmbeddedPushManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Z

    sget v0, Lcom/urbanairship/push/embedded/Config$Helium;->initialRetryInterval:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->lastRetryInterval:J

    iput-object p1, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->manager:Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    new-instance v0, Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-direct {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->boxOffice:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    const-string v0, "HeliumConnectionThread"

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/embedded/HeliumConnection;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private close(Ljava/net/Socket;)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/urbanairship/push/embedded/HeliumConnection;->connected:Z

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Error closing socket."

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sleepForRetryInterval(J)Z
    .locals 5

    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->lastRetryInterval:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p1

    cmp-long v3, v3, v1

    if-gez v3, :cond_0

    int-to-long v3, v0

    mul-long v0, v1, v3

    sget-wide v2, Lcom/urbanairship/push/embedded/Config$Helium;->maxRetryInterval:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rescheduling connection in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    iput-wide v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->lastRetryInterval:J

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    sget v0, Lcom/urbanairship/push/embedded/Config$Helium;->initialRetryInterval:I

    int-to-long v0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public abort()V
    .locals 1

    const-string v0, "Connection aborting."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Z

    const-string v0, "Closing socket."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/urbanairship/push/embedded/HeliumConnection;->close(Ljava/net/Socket;)V

    :cond_0
    const-string v0, "Service stopped, socket closed successfully."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public resetConnectionIfNecessary()V
    .locals 6

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->helium:Lcom/urbanairship/push/embedded/HeliumClient;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->helium:Lcom/urbanairship/push/embedded/HeliumClient;

    invoke-virtual {v2}, Lcom/urbanairship/push/embedded/HeliumClient;->getLastKeepAlive()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/urbanairship/push/embedded/Config$Helium;->max_keepalive_interval:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/urbanairship/push/embedded/HeliumConnection;->close(Ljava/net/Socket;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v0, "HeliumConnection - run"

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    iput-boolean v10, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Z

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/urbanairship/push/embedded/Network;->typeName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->manager:Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    invoke-static {}, Lcom/urbanairship/push/embedded/Network;->getActiveIPAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->setIPAddress(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->boxOffice:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->lookup()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;

    const-string v1, "No Helium servers available for connection."

    invoke-direct {v0, v1}, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v2, v3}, Lcom/urbanairship/push/embedded/HeliumConnection;->sleepForRetryInterval(J)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v9, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v4, v0, v9

    new-instance v5, Ljava/lang/Integer;

    aget-object v0, v0, v10

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Z

    if-nez v0, :cond_3

    const-string v0, "Connection sequence aborted. Ending prior to opening Helium connection."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connecting to "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    :try_start_1
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v4, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    sget-wide v7, Lcom/urbanairship/push/embedded/Config$Helium;->max_keepalive_interval:J

    long-to-int v4, v7

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v0, v6, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection established to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " on network type "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/urbanairship/push/embedded/HeliumConnection;->connected:Z

    new-instance v0, Lcom/urbanairship/push/embedded/HeliumClient;

    iget-object v4, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    iget-object v5, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->boxOffice:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-direct {v0, v4, v5}, Lcom/urbanairship/push/embedded/HeliumClient;-><init>(Ljava/net/Socket;Lcom/urbanairship/push/embedded/BoxOfficeClient;)V

    iput-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->helium:Lcom/urbanairship/push/embedded/HeliumClient;

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->helium:Lcom/urbanairship/push/embedded/HeliumClient;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/HeliumClient;->register()V

    :goto_2
    iget-boolean v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->helium:Lcom/urbanairship/push/embedded/HeliumClient;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/HeliumClient;->readResponse()V

    sget v0, Lcom/urbanairship/push/embedded/Config$Helium;->readSleep:I

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/urbanairship/push/embedded/HeliumClient$HeliumException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_2
    const-string v0, "Connection thread interrupted."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Z

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection aborted, shutting down. Network type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Z

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection aborted, shutting down. Network type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/urbanairship/push/embedded/HeliumConnection;->close(Ljava/net/Socket;)V

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->boxOffice:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->incrementFailureCount()V

    invoke-static {}, Lcom/urbanairship/push/embedded/Network;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->manager:Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->isInHoldingPattern()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, v2, v3}, Lcom/urbanairship/push/embedded/HeliumConnection;->sleepForRetryInterval(J)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v9, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Z

    goto/16 :goto_1

    :cond_6
    iput-boolean v9, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Z

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/urbanairship/push/embedded/HeliumConnection;->close(Ljava/net/Socket;)V

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->boxOffice:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->incrementFailureCount()V

    invoke-static {}, Lcom/urbanairship/push/embedded/Network;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->manager:Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->isInHoldingPattern()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0, v2, v3}, Lcom/urbanairship/push/embedded/HeliumConnection;->sleepForRetryInterval(J)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v9, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Z

    goto/16 :goto_1

    :cond_8
    iput-boolean v9, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Z

    goto/16 :goto_1

    :catch_2
    move-exception v0

    :try_start_3
    const-string v0, "Invalid protobuf (expected, likely due to interruption)."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-boolean v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Z

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection aborted, shutting down. Network type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/urbanairship/push/embedded/HeliumConnection;->close(Ljava/net/Socket;)V

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->boxOffice:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->incrementFailureCount()V

    invoke-static {}, Lcom/urbanairship/push/embedded/Network;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->manager:Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->isInHoldingPattern()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0, v2, v3}, Lcom/urbanairship/push/embedded/HeliumConnection;->sleepForRetryInterval(J)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v9, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Z

    goto/16 :goto_1

    :cond_a
    iput-boolean v9, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Z

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_4
    const-string v0, "Socket timed out."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-boolean v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Z

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection aborted, shutting down. Network type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/urbanairship/push/embedded/HeliumConnection;->close(Ljava/net/Socket;)V

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->boxOffice:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->incrementFailureCount()V

    invoke-static {}, Lcom/urbanairship/push/embedded/Network;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->manager:Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->isInHoldingPattern()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, v2, v3}, Lcom/urbanairship/push/embedded/HeliumConnection;->sleepForRetryInterval(J)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v9, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Z

    goto/16 :goto_1

    :cond_c
    iput-boolean v9, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Z

    goto/16 :goto_0

    :catch_4
    move-exception v0

    :try_start_5
    const-string v0, "IOException (Expected following restart or connectivity change)."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-boolean v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Z

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection aborted, shutting down. Network type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/urbanairship/push/embedded/HeliumConnection;->close(Ljava/net/Socket;)V

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->boxOffice:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->incrementFailureCount()V

    invoke-static {}, Lcom/urbanairship/push/embedded/Network;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->manager:Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->isInHoldingPattern()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0, v2, v3}, Lcom/urbanairship/push/embedded/HeliumConnection;->sleepForRetryInterval(J)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v9, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Z

    goto/16 :goto_1

    :cond_e
    iput-boolean v9, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Z

    goto/16 :goto_0

    :catch_5
    move-exception v0

    :try_start_6
    const-string v0, "Helium exception - secret not set."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-boolean v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Z

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection aborted, shutting down. Network type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/urbanairship/push/embedded/HeliumConnection;->close(Ljava/net/Socket;)V

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->boxOffice:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->incrementFailureCount()V

    invoke-static {}, Lcom/urbanairship/push/embedded/Network;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->manager:Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->isInHoldingPattern()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0, v2, v3}, Lcom/urbanairship/push/embedded/HeliumConnection;->sleepForRetryInterval(J)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v9, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Z

    goto/16 :goto_1

    :cond_10
    iput-boolean v9, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Z

    goto/16 :goto_0

    :catch_6
    move-exception v0

    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in Helium connection. Network type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-boolean v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Z

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection aborted, shutting down. Network type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/urbanairship/push/embedded/HeliumConnection;->close(Ljava/net/Socket;)V

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->boxOffice:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->incrementFailureCount()V

    invoke-static {}, Lcom/urbanairship/push/embedded/Network;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->manager:Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->isInHoldingPattern()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0, v2, v3}, Lcom/urbanairship/push/embedded/HeliumConnection;->sleepForRetryInterval(J)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v9, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Z

    goto/16 :goto_1

    :cond_12
    iput-boolean v9, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-boolean v4, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Z

    if-nez v4, :cond_13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection aborted, shutting down. Network type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    :goto_3
    throw v0

    :cond_13
    iget-object v1, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    invoke-direct {p0, v1}, Lcom/urbanairship/push/embedded/HeliumConnection;->close(Ljava/net/Socket;)V

    iget-object v1, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->boxOffice:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-virtual {v1}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->incrementFailureCount()V

    invoke-static {}, Lcom/urbanairship/push/embedded/Network;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->manager:Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    invoke-virtual {v1}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->isInHoldingPattern()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-direct {p0, v2, v3}, Lcom/urbanairship/push/embedded/HeliumConnection;->sleepForRetryInterval(J)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v9, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Z

    goto/16 :goto_1

    :cond_14
    iput-boolean v9, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Z

    goto :goto_3
.end method
