.class Lcom/tapjoy/TJCVirtualGoods$FetchItemIcon;
.super Landroid/os/AsyncTask;
.source "TJCVirtualGoods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCVirtualGoods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchItemIcon"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private item:Lcom/tapjoy/VGStoreItem;

.field private itemIcon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/tapjoy/TJCVirtualGoods;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TJCVirtualGoods;)V
    .locals 0

    .prologue
    .line 2297
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchItemIcon;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p2, "x1"    # Lcom/tapjoy/TJCVirtualGoods$1;

    .prologue
    .line 2297
    invoke-direct {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$FetchItemIcon;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "obj"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 2305
    const/4 v4, 0x0

    aget-object v4, p1, v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$FetchItemIcon;->itemIcon:Landroid/widget/ImageView;

    .line 2306
    const/4 v4, 0x1

    aget-object v4, p1, v4

    check-cast v4, Lcom/tapjoy/VGStoreItem;

    iput-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$FetchItemIcon;->item:Lcom/tapjoy/VGStoreItem;

    .line 2309
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$FetchItemIcon;->item:Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v4}, Lcom/tapjoy/VGStoreItem;->getThumbImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2310
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 2311
    .local v2, "is":Ljava/io/InputStream;
    const-string v4, "src"

    invoke-static {v2, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 2328
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "url":Ljava/net/URL;
    :goto_0
    return-object v1

    .line 2315
    :catch_0
    move-exception v0

    .line 2317
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 2320
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 2322
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2325
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 2327
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 2297
    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$FetchItemIcon;->doInBackground([Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2334
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$FetchItemIcon;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->asyncTaskPool:Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;

    invoke-virtual {v0, p0}, Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;->removeAndExecuteNext(Landroid/os/AsyncTask;)Z

    .line 2335
    sput-object p1, Lcom/tapjoy/TJCVirtualGoods;->itemIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 2338
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$FetchItemIcon;->item:Lcom/tapjoy/VGStoreItem;

    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->itemIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/tapjoy/VGStoreItem;->setThumbImage(Landroid/graphics/drawable/Drawable;)V

    .line 2339
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$FetchItemIcon;->itemIcon:Landroid/widget/ImageView;

    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->itemIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2340
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2297
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$FetchItemIcon;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
