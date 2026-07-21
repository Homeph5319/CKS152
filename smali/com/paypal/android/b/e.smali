.class public final Lcom/paypal/android/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/MEP/a$a;


# instance fields
.field private a:Lorg/apache/http/client/methods/HttpPost;

.field private b:Lorg/apache/http/client/methods/HttpGet;

.field private c:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/b/e;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    iput v1, p0, Lcom/paypal/android/b/e;->d:I

    iput v1, p0, Lcom/paypal/android/b/e;->e:I

    iput v1, p0, Lcom/paypal/android/b/e;->f:I

    new-instance v0, Lcom/paypal/android/b/f;

    invoke-direct {v0, p0}, Lcom/paypal/android/b/f;-><init>(Lcom/paypal/android/b/e;)V

    iput-object v0, p0, Lcom/paypal/android/b/e;->h:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/b/e;I)I
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/paypal/android/b/e;->f:I

    return v0
.end method

.method private a(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/paypal/android/b/e;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v1, p0, Lcom/paypal/android/b/e;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    :cond_0
    iget-object v1, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    const-string v2, "SessionToken"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/paypal/android/b/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const-string v1, "MEPAuthenticateUser?"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/paypal/android/b/e;->a:Lorg/apache/http/client/methods/HttpPost;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/paypal/android/b/e;->a:Lorg/apache/http/client/methods/HttpPost;

    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/paypal/android/b/e;->k(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/b/e;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/paypal/android/b/e;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v1

    :goto_1
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    int-to-char v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_1

    :pswitch_0
    const-string v1, ""

    goto :goto_0

    :pswitch_1
    const-string v1, "MEPAuthenticate?"

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/b/e;->k(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/paypal/android/b/e;->a:Lorg/apache/http/client/methods/HttpPost;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/paypal/android/b/e;->c:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/paypal/android/b/e;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic a(Lcom/paypal/android/b/e;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/paypal/android/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/paypal/android/b/e;->q()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    :goto_1
    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "Email"

    invoke-direct {v0, v1, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "Password"

    invoke-direct {v0, v1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "APIVersion"

    const-string v4, "3.0"

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "PayPalApplicationID"

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPal;->getAppID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getParentContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "DeviceReferenceToken"

    invoke-virtual {v0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v4

    new-array v4, v4, [B

    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-lez v4, :cond_5

    :goto_3
    :try_start_2
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "DeviceReferenceToken"

    invoke-direct {v1, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->hasOptedIn()Z

    move-result v0

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "AuthorizeDevice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v3}, Lcom/paypal/android/b/e;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/paypal/android/b/e;->h(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_4
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "Phone"

    invoke-direct {v0, v1, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "PIN"

    invoke-direct {v0, v1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto/16 :goto_0

    :cond_4
    :try_start_3
    invoke-static {v0}, Lcom/paypal/android/b/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/paypal/android/b/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object p1

    goto :goto_4

    :catch_1
    move-exception v0

    :cond_5
    move-object v0, v1

    goto/16 :goto_3
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 8

    const/4 v1, 0x0

    const/16 v7, 0x400

    const/4 v2, 0x0

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v3, v2

    move-object v0, v1

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    if-nez v0, :cond_0

    const/16 v6, 0x400

    new-array v0, v6, [B

    :cond_0
    if-ne v3, v7, :cond_1

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x400

    :try_start_1
    new-array v0, v0, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v2

    :cond_1
    int-to-byte v5, v5

    :try_start_2
    aput-byte v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    :goto_1
    if-ge v2, v3, :cond_3

    aget-byte v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    new-array v0, v0, [B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method static synthetic b(Lcom/paypal/android/b/e;)I
    .locals 1

    iget v0, p0, Lcom/paypal/android/b/e;->f:I

    return v0
.end method

.method static synthetic b(Lcom/paypal/android/b/e;I)I
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/paypal/android/b/e;->d:I

    return v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/paypal/android/b/e;->j(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/paypal/android/b/e;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/b/e;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    :cond_0
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/paypal/android/b/e;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-static {}, Lcom/paypal/android/b/e;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "xml"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/paypal/android/b/e;->a:Lorg/apache/http/client/methods/HttpPost;

    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v3, v0, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :goto_0
    iget-object v0, p0, Lcom/paypal/android/b/e;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/paypal/android/b/e;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_9

    move v2, v4

    move v0, v4

    :goto_1
    array-length v6, v3

    if-ge v2, v6, :cond_a

    aget-object v6, v3, v2

    invoke-interface {v6}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Content-Length"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    aget-object v0, v3, v2

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/paypal/android/b/e;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/paypal/android/b/e;->a:Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "CLIENT-AUTH"

    const-string v3, "No cert"

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/paypal/android/b/e;->a:Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "X-PAYPAL-MESSAGE-PROTOCOL"

    const-string v3, "SOAP11"

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/b/e;->a:Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "X-PAYPAL-DEVICE-IPADDRESS"

    invoke-static {}, Lcom/paypal/android/b/e;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/b/e;->a:Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "X-PAYPAL-APPLICATION-ID"

    sget-object v3, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPal;->getAppID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/b/e;->a:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "X-PAYPAL-DEVICE-AUTH-TOKEN"

    iget-object v0, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    const-string v5, "SessionToken"

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/b/e;->a:Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "X-PAYPAL-REQUEST-SOURCE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MPL_Android_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/b/e;->a:Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "X-PAYPAL-REQUEST-DATA-FORMAT"

    const-string v3, "XML"

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/b/e;->a:Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "X-PAYPAL-RESPONSE-DATA-FORMAT"

    const-string v3, "XML"

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/b/e;->a:Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "x-paypal-service-version"

    const-string v3, "1.0.0"

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/b/e;->a:Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "x-paypal-element-ordering-preserve"

    const-string v3, "false"

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/b/e;->a:Lorg/apache/http/client/methods/HttpPost;

    new-instance v2, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v2, p1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :cond_3
    :goto_4
    if-eqz v3, :cond_4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :cond_4
    :goto_5
    iput-object v1, p0, Lcom/paypal/android/b/e;->a:Lorg/apache/http/client/methods/HttpPost;

    iput-object v1, p0, Lcom/paypal/android/b/e;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    iput v4, p0, Lcom/paypal/android/b/e;->e:I

    move-object v0, v1

    :goto_6
    return-object v0

    :cond_5
    :try_start_4
    iget-object v0, p0, Lcom/paypal/android/b/e;->a:Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "X-PAYPAL-SECURITY-PASSWORD"

    const-string v3, "MPL"

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/b/e;->a:Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "X-PAYPAL-SECURITY-USERID"

    const-string v3, "MPL"

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/b/e;->a:Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "X-PAYPAL-SECURITY-SIGNATURE"

    const-string v3, "MPL"

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_7
    if-eqz v2, :cond_6

    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    :cond_6
    :goto_8
    if-eqz v3, :cond_7

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    :cond_7
    :goto_9
    iput-object v1, p0, Lcom/paypal/android/b/e;->a:Lorg/apache/http/client/methods/HttpPost;

    iput-object v1, p0, Lcom/paypal/android/b/e;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    throw v0

    :cond_8
    :try_start_7
    const-string v0, "ErrorId=-1"
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iput-object v1, p0, Lcom/paypal/android/b/e;->a:Lorg/apache/http/client/methods/HttpPost;

    iput-object v1, p0, Lcom/paypal/android/b/e;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    goto :goto_6

    :cond_9
    move v0, v4

    :cond_a
    :try_start_8
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v3

    :try_start_9
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v6

    if-le v6, v0, :cond_b

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v0

    :cond_b
    invoke-virtual {v2}, Ljava/io/DataInputStream;->available()I

    move-result v6

    if-le v6, v0, :cond_c

    invoke-virtual {v2}, Ljava/io/DataInputStream;->available()I

    move-result v0

    :cond_c
    if-eqz v0, :cond_f

    new-array v6, v0, [B

    invoke-virtual {v2, v6}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v0, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v0, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_a
    if-eqz v5, :cond_d

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_d
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/paypal/android/b/e;->a:Lorg/apache/http/client/methods/HttpPost;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/paypal/android/b/e;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {v0}, Lcom/paypal/android/b/e;->j(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    :goto_b
    if-eqz v3, :cond_e

    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    :cond_e
    :goto_c
    iput-object v1, p0, Lcom/paypal/android/b/e;->a:Lorg/apache/http/client/methods/HttpPost;

    iput-object v1, p0, Lcom/paypal/android/b/e;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    goto/16 :goto_6

    :cond_f
    :try_start_d
    new-instance v0, Ljava/lang/String;

    invoke-static {v2}, Lcom/paypal/android/b/e;->a(Ljava/io/InputStream;)[B

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v0, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_a

    :catch_1
    move-exception v0

    goto/16 :goto_3

    :catch_2
    move-exception v2

    goto :goto_b

    :catch_3
    move-exception v2

    goto :goto_c

    :catch_4
    move-exception v0

    goto/16 :goto_4

    :catch_5
    move-exception v0

    goto/16 :goto_5

    :catch_6
    move-exception v2

    goto :goto_8

    :catch_7
    move-exception v2

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto/16 :goto_7

    :catchall_2
    move-exception v0

    goto/16 :goto_7

    :catch_8
    move-exception v0

    move-object v2, v1

    goto/16 :goto_3
.end method

.method public static final b()Z
    .locals 2

    :try_start_0
    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/e;

    iget-object v0, v0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    const-string v1, "PayButtonEnable"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "1"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "1"

    goto :goto_0

    :cond_1
    const-string v1, "CA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "1"

    goto :goto_0

    :cond_2
    const-string v1, "GB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "44"

    goto :goto_0

    :cond_3
    const-string v1, "AU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    const-string v0, "61"

    goto :goto_0

    :cond_4
    const-string v1, "FR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    const-string v0, "33"

    goto :goto_0

    :cond_5
    const-string v1, "ES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    const-string v0, "34"

    goto :goto_0

    :cond_6
    const-string v1, "IT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "39"

    goto :goto_0

    :cond_7
    const-string v0, "1"

    goto :goto_0
.end method

.method public static c()V
    .locals 3

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/paypal/android/b/e;

    invoke-direct {v0}, Lcom/paypal/android/b/e;-><init>()V

    sput-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/e;

    :cond_0
    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/e;

    iget-object v0, v0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/e;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, v0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    :cond_1
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/e;

    iget-object v0, v0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    const-string v1, "PayButtonEnable"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPal;->setLibraryInitialized(Z)V

    :cond_2
    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/e;

    iget-object v0, v0, Lcom/paypal/android/b/e;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/e;

    iget-object v0, v0, Lcom/paypal/android/b/e;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/paypal/android/b/e;)Z
    .locals 1

    invoke-direct {p0}, Lcom/paypal/android/b/e;->v()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/paypal/android/b/e;)Z
    .locals 1

    invoke-direct {p0}, Lcom/paypal/android/b/e;->r()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/paypal/android/b/e;)Z
    .locals 1

    invoke-direct {p0}, Lcom/paypal/android/b/e;->k()Z

    move-result v0

    return v0
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "560027"

    aput-object v0, v3, v1

    const-string v0, "580022"

    aput-object v0, v3, v2

    const/4 v0, 0x2

    const-string v4, "580023"

    aput-object v4, v3, v0

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic f(Lcom/paypal/android/b/e;)Ljava/util/Hashtable;
    .locals 1

    invoke-direct {p0}, Lcom/paypal/android/b/e;->s()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method private static f(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "10818"

    aput-object v0, v3, v1

    const-string v0, "10897"

    aput-object v0, v3, v2

    const/4 v0, 0x2

    const-string v4, "10898"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    const-string v4, "10899"

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string v4, "520003"

    aput-object v4, v3, v0

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic g(Lcom/paypal/android/b/e;)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x0

    iget-object v4, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    const-string v0, "SessionToken"

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "RecipientType"

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "PaymentCurrencyID"

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "PaymentAmount"

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "Tax"

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "Shipping"

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-static {v0, v3}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "ItemName"

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v8, "utf-8"

    invoke-static {v0, v8}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v10, v0, 0x3

    if-le v9, v10, :cond_0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v1, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :cond_0
    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v10, v0, 0x3

    if-le v9, v10, :cond_1

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v2, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :cond_1
    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v10, v0, 0x3

    if-le v9, v10, :cond_2

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v3, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :cond_2
    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\"\nxmlns:SOAP-ENC=\"http://schemas.xmlsoap.org/soap/encoding/\"\nxmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\nxmlns:xsd=\"http://www.w3.org/2001/XMLSchema\"\nxmlns:xs=\"http://www.w3.org/2001/XMLSchema\"\nxmlns:cc=\"urn:ebay:apis:CoreComponentTypes\"\nxmlns:wsu=\"http://schemas.xmlsoap.org/ws/2002/07/utility\"\nxmlns:saml=\"urn:oasis:names:tc:SAML:1.0:assertion\"\nxmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\"\nxmlns:wsse=\"http://schemas.xmlsoap.org/ws/2002/12/secext\"\nxmlns:ebl=\"urn:ebay:apis:eBLBaseComponents\"\nxmlns:ns=\"urn:ebay:api:PayPalAPI\">\n<SOAP-ENV:Header>\n<Security xmlns=\"http://schemas.xmlsoap.org/ws/2002/12/secext\" xsi:type=\"wsse:SecurityType\"></Security>\n<RequesterCredentials xmlns=\"urn:ebay:api:PayPalAPI\" xsi:type=\"ebl:CustomSecurityHeaderType\">\n<Credentials xmlns=\"urn:ebay:apis:eBLBaseComponents\" xsi:type=\"ebl:UserIdPasswordType\">\n<Username xsi:type=\"xs:string\">mfoundry_client</Username>\n<Password xsi:type=\"xs:string\">11111111</Password>\n</Credentials>\n</RequesterCredentials>\n</SOAP-ENV:Header>\n<SOAP-ENV:Body id=\"_0\">\n<MEPQuickPaymentReq xmlns=\"urn:ebay:api:PayPalAPI\">\n<Request>\n<Version xmlns=\"urn:ebay:apis:eBLBaseComponents\">1</Version>\n<RequestorID xsi:type=\"ns:IVRRequestorID\">eding-1</RequestorID>\n"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "<SessionToken xsi:type=\"ns:MEPSessionToken\">"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "</SessionToken>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v6, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "<RecipientType xsi:type=\"ns:IVRRecipientTypeType\">"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "</RecipientType>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v5, "Email"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "<RecipientEmail xsi:type=\"xs:string\">"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v0, "RecipientAddress"

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "utf-8"

    invoke-static {v0, v6}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "</RecipientEmail>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "<PaymentAmount xsi:type=\"ns:IVRAmountType\" currencyID=\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\">"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</PaymentAmount>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0.00"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<Tax xsi:type=\"cc:BasicAmountType\" currencyID=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</Tax>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-string v1, "0.00"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<Shipping xsi:type=\"cc:BasicAmountType\" currencyID=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</Shipping>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<ItemName xsi:type=\"xs:string\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</ItemName>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    const-string v0, "ShareHomeAddress"

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<ShareHomeAddress xsi:type=\"xs:int\">1</ShareHomeAddress>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</Request>\n</MEPQuickPaymentReq>\n</SOAP-ENV:Body>\n</SOAP-ENV:Envelope>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/b/e;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/paypal/android/b/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/paypal/android/b/e;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x0

    :cond_7
    :goto_2
    return-object v0

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "<RecipientPhone xsi:type=\"ns:IVRPhoneNumber\">\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v0, "RecipientAddress"

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/b/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v0, "RecipientAddress"

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/b/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "<CountryCode xsi:type=\"xs:string\">"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v0, "RecipientAddress"

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/b/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "utf-8"

    invoke-static {v0, v6}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "</CountryCode>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "<PhoneNumber xsi:type=\"xs:string\">"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v0, "RecipientAddress"

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/b/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "utf-8"

    invoke-static {v0, v6}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "</PhoneNumber>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "</RecipientPhone>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "<CountryCode xsi:type=\"xs:string\">"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v0, "RecipientCountryCode"

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "utf-8"

    invoke-static {v0, v6}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "</CountryCode>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_a
    invoke-static {v0}, Lcom/paypal/android/b/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, "-1"

    goto/16 :goto_2

    :cond_b
    move-object v1, v0

    goto/16 :goto_1
.end method

.method private static g(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x40

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "10001"

    aput-object v0, v3, v1

    const-string v0, "10004"

    aput-object v0, v3, v2

    const/4 v0, 0x2

    const-string v4, "10800"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    const-string v4, "10801"

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string v4, "10802"

    aput-object v4, v3, v0

    const/4 v0, 0x5

    const-string v4, "10804"

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const-string v4, "10805"

    aput-object v4, v3, v0

    const/4 v0, 0x7

    const-string v4, "10806"

    aput-object v4, v3, v0

    const/16 v0, 0x8

    const-string v4, "10808"

    aput-object v4, v3, v0

    const/16 v0, 0x9

    const-string v4, "10809"

    aput-object v4, v3, v0

    const/16 v0, 0xa

    const-string v4, "10810"

    aput-object v4, v3, v0

    const/16 v0, 0xb

    const-string v4, "10811"

    aput-object v4, v3, v0

    const/16 v0, 0xc

    const-string v4, "10812"

    aput-object v4, v3, v0

    const/16 v0, 0xd

    const-string v4, "10813"

    aput-object v4, v3, v0

    const/16 v0, 0xe

    const-string v4, "10815"

    aput-object v4, v3, v0

    const/16 v0, 0xf

    const-string v4, "10819"

    aput-object v4, v3, v0

    const/16 v0, 0x10

    const-string v4, "10820"

    aput-object v4, v3, v0

    const/16 v0, 0x11

    const-string v4, "10821"

    aput-object v4, v3, v0

    const/16 v0, 0x12

    const-string v4, "10822"

    aput-object v4, v3, v0

    const/16 v0, 0x13

    const-string v4, "10823"

    aput-object v4, v3, v0

    const/16 v0, 0x14

    const-string v4, "10824"

    aput-object v4, v3, v0

    const/16 v0, 0x15

    const-string v4, "10825"

    aput-object v4, v3, v0

    const/16 v0, 0x16

    const-string v4, "10849"

    aput-object v4, v3, v0

    const/16 v0, 0x17

    const-string v4, "10850"

    aput-object v4, v3, v0

    const/16 v0, 0x18

    const-string v4, "10858"

    aput-object v4, v3, v0

    const/16 v0, 0x19

    const-string v4, "10859"

    aput-object v4, v3, v0

    const/16 v0, 0x1a

    const-string v4, "10860"

    aput-object v4, v3, v0

    const/16 v0, 0x1b

    const-string v4, "10861"

    aput-object v4, v3, v0

    const/16 v0, 0x1c

    const-string v4, "10862"

    aput-object v4, v3, v0

    const/16 v0, 0x1d

    const-string v4, "10863"

    aput-object v4, v3, v0

    const/16 v0, 0x1e

    const-string v4, "10864"

    aput-object v4, v3, v0

    const/16 v0, 0x1f

    const-string v4, "10867"

    aput-object v4, v3, v0

    const/16 v0, 0x20

    const-string v4, "99999"

    aput-object v4, v3, v0

    const/16 v0, 0x21

    const-string v4, "520002"

    aput-object v4, v3, v0

    const/16 v0, 0x22

    const-string v4, "520009"

    aput-object v4, v3, v0

    const/16 v0, 0x23

    const-string v4, "539041"

    aput-object v4, v3, v0

    const/16 v0, 0x24

    const-string v4, "540031"

    aput-object v4, v3, v0

    const/16 v0, 0x25

    const-string v4, "550001"

    aput-object v4, v3, v0

    const/16 v0, 0x26

    const-string v4, "550006"

    aput-object v4, v3, v0

    const/16 v0, 0x27

    const-string v4, "559044"

    aput-object v4, v3, v0

    const/16 v0, 0x28

    const-string v4, "560027"

    aput-object v4, v3, v0

    const/16 v0, 0x29

    const-string v4, "569000"

    aput-object v4, v3, v0

    const/16 v0, 0x2a

    const-string v4, "569042"

    aput-object v4, v3, v0

    const/16 v0, 0x2b

    const-string v4, "569056"

    aput-object v4, v3, v0

    const/16 v0, 0x2c

    const-string v4, "569060"

    aput-object v4, v3, v0

    const/16 v0, 0x2d

    const-string v4, "579007"

    aput-object v4, v3, v0

    const/16 v0, 0x2e

    const-string v4, "579017"

    aput-object v4, v3, v0

    const/16 v0, 0x2f

    const-string v4, "579033"

    aput-object v4, v3, v0

    const/16 v0, 0x30

    const-string v4, "579040"

    aput-object v4, v3, v0

    const/16 v0, 0x31

    const-string v4, "579045"

    aput-object v4, v3, v0

    const/16 v0, 0x32

    const-string v4, "579047"

    aput-object v4, v3, v0

    const/16 v0, 0x33

    const-string v4, "579048"

    aput-object v4, v3, v0

    const/16 v0, 0x34

    const-string v4, "580001"

    aput-object v4, v3, v0

    const/16 v0, 0x35

    const-string v4, "580022"

    aput-object v4, v3, v0

    const/16 v0, 0x36

    const-string v4, "580023"

    aput-object v4, v3, v0

    const/16 v0, 0x37

    const-string v4, "580028"

    aput-object v4, v3, v0

    const/16 v0, 0x38

    const-string v4, "580030"

    aput-object v4, v3, v0

    const/16 v0, 0x39

    const-string v4, "580031"

    aput-object v4, v3, v0

    const/16 v0, 0x3a

    const-string v4, "580032"

    aput-object v4, v3, v0

    const/16 v0, 0x3b

    const-string v4, "580033"

    aput-object v4, v3, v0

    const/16 v0, 0x3c

    const-string v4, "580034"

    aput-object v4, v3, v0

    const/16 v0, 0x3d

    const-string v4, "589009"

    aput-object v4, v3, v0

    const/16 v0, 0x3e

    const-string v4, "589019"

    aput-object v4, v3, v0

    const/16 v0, 0x3f

    const-string v4, "500000"

    aput-object v4, v3, v0

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static h()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "https://mobileclient.paypal.com/mepadapter/"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "https://mobileclient.sandbox.paypal.com/mepadapter/"

    goto :goto_0

    :pswitch_2
    const-string v0, ""

    goto :goto_0

    :pswitch_3
    const-string v0, "https://www.stage2mobile12.paypal.com:10521/GMAdapter/"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic h(Lcom/paypal/android/b/e;)Z
    .locals 1

    invoke-direct {p0}, Lcom/paypal/android/b/e;->l()Z

    move-result v0

    return v0
.end method

.method private h(Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x0

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v2

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_5

    aget-object v4, v3, v0

    invoke-direct {p0, v4}, Lcom/paypal/android/b/e;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    aget-object v4, v3, v0

    if-eqz v4, :cond_3

    aget-object v4, v3, v0

    const-string v5, "SessionToken="

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    aget-object v4, v3, v0

    aget-object v5, v3, v0

    const-string v6, "SessionToken="

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const-string v6, "SessionToken="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    const-string v6, "SessionToken"

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    aget-object v4, v3, v0

    if-eqz v4, :cond_4

    aget-object v4, v3, v0

    const-string v5, "PinEstablished="

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    aget-object v4, v3, v0

    aget-object v5, v3, v0

    const-string v6, "PinEstablished="

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const-string v6, "PinEstablished="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    const-string v6, "PinEstablished"

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/paypal/android/MEP/PayPal;->setPINCreated(Z)V

    goto :goto_2

    :cond_4
    aget-object v4, v3, v0

    if-eqz v4, :cond_2

    aget-object v4, v3, v0

    const-string v5, "AuthorizedDevice="

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    aget-object v4, v3, v0

    aget-object v5, v3, v0

    const-string v6, "AuthorizedDevice="

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const-string v6, "AuthorizedDevice="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    const-string v6, "AuthorizedDevice"

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/paypal/android/MEP/PayPal;->setOptIn(Z)V

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPal;->hasOptedIn()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPal;->getAccountName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPal;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    :cond_6
    invoke-direct {p0}, Lcom/paypal/android/b/e;->v()Z

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    const-string v2, "SessionToken"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_8
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lcom/paypal/android/MEP/PayPal;->setLoginType(I)V

    goto :goto_3
.end method

.method private static i()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "https://svcs.paypal.com/AdaptivePayments/"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "https://svcs.sandbox.paypal.com/AdaptivePayments/"

    goto :goto_0

    :pswitch_2
    const-string v0, ""

    goto :goto_0

    :pswitch_3
    const-string v0, "https://www.stage2mobile12.paypal.com:10279/AdaptivePayments/"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic i(Lcom/paypal/android/b/e;)Ljava/lang/String;
    .locals 6

    iget-object v1, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "PayKey"

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-static {v0, v3}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "ActionType"

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-static {v0, v4}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "FundingPlanId"

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\">\n<soapenv:Body id=\"_0\">\n<ns2:ExecutePaymentRequest xmlns:ns2=\"http://svcs.paypal.com/types/ap\">\n<payKey>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</payKey>\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "<requestEnvelope>\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "<errorLanguage>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</errorLanguage>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</requestEnvelope>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<actionType>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</actionType>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<fundingPlanId>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</fundingPlanId>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</ns2:ExecutePaymentRequest></soapenv:Body>\n</soapenv:Envelope>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/paypal/android/b/e;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ExecutePayment/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/paypal/android/b/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/paypal/android/b/e;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    invoke-static {v0}, Lcom/paypal/android/b/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "-1"

    goto :goto_0
.end method

.method private i(Ljava/lang/String;)Z
    .locals 9

    const/16 v1, 0x198

    const/4 v2, -0x1

    const/16 v8, 0xb

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput v2, p0, Lcom/paypal/android/b/e;->e:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iput v1, p0, Lcom/paypal/android/b/e;->e:I

    :goto_0
    return v6

    :cond_1
    invoke-static {p1}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;)I

    move-result v0

    if-nez p1, :cond_2

    iput v1, p0, Lcom/paypal/android/b/e;->e:I

    goto :goto_0

    :cond_2
    const-string v1, "ErrorId="

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "ErrorId="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "ErrorId="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/paypal/android/b/e;->e:I

    :cond_3
    :goto_1
    iget v0, p0, Lcom/paypal/android/b/e;->e:I

    if-ne v0, v2, :cond_6

    move v6, v5

    goto :goto_0

    :cond_4
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/paypal/android/b/e;->e:I

    goto :goto_1

    :cond_5
    const-string v0, "<SOAP-ENV:Body"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "</SOAP-ENV:Body"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iput v5, p0, Lcom/paypal/android/b/e;->e:I

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/paypal/android/b/e;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANDROID_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/paypal/android/b/e;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/b/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/paypal/android/b/e;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/paypal/android/b/e;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {p1}, Lcom/paypal/android/b/i;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    move-object v1, v0

    move v0, v5

    :goto_2
    array-length v4, v2

    if-ge v0, v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v1, v0, 0x1

    array-length v7, v2

    if-ne v1, v7, :cond_7

    const-string v1, "."

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    const-string v1, ","

    goto :goto_3

    :cond_8
    move-object v0, v1

    :cond_9
    invoke-static {v3}, Lcom/paypal/android/b/e;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->FATAL_ERROR:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "FATAL_ERROR_ID"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v1, "569060"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v0, "ANDROID_no_personal_payments"

    invoke-static {v0}, Lcom/paypal/android/b/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_4
    iget v0, p0, Lcom/paypal/android/b/e;->d:I

    if-eq v0, v8, :cond_a

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/e;

    const-string v2, "CorrelationId"

    invoke-virtual {v1, v2}, Lcom/paypal/android/b/e;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/e;

    const-string v8, "PayKey"

    invoke-virtual {v2, v8}, Lcom/paypal/android/b/e;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/paypal/android/MEP/PayPalActivity;->paymentFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_a
    const-string v0, "FATAL_ERROR_MESSAGE"

    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_5
    :try_start_0
    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_b
    const-string v1, "500000"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v0, "ANDROID_10001"

    invoke-static {v0}, Lcom/paypal/android/b/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_4

    :cond_c
    const-string v1, "580001"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    const-string v2, "parameter"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_d

    const-string v1, "ANDROID_580001_4"

    invoke-static {v1}, Lcom/paypal/android/b/g;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_d
    move-object v4, v0

    goto/16 :goto_4

    :catch_1
    move-exception v1

    move-object v4, v0

    goto/16 :goto_4

    :cond_e
    const-string v1, "520009"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :try_start_2
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    const-string v2, "parameter"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_f

    const-string v1, "ANDROID_520009_2"

    invoke-static {v1}, Lcom/paypal/android/b/g;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :cond_f
    move-object v4, v0

    goto/16 :goto_4

    :catch_2
    move-exception v1

    :cond_10
    move-object v4, v0

    goto/16 :goto_4

    :cond_11
    invoke-static {v3}, Lcom/paypal/android/b/e;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget v1, p0, Lcom/paypal/android/b/e;->d:I

    if-eq v1, v8, :cond_12

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/paypal/android/MEP/PayPal;->setLoginType(I)V

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->LOGIN_FAIL:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "FATAL_ERROR_ID"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ERROR_TIMEOUT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto/16 :goto_5

    :cond_12
    invoke-static {v3}, Lcom/paypal/android/b/e;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/paypal/android/b/e;->d:I

    if-ne v1, v8, :cond_13

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->FATAL_ERROR:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "FATAL_ERROR_ID"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "FATAL_ERROR_MESSAGE"

    const-string v3, "ANDROID_pin_creation_timeout"

    invoke-static {v3}, Lcom/paypal/android/b/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ERROR_TIMEOUT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto/16 :goto_5

    :cond_13
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->CREATE_PAYMENT_FAIL:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method private static j()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "MEPAdapter"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, ""

    goto :goto_0

    :pswitch_1
    const-string v0, "GMAdapter"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic j(Lcom/paypal/android/b/e;)Ljava/util/Hashtable;
    .locals 1

    invoke-direct {p0}, Lcom/paypal/android/b/e;->t()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method private static j(Ljava/lang/String;)V
    .locals 3

    const-string v0, "<"

    const-string v1, "\n<"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, ">\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private static k(Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0xa

    const/16 v0, 0x5b

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ", "

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    return-void
.end method

.method private k()Z
    .locals 9

    iget-object v4, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    const-string v0, "SessionToken"

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "FlowContext"

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "ItemName"

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "PrimaryFSID"

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "BackupFSID"

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "AddressID"

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-static {v0, v3}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:SOAP-ENC=\"http://schemas.xmlsoap.org/soap/encoding/\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:cc=\"urn:ebay:apis:CoreComponentTypes\" xmlns:wsu=\"http://schemas.xmlsoap.org/ws/2002/07/utility\" xmlns:saml=\"urn:oasis:names:tc:SAML:1.0:assertion\" xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\" xmlns:wsse=\"http://schemas.xmlsoap.org/ws/2002/12/secext\" xmlns:ebl=\"urn:ebay:apis:eBLBaseComponents\" xmlns:ns=\"urn:ebay:api:PayPalAPI\"><SOAP-ENV:Header><Security xmlns=\"http://schemas.xmlsoap.org/ws/2002/12/secext\" xsi:type=\"wsse:SecurityType\"></Security><RequesterCredentials xmlns=\"urn:ebay:api:PayPalAPI\" xsi:type=\"ebl:CustomSecurityHeaderType\"><Credentials xmlns=\"urn:ebay:apis:eBLBaseComponents\" xsi:type=\"ebl:UserIdPasswordType\"><Username xsi:type=\"xs:string\">mfoundry_client</Username><Password xsi:type=\"xs:string\">11111111</Password></Credentials></RequesterCredentials></SOAP-ENV:Header><SOAP-ENV:Body id=\"_0\"><MEPUpdatePaymentReq xmlns=\"urn:ebay:api:PayPalAPI\"><Request><Version xmlns=\"urn:ebay:apis:eBLBaseComponents\">1</Version><RequestorID xsi:type=\"ns:IVRRequestorID\">eding-1</RequestorID><SessionToken xsi:type=\"ns:MEPSessionToken\">"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "</SessionToken>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "<FlowContext xsi:type=\"ns:IVRFlowContext\">"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "</FlowContext>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v1, :cond_5

    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "<PrimaryFSID xsi:type=\"ns:IVRFundingSourceID\">"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</PrimaryFSID>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v2, :cond_4

    const-string v0, ""

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<BackupFSID xsi:type=\"ns:IVRFundingSourceID\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</BackupFSID>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v3, :cond_3

    const-string v0, ""

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<AddressID xsi:type=\"xs:string\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</AddressID>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v7, :cond_1

    const-string v0, " "

    :cond_0
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<ItemName xsi:type=\"ns:string\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</ItemName>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<FeeBearer>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, "FeeBearer"

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</FeeBearer>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</Request></MEPUpdatePaymentReq></SOAP-ENV:Body></SOAP-ENV:Envelope>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/b/e;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/paypal/android/b/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/paypal/android/b/e;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Lcom/paypal/android/b/i;->b(Ljava/lang/String;Ljava/util/Hashtable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const-string v0, " "

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Lcom/paypal/android/b/i;->b(Ljava/lang/String;Ljava/util/Hashtable;)Z

    const/4 v0, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_3
    move-object v0, v3

    goto/16 :goto_2

    :cond_4
    move-object v0, v2

    goto/16 :goto_1

    :cond_5
    move-object v0, v1

    goto/16 :goto_0
.end method

.method static synthetic k(Lcom/paypal/android/b/e;)Z
    .locals 1

    invoke-direct {p0}, Lcom/paypal/android/b/e;->m()Z

    move-result v0

    return v0
.end method

.method private l()Z
    .locals 10

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    const-string v0, "PayKey"

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "DisplayOptions"

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/b/a/f;

    const-string v1, "InstitutionCustomer"

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/paypal/android/b/a/j;

    const-string v2, "ShippingAddressId"

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v7, "utf-8"

    invoke-static {v2, v7}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "SenderOptions"

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/paypal/android/b/a/k;

    const-string v8, "Receivers"

    invoke-virtual {v3, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\">\n<soapenv:Body id=\"_0\">\n<ns2:SetPaymentOptionsRequest xmlns:ns2=\"http://svcs.paypal.com/types/ap\">\n<payKey>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "</payKey>\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "<requestEnvelope>\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "<errorLanguage>"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "</errorLanguage>\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "</requestEnvelope>\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_0

    :cond_0
    if-eqz v1, :cond_1

    :cond_1
    if-eqz v7, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<shippingAddressId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</shippingAddressId>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<senderOptions>\n<sharePhoneNumber>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</sharePhoneNumber>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<shareAddress>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</shareAddress>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<requireShippingAddressSelection>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</requireShippingAddressSelection>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</senderOptions>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v3, :cond_11

    move v6, v5

    move-object v2, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_12

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/paypal/android/MEP/PayPalReceiverDetails;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<receiverOptions>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<description>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getDescription()Ljava/lang/String;

    move-result-object v2

    const-string v4, "utf-8"

    invoke-static {v2, v4}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</description>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getCustomID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getCustomID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<customId>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getCustomID()Ljava/lang/String;

    move-result-object v2

    const-string v4, "utf-8"

    invoke-static {v2, v4}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</customId>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v2

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<invoiceData>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v4, v5

    move-object v2, v0

    :goto_2
    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getInvoiceItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_a

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getInvoiceItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/PayPalInvoiceItem;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "<item>\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalInvoiceItem;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalInvoiceItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "<name>"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalInvoiceItem;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "utf-8"

    invoke-static {v7, v8}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "</name>\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_5
    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalInvoiceItem;->getID()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalInvoiceItem;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "<identifier>"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalInvoiceItem;->getID()Ljava/lang/String;

    move-result-object v7

    const-string v8, "utf-8"

    invoke-static {v7, v8}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "</identifier>\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_6
    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalInvoiceItem;->getTotalPrice()Ljava/math/BigDecimal;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalInvoiceItem;->getTotalPrice()Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "<price>"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalInvoiceItem;->getTotalPrice()Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "utf-8"

    invoke-static {v7, v8}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "</price>\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_7
    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalInvoiceItem;->getUnitPrice()Ljava/math/BigDecimal;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalInvoiceItem;->getUnitPrice()Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "<itemPrice>"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalInvoiceItem;->getUnitPrice()Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "utf-8"

    invoke-static {v7, v8}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "</itemPrice>\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_8
    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalInvoiceItem;->getQuantity()I

    move-result v7

    if-lez v7, :cond_9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "<itemCount>"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalInvoiceItem;->getQuantity()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "utf-8"

    invoke-static {v0, v7}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</itemCount>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</item>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getTax()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getTax()Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v4, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-lez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<totalTax>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getTax()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</totalTax>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_b
    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getShipping()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getShipping()Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v4, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-lez v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<totalShipping>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getShipping()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</totalShipping>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</invoiceData>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<receiver>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->isEmailRecipient()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<email>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getRecipient()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</email>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</receiver>\n</receiverOptions>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move-object v2, v1

    goto/16 :goto_1

    :cond_e
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/PayPalReceiverDetails;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->isPhoneRecipient()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<phone>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getRecipient()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/b/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_10

    :cond_f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/b/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "<countryCode>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "utf-8"

    invoke-static {v0, v4}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</countryCode>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<phoneNumber>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getRecipient()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/paypal/android/b/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</phoneNumber>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</phone>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_11
    move-object v2, v0

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</ns2:SetPaymentOptionsRequest></soapenv:Body>\n</soapenv:Envelope>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/paypal/android/b/e;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SetPaymentOptions/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/paypal/android/b/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/paypal/android/b/e;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    :try_start_0
    iget-object v1, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Lcom/paypal/android/b/i;->b(Ljava/lang/String;Ljava/util/Hashtable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    return v5

    :cond_13
    iget-object v1, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Lcom/paypal/android/b/i;->b(Ljava/lang/String;Ljava/util/Hashtable;)Z

    const/4 v5, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_14
    move-object v0, v2

    goto/16 :goto_3

    :cond_15
    move-object v0, v4

    goto/16 :goto_0
.end method

.method static synthetic l(Lcom/paypal/android/b/e;)Z
    .locals 1

    invoke-direct {p0}, Lcom/paypal/android/b/e;->w()Z

    move-result v0

    return v0
.end method

.method private m()Z
    .locals 4

    iget-object v0, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    const-string v1, "PayKey"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\">\n<soapenv:Body id=\"_0\">\n<ns2:GetAvailableShippingAddressesRequest xmlns:ns2=\"http://svcs.paypal.com/types/ap\">\n<key>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</key>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<requestEnvelope>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<errorLanguage>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</errorLanguage>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</requestEnvelope>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</ns2:GetAvailableShippingAddressesRequest>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</soapenv:Body>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</soapenv:Envelope>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/paypal/android/b/e;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GetAvailableShippingAddresses/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/paypal/android/b/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/paypal/android/b/e;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Lcom/paypal/android/b/i;->i(Ljava/lang/String;Ljava/util/Hashtable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    iget-object v1, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Lcom/paypal/android/b/i;->i(Ljava/lang/String;Ljava/util/Hashtable;)Z

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic m(Lcom/paypal/android/b/e;)Z
    .locals 1

    invoke-direct {p0}, Lcom/paypal/android/b/e;->x()Z

    move-result v0

    return v0
.end method

.method private n()Z
    .locals 21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "https://www.paypal.com"

    const-string v1, "ClientDetails"

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/paypal/android/b/a/c;

    const-string v2, "CurrencyCode"

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v6, "utf-8"

    invoke-static {v2, v6}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "DateOfMonth"

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v7, "utf-8"

    invoke-static {v2, v7}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "DayOfWeek"

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v8, "utf-8"

    invoke-static {v2, v8}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "EndingDate"

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v9, "utf-8"

    invoke-static {v2, v9}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "IpnNotificationUrl"

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v10, "utf-8"

    invoke-static {v2, v10}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "MaxAmountPerPayment"

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v11, "utf-8"

    invoke-static {v2, v11}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "MaxNumberOfPayments"

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v12, "utf-8"

    invoke-static {v2, v12}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "MaxNumberOfPaymentsPerPeriod"

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v13, "utf-8"

    invoke-static {v2, v13}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "MaxTotalAmountOfAllPayments"

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v14, "utf-8"

    invoke-static {v2, v14}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "Memo"

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v15, "utf-8"

    invoke-static {v2, v15}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v2, "PaymentPeriod"

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v16, "utf-8"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v2, "PinType"

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v17, "utf-8"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "https://www.paypal.com"

    const-string v2, "SenderEmail"

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v19, "utf-8"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v2, "StartingDate"

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\">\n<soapenv:Body id=\"_0\">\n<ns2:PreapprovalRequest xmlns:ns2=\"http://svcs.paypal.com/types/ap\">\n<requestEnvelope>\n<errorLanguage>"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</errorLanguage>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</requestEnvelope>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<cancelUrl>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</cancelUrl>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<currencyCode>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</currencyCode>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<endingDate>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</endingDate>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<maxTotalAmountOfAllPayments>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</maxTotalAmountOfAllPayments>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<returnUrl>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</returnUrl>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<startingDate>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</startingDate>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    :cond_0
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<dateOfMonth>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</dateOfMonth>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<dayOfWeek>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</dayOfWeek>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<ipnNotificationUrl>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</ipnNotificationUrl>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<maxAmountPerPayment>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</maxAmountPerPayment>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<maxNumberOfPayments>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</maxNumberOfPayments>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    if-eqz v13, :cond_5

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<maxNumberOfPaymentsPerPeriod>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</maxNumberOfPaymentsPerPeriod>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<memo>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</memo>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    if-eqz v16, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<paymentPeriod>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</paymentPeriod>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_7
    if-eqz v17, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<pinType>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</pinType>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_8
    if-eqz v19, :cond_9

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<senderEmail>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</senderEmail>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</ns2:PreapprovalRequest></soapenv:Body>\n</soapenv:Envelope>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/paypal/android/b/e;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Preapproval/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/b/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/paypal/android/b/e;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    invoke-static {v1, v2}, Lcom/paypal/android/b/i;->c(Ljava/lang/String;Ljava/util/Hashtable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, 0x0

    :goto_2
    return v1

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    invoke-static {v1, v2}, Lcom/paypal/android/b/i;->c(Ljava/lang/String;Ljava/util/Hashtable;)Z

    const/4 v1, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_b
    move-object v1, v2

    goto/16 :goto_0
.end method

.method static synthetic n(Lcom/paypal/android/b/e;)Z
    .locals 1

    invoke-direct {p0}, Lcom/paypal/android/b/e;->o()Z

    move-result v0

    return v0
.end method

.method private o()Z
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "PreapprovalKey"

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-static {v0, v3}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "GetBillingAddress"

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\">\n<soapenv:Body id=\"_0\">\n<ns2:PreapprovalDetailsRequest xmlns:ns2=\"http://svcs.paypal.com/types/ap\">\n<requestEnvelope>\n<errorLanguage>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</errorLanguage>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</requestEnvelope>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<preapprovalKey>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</preapprovalKey>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<getBillingAddress>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</getBillingAddress>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</ns2:PreapprovalDetailsRequest></soapenv:Body>\n</soapenv:Envelope>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/paypal/android/b/e;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PreapprovalDetails/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/paypal/android/b/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/paypal/android/b/e;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Lcom/paypal/android/b/i;->d(Ljava/lang/String;Ljava/util/Hashtable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v5

    :cond_1
    iget-object v1, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Lcom/paypal/android/b/i;->d(Ljava/lang/String;Ljava/util/Hashtable;)Z

    iget-object v0, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    const-string v1, "Approved"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->FATAL_ERROR:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "FATAL_ERROR_ID"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FATAL_ERROR_MESSAGE"

    const-string v2, "ANDROID_preapproval_already_approved"

    invoke-static {v2}, Lcom/paypal/android/b/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/e;

    const-string v2, "CorrelationId"

    invoke-virtual {v1, v2}, Lcom/paypal/android/b/e;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/e;

    const-string v3, "PayKey"

    invoke-virtual {v2, v3}, Lcom/paypal/android/b/e;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "-1"

    const-string v4, "ANDROID_preapproval_already_approved"

    invoke-static {v4}, Lcom/paypal/android/b/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v6}, Lcom/paypal/android/MEP/PayPalActivity;->paymentFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic o(Lcom/paypal/android/b/e;)Z
    .locals 1

    invoke-direct {p0}, Lcom/paypal/android/b/e;->p()Z

    move-result v0

    return v0
.end method

.method private p()Z
    .locals 5

    iget-object v1, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "PreapprovalKey"

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-static {v0, v3}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "Pin"

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\">\n<soapenv:Body id=\"_0\">\n<ns2:ConfirmPreapprovalRequest xmlns:ns2=\"http://svcs.paypal.com/types/ap\">\n<requestEnvelope>\n<errorLanguage>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</errorLanguage>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</requestEnvelope>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<preapprovalKey>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</preapprovalKey>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<pin>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</pin>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</ns2:ConfirmPreapprovalRequest></soapenv:Body>\n</soapenv:Envelope>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/paypal/android/b/e;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ConfirmPreapproval/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/paypal/android/b/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/paypal/android/b/e;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Lcom/paypal/android/b/i;->e(Ljava/lang/String;Ljava/util/Hashtable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    iget-object v1, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Lcom/paypal/android/b/i;->e(Ljava/lang/String;Ljava/util/Hashtable;)Z

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic p(Lcom/paypal/android/b/e;)Z
    .locals 1

    invoke-direct {p0}, Lcom/paypal/android/b/e;->n()Z

    move-result v0

    return v0
.end method

.method private static q()Z
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getParentContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v1

    if-ne v1, v6, :cond_0

    const-string v1, "000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->FATAL_ERROR:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "FATAL_ERROR_ID"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FATAL_ERROR_MESSAGE"

    const-string v2, "ANDROID_simulator_payment_block"

    invoke-static {v2}, Lcom/paypal/android/b/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/e;

    const-string v2, "CorrelationId"

    invoke-virtual {v1, v2}, Lcom/paypal/android/b/e;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/e;

    const-string v3, "PayKey"

    invoke-virtual {v2, v3}, Lcom/paypal/android/b/e;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "-1"

    const-string v4, "ANDROID_simulator_payment_block"

    invoke-static {v4}, Lcom/paypal/android/b/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v6}, Lcom/paypal/android/MEP/PayPalActivity;->paymentFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method

.method private r()Z
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/paypal/android/b/e;->q()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "APIVersion"

    const-string v4, "3.0"

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "PayPalApplicationID"

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPal;->getAppID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getParentContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "DeviceReferenceToken"

    invoke-virtual {v0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v4

    new-array v4, v4, [B

    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-lez v4, :cond_1

    :goto_1
    :try_start_2
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "DeviceReferenceToken"

    invoke-direct {v1, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "AuthorizeDevice"

    const-string v4, "true"

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v3}, Lcom/paypal/android/b/e;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/paypal/android/b/e;->h(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private s()Ljava/util/Hashtable;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    const-string v1, "PaymentCurrencyID"

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "TrackingId"

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "ReverseAllParallelPaymentsOnError"

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "Pin"

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v6, "https://www.paypal.com"

    const-string v7, "https://www.paypal.com"

    const-string v1, "IpnNotificationUrl"

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "FeesPayer"

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v1, "FundingType"

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v1, "Memo"

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v1, "ClientDetails"

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/paypal/android/b/a/c;

    const-string v2, "Receivers"

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const-string v15, "ActionType"

    invoke-virtual {v3, v15}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\"><soapenv:Body>\n<ns2:Pay xmlns:ns2=\"http://svcs.paypal.com/services\">\n<requestEnvelope>\n<errorLanguage>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, "</errorLanguage>\n"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, "</requestEnvelope>\n"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, "<sender>\n"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, "<useCredentials>true</useCredentials>\n"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, "</sender>\n"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, "<actionType>"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</actionType>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "<cancelUrl>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</cancelUrl>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "<returnUrl>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</returnUrl>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "<currencyCode>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</currencyCode>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<receiverList>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_11

    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_0
    const/4 v3, 0x0

    move-object v5, v4

    move v4, v3

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_9

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/paypal/android/MEP/PayPalReceiverDetails;

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getSubtotal()Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/paypal/android/MEP/PayPalReceiverDetails;

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/paypal/android/MEP/PayPalReceiverDetails;

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getShipping()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/paypal/android/MEP/PayPalReceiverDetails;

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getTax()Ljava/math/BigDecimal;

    move-result-object v15

    if-eqz v6, :cond_18

    invoke-virtual {v7, v6}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    :goto_3
    if-eqz v15, :cond_17

    invoke-virtual {v3, v15}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    move-object v6, v3

    :goto_4
    const/4 v3, 0x2

    const/4 v15, 0x4

    invoke-virtual {v6, v3, v15}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    const/4 v3, 0x2

    const/4 v15, 0x4

    invoke-virtual {v7, v3, v15}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/paypal/android/MEP/PayPalReceiverDetails;

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getPaymentType()I

    move-result v7

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/paypal/android/MEP/PayPalReceiverDetails;

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getPaymentSubtype()I

    move-result v15

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/paypal/android/MEP/PayPalReceiverDetails;

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getIsPrimary()Z

    move-result v16

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "<receiver>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "<amount>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</amount>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/paypal/android/MEP/PayPalReceiverDetails;

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getRecipient()Ljava/lang/String;

    move-result-object v3

    const-string v6, "utf-8"

    invoke-static {v3, v6}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/paypal/android/MEP/PayPalReceiverDetails;

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->isEmailRecipient()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "<email>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</email>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    const/4 v5, 0x3

    if-eq v7, v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "<paymentType>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v7}, Lcom/paypal/android/MEP/PayPal;->getPayType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</paymentType>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    const/16 v5, 0x16

    if-eq v15, v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "<paymentSubtype>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v15}, Lcom/paypal/android/MEP/PayPal;->getPaySubtype(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</paymentSubtype>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-eqz v16, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "<primary>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</primary>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</receiver>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/paypal/android/MEP/PayPalReceiverDetails;

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->isPhoneRecipient()Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "<phone>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6}, Lcom/paypal/android/b/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_6

    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/paypal/android/b/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_6
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v17, "<countryCode>"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</countryCode>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "<phoneNumber>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v6}, Lcom/paypal/android/b/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</phoneNumber>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</phone>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</receiverList>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<trackingId>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</trackingId>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_a
    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<reverseAllParallelPaymentsOnError>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</reverseAllParallelPaymentsOnError>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_b
    if-eqz v10, :cond_c

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<pin>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</pin>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_c
    if-eqz v11, :cond_d

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<ipnNotificationUrl>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</ipnNotificationUrl>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_d
    if-eqz v12, :cond_e

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<feesPayer>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</feesPayer>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_e
    if-eqz v13, :cond_f

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<fundingConstraint>\n<allowedFundingType>\n<fundingTypeInfo>\n<fundingType>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</fundingType>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</fundingTypeInfo>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</allowedFundingType>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</fundingConstraint>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_f
    if-eqz v1, :cond_10

    :cond_10
    if-eqz v14, :cond_15

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<memo>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</memo>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</ns2:Pay></soapenv:Body>\n</soapenv:Envelope>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/paypal/android/b/e;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Pay/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/b/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/paypal/android/b/e;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    invoke-static {v1, v2}, Lcom/paypal/android/b/i;->b(Ljava/lang/String;Ljava/util/Hashtable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_7
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    invoke-static {v1, v2}, Lcom/paypal/android/b/i;->b(Ljava/lang/String;Ljava/util/Hashtable;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "defaultFundingPlan"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    const-string v2, "ActionType"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "CREATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->FATAL_ERROR:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "FATAL_ERROR_ID"

    const-string v3, "589009"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "FATAL_ERROR_MESSAGE"

    const-string v3, "ANDROID_589009"

    invoke-static {v3}, Lcom/paypal/android/b/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v1

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/e;

    const-string v3, "CorrelationId"

    invoke-virtual {v2, v3}, Lcom/paypal/android/b/e;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/e;

    const-string v4, "PayKey"

    invoke-virtual {v3, v4}, Lcom/paypal/android/b/e;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "589009"

    const-string v5, "ANDROID_589009"

    invoke-static {v5}, Lcom/paypal/android/b/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/paypal/android/MEP/PayPalActivity;->paymentFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :try_start_1
    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_8
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    goto/16 :goto_1

    :cond_14
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/paypal/android/b/e;->e:I

    const/4 v1, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto/16 :goto_7

    :cond_15
    move-object v1, v2

    goto/16 :goto_6

    :cond_16
    move-object v6, v7

    goto/16 :goto_4

    :cond_17
    move-object v6, v3

    goto/16 :goto_4

    :cond_18
    move-object v3, v7

    goto/16 :goto_3
.end method

.method private t()Ljava/util/Hashtable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    const-string v2, "PayKey"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPal;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\">\n<soapenv:Body id=\"_0\">\n<ns2:GetFundingPlansRequest xmlns:ns2=\"http://svcs.paypal.com/types/ap\">\n<payKey>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</payKey>\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "<requestEnvelope>\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "<errorLanguage>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</errorLanguage>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</requestEnvelope>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</ns2:GetFundingPlansRequest>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</soapenv:Body>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</soapenv:Envelope>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/paypal/android/b/e;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GetFundingPlans/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/paypal/android/b/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/paypal/android/b/e;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    invoke-static {v0, v2}, Lcom/paypal/android/b/i;->f(Ljava/lang/String;Ljava/util/Hashtable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    invoke-static {v0, v2}, Lcom/paypal/android/b/i;->f(Ljava/lang/String;Ljava/util/Hashtable;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    const-string v2, "FundingPlans"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->FATAL_ERROR:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "FATAL_ERROR_ID"

    const-string v3, "589009"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "FATAL_ERROR_MESSAGE"

    const-string v3, "ANDROID_589009"

    invoke-static {v3}, Lcom/paypal/android/b/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :try_start_1
    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    move-object v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/paypal/android/b/e;->e:I

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static u()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Exception"

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/paypal/android/b/i;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/paypal/android/b/e;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/paypal/android/b/e;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/paypal/android/b/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/paypal/android/b/e;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    invoke-static {v2, v1}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/util/Hashtable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :cond_0
    iget-object v3, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    invoke-static {v2, v3}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/util/Hashtable;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPal;->setLibraryInitialized(Z)V

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/paypal/android/b/e;->e:I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private w()Z
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    const-string v0, "SessionToken"

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "NewPhone"

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/b/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "utf-8"

    invoke-static {v1, v6}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/paypal/android/b/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const-string v0, "NewPin"

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-static {v0, v4}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getParentContext()Landroid/content/Context;

    move-result-object v0

    const-string v8, "phone"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/b/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:SOAP-ENC=\"http://schemas.xmlsoap.org/soap/encoding/\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:cc=\"urn:ebay:apis:CoreComponentTypes\" xmlns:ed=\"urn:ebay:apis:EnhancedDataTypes\" xmlns:wsu=\"http://schemas.xmlsoap.org/ws/2002/07/utility\" xmlns:saml=\"urn:oasis:names:tc:SAML:1.0:assertion\" xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\" xmlns:wsse=\"http://schemas.xmlsoap.org/ws/2002/12/secext\" xmlns:ebl=\"urn:ebay:apis:eBLBaseComponents\" xmlns:ns=\"urn:ebay:api:PayPalAPI\"><SOAP-ENV:Header><Security xmlns=\"http://schemas.xmlsoap.org/ws/2002/12/secext\" xsi:type=\"wsse:SecurityType\"></Security><RequesterCredentials xmlns=\"urn:ebay:api:PayPalAPI\" xsi:type=\"ebl:CustomSecurityHeaderType\"><Credentials xmlns=\"urn:ebay:apis:eBLBaseComponents\" xsi:type=\"ebl:UserIdPasswordType\"><Username xsi:type=\"xs:string\">gmapi_client</Username><Password xsi:type=\"xs:string\">11111111</Password></Credentials></RequesterCredentials></SOAP-ENV:Header><SOAP-ENV:Body id=\"_0\"><MEPCreateDevicePinReq xmlns=\"urn:ebay:api:PayPalAPI\"><Request><Version xmlns=\"urn:ebay:apis:eBLBaseComponents\">1</Version><RequestorID xsi:type=\"ns:IVRRequestorID\">eding-1</RequestorID><SessionToken xsi:type=\"ns:MEPSessionToken\">"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "</SessionToken>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "<Phone xsi:type=\"ns:IVRPhoneNumber\">"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "<CountryCode xsi:type=\"xs:string\">"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</CountryCode>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<PhoneNumber xsi:type=\"xs:string\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</PhoneNumber>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<Extension xsi:type=\"xs:string\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</Extension>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</Phone>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<Pin xsi:type=\"xs:string\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</Pin>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</Request>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</MEPCreateDevicePinReq>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</SOAP-ENV:Body>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</SOAP-ENV:Envelope>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/paypal/android/b/e;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/paypal/android/b/e;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/paypal/android/b/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/paypal/android/b/e;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Lcom/paypal/android/b/i;->g(Ljava/lang/String;Ljava/util/Hashtable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v2

    :goto_2
    return v0

    :cond_1
    iget-object v1, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Lcom/paypal/android/b/i;->g(Ljava/lang/String;Ljava/util/Hashtable;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v1

    iget-object v0, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    const-string v2, "NewPhone"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/paypal/android/MEP/PayPal;->setAccountPhone(Ljava/lang/String;)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/paypal/android/MEP/PayPal;->setLoginType(I)V

    move v0, v3

    goto :goto_2

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/paypal/android/b/e;->e:I

    move v0, v2

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private x()Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/paypal/android/b/i;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/paypal/android/b/e;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/paypal/android/b/e;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/paypal/android/b/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/paypal/android/b/e;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    invoke-static {v1, v2}, Lcom/paypal/android/b/i;->h(Ljava/lang/String;Ljava/util/Hashtable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    invoke-static {v1, v2}, Lcom/paypal/android/b/i;->h(Ljava/lang/String;Ljava/util/Hashtable;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/paypal/android/b/e;->e:I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/paypal/android/b/e;->f:I

    iput p1, p0, Lcom/paypal/android/b/e;->d:I

    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 6

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x7

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    const-string v1, "quickPay"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/paypal/android/b/e;->a(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getShippingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v5}, Lcom/paypal/android/b/e;->a(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->CREATE_PAYMENT_SUCCESS:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->hasOptedIn()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->hasCreatedPIN()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->isLightCountry()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v2

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/e;

    const-string v1, "PayKey"

    invoke-virtual {v0, v1}, Lcom/paypal/android/b/e;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/e;

    const-string v3, "PaymentExecStatus"

    invoke-virtual {v1, v3}, Lcom/paypal/android/b/e;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v4}, Lcom/paypal/android/MEP/PayPalActivity;->paymentSucceeded(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/paypal/android/MEP/PayPalActivity;->setTransactionSuccessful(Z)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v3

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/e;

    const-string v1, "PayKey"

    invoke-virtual {v0, v1}, Lcom/paypal/android/b/e;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/e;

    const-string v4, "PaymentExecStatus"

    invoke-virtual {v1, v4}, Lcom/paypal/android/b/e;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1, v2}, Lcom/paypal/android/MEP/PayPalActivity;->paymentSucceeded(Ljava/lang/String;Ljava/lang/String;Z)V

    check-cast p2, Ljava/lang/String;

    sput-object p2, Lcom/paypal/android/MEP/b/b;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/paypal/android/MEP/b/e$1;->b(I)V

    goto/16 :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/String;

    sput-object p2, Lcom/paypal/android/MEP/b/h;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/paypal/android/MEP/b/e$1;->a(I)V

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "FundingPlanId"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/b/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getShippingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v5}, Lcom/paypal/android/b/e;->a(I)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->CREATE_PAYMENT_SUCCESS:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    sget-object v0, Lcom/paypal/android/MEP/b/g;->a:Ljava/util/Hashtable;

    :goto_1
    const-string v1, "AvailableAddresses"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/b/a/a;

    const-string v1, "ShippingAddressId"

    invoke-virtual {p0, v1}, Lcom/paypal/android/b/e;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v1, "ShippingAddressId"

    invoke-virtual {v0}, Lcom/paypal/android/b/a/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/paypal/android/b/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/paypal/android/b/e;->g()Z

    move-result v0

    :goto_2
    if-nez v0, :cond_0

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->CREATE_PAYMENT_SUCCESS:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    check-cast p2, Ljava/util/Hashtable;

    sput-object p2, Lcom/paypal/android/MEP/b/g;->a:Ljava/util/Hashtable;

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/e;

    iget-object v0, v0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    goto :goto_1

    :pswitch_6
    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->CREATE_PAYMENT_SUCCESS:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v0

    if-ne v0, v9, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v3

    :try_start_0
    iget-object v0, p0, Lcom/paypal/android/b/e;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/b/e;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getVersion()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Android"

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPal;->getParentContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPal;->getLoginType()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Password"

    move-object v2, v0

    :goto_1
    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPal;->getPayType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    const-string v0, "Preapproval"

    move-object v1, v0

    :goto_2
    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPal;->getShippingEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Enabled"

    :goto_3
    const-string v3, "https://sstats.paypal-metrics.com/b/ss/paypalwireless/5/H.5--WAP/12345?pageName=android/"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "mpl-"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "&c1="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&c4=ver"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&c5="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&c6="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&c7="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&c9="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&c10="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/paypal/android/b/e;->b:Lorg/apache/http/client/methods/HttpGet;

    iget-object v0, p0, Lcom/paypal/android/b/e;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v1, p0, Lcom/paypal/android/b/e;->b:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/b/e;->b:Lorg/apache/http/client/methods/HttpGet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/b/e;->c:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPal;->getLoginType()I

    move-result v0

    if-ne v0, v8, :cond_3

    const-string v0, "PIN"

    move-object v2, v0

    goto/16 :goto_1

    :cond_3
    const-string v0, "Device"

    move-object v2, v0

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPal;->getPayType()I

    move-result v0

    if-ne v0, v9, :cond_5

    const-string v0, "Chained"

    move-object v1, v0

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPal;->getPayType()I

    move-result v0

    if-ne v0, v8, :cond_6

    const-string v0, "Parallel"

    move-object v1, v0

    goto/16 :goto_2

    :cond_6
    const-string v0, "Simple"

    move-object v1, v0

    goto/16 :goto_2

    :cond_7
    const-string v0, "Disabled"
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANDROID_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/paypal/android/b/e;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/b/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    return-object v0
.end method

.method public final f()V
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPal;->getPayment()Lcom/paypal/android/MEP/PayPalAdvancedPayment;

    move-result-object v5

    iget-object v0, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    const-string v1, "ShippingAddressId"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PaymentCurrencyID"

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getCurrencyType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/b/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "CancelUrl"

    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPal;->getCancelUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/b/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ReturnUrl"

    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPal;->getReturnUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/b/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPal;->getFeesPayer()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "EACHRECEIVER"

    :goto_0
    const-string v1, "FeesPayer"

    invoke-virtual {p0, v1, v0}, Lcom/paypal/android/b/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    move v1, v2

    move v3, v0

    :goto_1
    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getReceivers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getReceivers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/PayPalReceiverDetails;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v0

    if-nez v0, :cond_0

    move v3, v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :pswitch_0
    const-string v0, "SENDER"

    goto :goto_0

    :pswitch_1
    const-string v0, "PRIMARYRECEIVER"

    goto :goto_0

    :pswitch_2
    const-string v0, "SECONDARYONLY"

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPal;->getShippingEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v3, :cond_4

    const-string v0, "quickPay"

    invoke-virtual {p0, v0}, Lcom/paypal/android/b/e;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "ActionType"

    const-string v1, "PAY"

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/b/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    const-string v0, "Receivers"

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getReceivers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/b/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getIpnUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getIpnUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "IpnNotificationUrl"

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getIpnUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/b/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getMemo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getMemo()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Memo"

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getMemo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/b/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    const-string v0, "delegate"

    invoke-virtual {p0, v0, p0}, Lcom/paypal/android/b/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/e;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/paypal/android/b/e;->a(I)V

    return-void

    :cond_4
    const-string v0, "ActionType"

    const-string v1, "CREATE"

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/b/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final g()Z
    .locals 15

    const/4 v7, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getDynamicAmountCalculationEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getShippingEnabled()Z

    move-result v0

    if-ne v0, v7, :cond_13

    iget-object v0, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    const-string v1, "ShippingAddressId"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    sget-object v1, Lcom/paypal/android/MEP/b/g;->a:Ljava/util/Hashtable;

    :goto_0
    const-string v2, "AvailableAddresses"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    move v3, v4

    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v3, v2, :cond_6

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/paypal/android/b/a/a;

    invoke-virtual {v2}, Lcom/paypal/android/b/a/a;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_2
    new-instance v3, Lcom/paypal/android/MEP/MEPAddress;

    invoke-direct {v3}, Lcom/paypal/android/MEP/MEPAddress;-><init>()V

    invoke-virtual {v2}, Lcom/paypal/android/b/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/paypal/android/b/a/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/paypal/android/b/a/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/paypal/android/b/a/a;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/paypal/android/b/a/a;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/paypal/android/b/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0}, Lcom/paypal/android/MEP/MEPAddress;->setStreet1(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/paypal/android/MEP/MEPAddress;->setStreet2(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/paypal/android/MEP/MEPAddress;->setCity(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/paypal/android/MEP/MEPAddress;->setState(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Lcom/paypal/android/MEP/MEPAddress;->setPostalcode(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/paypal/android/MEP/MEPAddress;->setCountrycode(Ljava/lang/String;)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getPayment()Lcom/paypal/android/MEP/PayPalAdvancedPayment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getReceivers()Ljava/util/ArrayList;

    move-result-object v10

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move v1, v4

    :goto_3
    invoke-virtual {v9}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getReceivers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    invoke-virtual {v9}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getReceivers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/PayPalReceiverDetails;

    new-instance v5, Lcom/paypal/android/MEP/MEPReceiverAmounts;

    invoke-direct {v5}, Lcom/paypal/android/MEP/MEPReceiverAmounts;-><init>()V

    new-instance v6, Lcom/paypal/android/MEP/MEPAmounts;

    invoke-direct {v6}, Lcom/paypal/android/MEP/MEPAmounts;-><init>()V

    iput-object v6, v5, Lcom/paypal/android/MEP/MEPReceiverAmounts;->amounts:Lcom/paypal/android/MEP/MEPAmounts;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getRecipient()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/paypal/android/MEP/MEPReceiverAmounts;->receiver:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getTax()Ljava/math/BigDecimal;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/paypal/android/MEP/MEPReceiverAmounts;->amounts:Lcom/paypal/android/MEP/MEPAmounts;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getTax()Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/paypal/android/MEP/MEPAmounts;->setTax(Ljava/math/BigDecimal;)V

    :cond_0
    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getShipping()Ljava/math/BigDecimal;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, v5, Lcom/paypal/android/MEP/MEPReceiverAmounts;->amounts:Lcom/paypal/android/MEP/MEPAmounts;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getShipping()Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/paypal/android/MEP/MEPAmounts;->setShipping(Ljava/math/BigDecimal;)V

    :cond_1
    invoke-virtual {v9}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getCurrencyType()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, v5, Lcom/paypal/android/MEP/MEPReceiverAmounts;->amounts:Lcom/paypal/android/MEP/MEPAmounts;

    invoke-virtual {v9}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getCurrencyType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/paypal/android/MEP/MEPAmounts;->setCurrency(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getSubtotal()Ljava/math/BigDecimal;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, v5, Lcom/paypal/android/MEP/MEPReceiverAmounts;->amounts:Lcom/paypal/android/MEP/MEPAmounts;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getSubtotal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/paypal/android/MEP/MEPAmounts;->setPaymentAmount(Ljava/math/BigDecimal;)V

    :cond_3
    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/paypal/android/b/e;->g:Ljava/util/Hashtable;

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_1

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_7
    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    invoke-virtual {v9}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getCurrencyType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/paypal/android/MEP/PayPalActivity;->adjustAmountsAdvanced(Lcom/paypal/android/MEP/MEPAddress;Ljava/lang/String;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_12

    move v8, v4

    move v6, v4

    :goto_4
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v8, v0, :cond_e

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/PayPalReceiverDetails;

    invoke-virtual {v11, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/paypal/android/MEP/MEPReceiverAmounts;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getTax()Ljava/math/BigDecimal;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getTax()Ljava/math/BigDecimal;

    move-result-object v2

    :goto_5
    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getShipping()Ljava/math/BigDecimal;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getShipping()Ljava/math/BigDecimal;

    move-result-object v3

    :goto_6
    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getSubtotal()Ljava/math/BigDecimal;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getSubtotal()Ljava/math/BigDecimal;

    move-result-object v5

    :goto_7
    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getRecipient()Ljava/lang/String;

    move-result-object v0

    iget-object v12, v1, Lcom/paypal/android/MEP/MEPReceiverAmounts;->amounts:Lcom/paypal/android/MEP/MEPAmounts;

    invoke-virtual {v12}, Lcom/paypal/android/MEP/MEPAmounts;->getTax()Ljava/math/BigDecimal;

    move-result-object v12

    iget-object v13, v1, Lcom/paypal/android/MEP/MEPReceiverAmounts;->amounts:Lcom/paypal/android/MEP/MEPAmounts;

    invoke-virtual {v13}, Lcom/paypal/android/MEP/MEPAmounts;->getShipping()Ljava/math/BigDecimal;

    move-result-object v13

    iget-object v14, v1, Lcom/paypal/android/MEP/MEPReceiverAmounts;->amounts:Lcom/paypal/android/MEP/MEPAmounts;

    invoke-virtual {v14}, Lcom/paypal/android/MEP/MEPAmounts;->getPaymentAmount()Ljava/math/BigDecimal;

    move-result-object v14

    iget-object v1, v1, Lcom/paypal/android/MEP/MEPReceiverAmounts;->receiver:Ljava/lang/String;

    if-ne v14, v5, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_9
    new-instance v2, Ljava/math/BigDecimal;

    const-string v3, "0.0"

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    new-instance v3, Ljava/math/BigDecimal;

    const-string v5, "0.0"

    invoke-direct {v3, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    new-instance v5, Ljava/math/BigDecimal;

    const-string v12, "0.0"

    invoke-direct {v5, v12}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    if-ne v12, v2, :cond_d

    if-eq v13, v3, :cond_14

    :cond_d
    move v0, v7

    :goto_8
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v6, v0

    goto/16 :goto_4

    :cond_e
    if-eqz v6, :cond_13

    :goto_9
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v4, v0, :cond_f

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/PayPalReceiverDetails;

    invoke-virtual {v11, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/paypal/android/MEP/MEPReceiverAmounts;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v2

    iget-object v3, v1, Lcom/paypal/android/MEP/MEPReceiverAmounts;->amounts:Lcom/paypal/android/MEP/MEPAmounts;

    invoke-virtual {v3}, Lcom/paypal/android/MEP/MEPAmounts;->getShipping()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/paypal/android/MEP/PayPalInvoiceData;->setShipping(Ljava/math/BigDecimal;)V

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v0

    iget-object v1, v1, Lcom/paypal/android/MEP/MEPReceiverAmounts;->amounts:Lcom/paypal/android/MEP/MEPAmounts;

    invoke-virtual {v1}, Lcom/paypal/android/MEP/MEPAmounts;->getTax()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalInvoiceData;->setTax(Ljava/math/BigDecimal;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_f
    const-string v0, "PaymentCurrencyID"

    invoke-virtual {v9}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getCurrencyType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/b/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Receivers"

    invoke-virtual {v9}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getReceivers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/b/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getIpnUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v9}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getIpnUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "IpnNotificationUrl"

    invoke-virtual {v9}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getIpnUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/b/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_10
    invoke-virtual {v9}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getMemo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v9}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getMemo()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "Memo"

    invoke-virtual {v9}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getMemo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/b/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_11
    const-string v0, "ActionType"

    const-string v1, "CREATE"

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/b/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "delegate"

    invoke-virtual {p0, v0, p0}, Lcom/paypal/android/b/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/paypal/android/b/e;->a(I)V

    :goto_a
    return v7

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_13
    move v7, v4

    goto :goto_a

    :cond_14
    move v0, v6

    goto/16 :goto_8
.end method
