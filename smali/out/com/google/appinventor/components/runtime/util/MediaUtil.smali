.class public Lcom/google/appinventor/components/runtime/util/MediaUtil;
.super Ljava/lang/Object;
.source "MediaUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/MediaUtil$FlushedInputStream;,
        Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;,
        Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MediaUtil"

.field private static pathCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final tempFileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil;->tempFileMap:Ljava/util/Map;

    .line 241
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil;->pathCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/InputStream;
    .registers 4
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Form;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .registers 4
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "x1"    # Ljava/io/InputStream;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapOptions(Lcom/google/appinventor/components/runtime/Form;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 53
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static cacheMediaTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/File;
    .registers 7
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .param p2, "mediaSource"    # Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil;->tempFileMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 390
    .local v0, "tempFile":Ljava/io/File;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5d

    .line 391
    :cond_10
    const-string v1, "MediaUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Copying media "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to temp file..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/File;

    move-result-object v0

    .line 393
    const-string v1, "MediaUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished copying media "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to temp file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 394
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 393
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil;->tempFileMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    :cond_5d
    return-object v0
.end method

.method public static copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->determineMediaSource(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    move-result-object v0

    .line 355
    .local v0, "mediaSource":Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method private static copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/File;
    .registers 9
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .param p2, "mediaSource"    # Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/InputStream;

    move-result-object v2

    .line 361
    .local v2, "in":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 363
    .local v1, "file":Ljava/io/File;
    :try_start_5
    const-string v3, "AI_Media_"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 364
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 365
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/FileUtil;->writeStreamToFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_16} :catch_1a
    .catchall {:try_start_5 .. :try_end_16} :catchall_47

    .line 381
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 366
    return-object v1

    .line 368
    :catch_1a
    move-exception v0

    .line 369
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_4c

    .line 370
    :try_start_1d
    const-string v3, "MediaUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not copy media "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to temp file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 371
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 370
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 378
    :goto_46
    throw v0
    :try_end_47
    .catchall {:try_start_1d .. :try_end_47} :catchall_47

    .line 381
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_47
    move-exception v3

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v3

    .line 374
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_4c
    :try_start_4c
    const-string v3, "MediaUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not copy media "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to temp file."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_4c .. :try_end_6a} :catchall_47

    goto :goto_46
.end method

.method private static decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 581
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$FlushedInputStream;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/MediaUtil$FlushedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static determineMediaSource(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    .registers 3
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "/sdcard/"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 137
    :cond_12
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->SDCARD:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    .line 166
    .end local p0    # "form":Lcom/google/appinventor/components/runtime/Form;
    :goto_14
    return-object v0

    .line 139
    .restart local p0    # "form":Lcom/google/appinventor/components/runtime/Form;
    :cond_15
    const-string v0, "content://contacts/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 140
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->CONTACT_URI:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    goto :goto_14

    .line 142
    :cond_20
    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 143
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->CONTENT_URI:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    goto :goto_14

    .line 147
    :cond_2b
    :try_start_2b
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 149
    const-string v0, "file:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 150
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->FILE_URL:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    goto :goto_14

    .line 153
    :cond_3b
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->URL:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    :try_end_3d
    .catch Ljava/net/MalformedURLException; {:try_start_2b .. :try_end_3d} :catch_3e

    goto :goto_14

    .line 155
    :catch_3e
    move-exception v0

    .line 159
    instance-of v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v0, :cond_51

    .line 160
    check-cast p0, Lcom/google/appinventor/components/runtime/ReplForm;

    .end local p0    # "form":Lcom/google/appinventor/components/runtime/Form;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ReplForm;->isAssetsLoaded()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 161
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->REPL_ASSET:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    goto :goto_14

    .line 163
    :cond_4e
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->ASSET:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    goto :goto_14

    .line 166
    .restart local p0    # "form":Lcom/google/appinventor/components/runtime/Form;
    :cond_51
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->ASSET:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    goto :goto_14
.end method

.method static fileUrlToFilePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_11} :catch_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_2d

    move-result-object v1

    return-object v1

    .line 106
    :catch_13
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to determine file path of file url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2d
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to determine file path of file url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static findCaseinsensitivePath(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil;->pathCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 246
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->findCaseinsensitivePathWithoutCache(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "newPath":Ljava/lang/String;
    if-nez v0, :cond_10

    .line 248
    const/4 v1, 0x0

    .line 252
    .end local v0    # "newPath":Ljava/lang/String;
    :goto_f
    return-object v1

    .line 250
    .restart local v0    # "newPath":Ljava/lang/String;
    :cond_10
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil;->pathCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .end local v0    # "newPath":Ljava/lang/String;
    :cond_15
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil;->pathCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_f
.end method

.method private static findCaseinsensitivePathWithoutCache(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "mediaPathlist":[Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 267
    .local v1, "l":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-ge v0, v1, :cond_1d

    .line 268
    aget-object v3, v2, v0

    .line 269
    .local v3, "temp":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 273
    .end local v3    # "temp":Ljava/lang/String;
    :goto_19
    return-object v3

    .line 267
    .restart local v3    # "temp":Ljava/lang/String;
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 273
    .end local v3    # "temp":Ljava/lang/String;
    :cond_1d
    const/4 v3, 0x0

    goto :goto_19
.end method

.method private static getAssetsIgnoreCaseAfd(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 5
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 662
    :try_start_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v2

    .line 669
    :goto_8
    return-object v2

    .line 664
    :catch_9
    move-exception v0

    .line 665
    .local v0, "e":Ljava/io/IOException;
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->findCaseinsensitivePath(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 666
    .local v1, "path":Ljava/lang/String;
    if-nez v1, :cond_11

    .line 667
    throw v0

    .line 669
    :cond_11
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    goto :goto_8
.end method

.method private static getAssetsIgnoreCaseInputStream(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    :try_start_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v2

    .line 293
    :goto_8
    return-object v2

    .line 288
    :catch_9
    move-exception v0

    .line 289
    .local v0, "e":Ljava/io/IOException;
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->findCaseinsensitivePath(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "path":Ljava/lang/String;
    if-nez v1, :cond_11

    .line 291
    throw v0

    .line 293
    :cond_11
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_8
.end method

.method public static getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 9
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 421
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_a

    .line 446
    :cond_9
    return-object v2

    .line 424
    :cond_a
    new-instance v3, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;

    invoke-direct {v3, v2}, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;-><init>(Lcom/google/appinventor/components/runtime/util/MediaUtil$1;)V

    .line 425
    .local v3, "syncer":Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$1;

    invoke-direct {v0, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil$1;-><init>(Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;)V

    .line 435
    .local v0, "continuation":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Landroid/graphics/drawable/BitmapDrawable;>;"
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawableAsync(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 436
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;->waitfor()V

    .line 437
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 438
    .local v2, "result":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v2, :cond_9

    .line 439
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;->getError()Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, "error":Ljava/lang/String;
    const-string v4, "PERMISSION_DENIED:"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 441
    new-instance v4, Lcom/google/appinventor/components/runtime/errors/PermissionException;

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/errors/PermissionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 443
    :cond_3d
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getBitmapDrawableAsync(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .registers 6
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/Form;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 462
    .local p2, "continuation":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Landroid/graphics/drawable/BitmapDrawable;>;"
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    .line 463
    :cond_8
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V

    .line 575
    :goto_c
    return-void

    .line 467
    :cond_d
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->determineMediaSource(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    move-result-object v1

    .line 469
    .local v1, "mediaSource":Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;

    invoke-direct {v0, p1, p0, v1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;-><init>(Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 574
    .local v0, "loadImage":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_c
.end method

.method private static getBitmapOptions(Lcom/google/appinventor/components/runtime/Form;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .registers 13
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "mediaPath"    # Ljava/lang/String;

    .prologue
    .line 612
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 613
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 614
    const/4 v7, 0x0

    invoke-static {p1, v7, v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 615
    iget v2, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 616
    .local v2, "imageWidth":I
    iget v1, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 619
    .local v1, "imageHeight":I
    const-string v7, "window"

    invoke-virtual {p0, v7}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 620
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 630
    .local v0, "display":Landroid/view/Display;
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getCompatibilityMode()Z

    move-result v7

    if-eqz v7, :cond_32

    .line 631
    const/16 v4, 0x2d0

    .line 632
    .local v4, "maxWidth":I
    const/16 v3, 0x348

    .line 638
    .local v3, "maxHeight":I
    :goto_26
    const/4 v6, 0x1

    .line 639
    .local v6, "sampleSize":I
    :goto_27
    div-int v7, v2, v6

    if-le v7, v4, :cond_49

    div-int v7, v1, v6

    if-le v7, v3, :cond_49

    .line 640
    mul-int/lit8 v6, v6, 0x2

    goto :goto_27

    .line 634
    .end local v3    # "maxHeight":I
    .end local v4    # "maxWidth":I
    .end local v6    # "sampleSize":I
    :cond_32
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v8

    div-float/2addr v7, v8

    float-to-int v4, v7

    .line 635
    .restart local v4    # "maxWidth":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v8

    div-float/2addr v7, v8

    float-to-int v3, v7

    .restart local v3    # "maxHeight":I
    goto :goto_26

    .line 642
    .restart local v6    # "sampleSize":I
    :cond_49
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 643
    .restart local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    const-string v7, "MediaUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBitmapOptions: sampleSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mediaPath = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " maxWidth = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " maxHeight = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " display width = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 645
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " display height = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 643
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 647
    return-object v5
.end method

.method public static isExternalFile(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 233
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_8

    .line 237
    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "/sdcard/"

    .line 238
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_20
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static isExternalFile(Ljava/lang/String;)Z
    .registers 4
    .param p0, "mediaPath"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 219
    const-string v0, "MediaUtil"

    const-string v1, "Calling deprecated version of isExternalFile"

    new-instance v2, Ljava/lang/IllegalAccessException;

    invoke-direct {v2}, Ljava/lang/IllegalAccessException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "/sdcard/"

    .line 221
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_2c
    const/4 v0, 0x1

    .line 220
    :goto_2d
    return v0

    .line 221
    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public static isExternalFileUrl(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 197
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_8

    .line 201
    :cond_7
    :goto_7
    return v0

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStorageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string v1, "file:///sdcard"

    .line 202
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_2d
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static isExternalFileUrl(Ljava/lang/String;)Z
    .registers 4
    .param p0, "mediaPath"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 183
    const-string v0, "MediaUtil"

    const-string v1, "Calling deprecated version of isExternalFileUrl"

    new-instance v2, Ljava/lang/IllegalAccessException;

    invoke-direct {v2}, Ljava/lang/IllegalAccessException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "file:///sdcard/"

    .line 185
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_35
    const/4 v0, 0x1

    .line 184
    :goto_36
    return v0

    .line 185
    :cond_37
    const/4 v0, 0x0

    goto :goto_36
.end method

.method public static loadMediaPlayer(Landroid/media/MediaPlayer;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    .registers 13
    .param p0, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p2, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 731
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->determineMediaSource(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    move-result-object v7

    .line 732
    .local v7, "mediaSource":Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->$SwitchMap$com$google$appinventor$components$runtime$util$MediaUtil$MediaSource:[I

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->ordinal()I

    move-result v8

    aget v0, v0, v8

    packed-switch v0, :pswitch_data_a0

    .line 777
    new-instance v0, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to load audio or video "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 734
    :pswitch_2e
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getAssetsIgnoreCaseAfd(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 736
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    :try_start_32
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 737
    .local v1, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 738
    .local v2, "offset":J
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .local v4, "length":J
    move-object v0, p0

    .line 739
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_42
    .catchall {:try_start_32 .. :try_end_42} :catchall_46

    .line 741
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 772
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v2    # "offset":J
    .end local v4    # "length":J
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :goto_45
    return-void

    .line 741
    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catchall_46
    move-exception v0

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    throw v0

    .line 747
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :pswitch_4b
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 748
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/Form;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_45

    .line 752
    :pswitch_58
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 753
    invoke-virtual {p0, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_45

    .line 757
    :pswitch_61
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 758
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 760
    :cond_6c
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->fileUrlToFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_45

    .line 767
    :pswitch_74
    invoke-virtual {p0, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_45

    .line 771
    :pswitch_78
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_45

    .line 775
    :pswitch_80
    new-instance v0, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to load audio or video for contact "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 732
    nop

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_4b
        :pswitch_58
        :pswitch_61
        :pswitch_74
        :pswitch_78
        :pswitch_80
    .end packed-switch
.end method

.method public static loadSoundPool(Landroid/media/SoundPool;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)I
    .registers 8
    .param p0, "soundPool"    # Landroid/media/SoundPool;
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p2, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 688
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->determineMediaSource(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    move-result-object v0

    .line 689
    .local v0, "mediaSource":Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    sget-object v2, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->$SwitchMap$com$google$appinventor$components$runtime$util$MediaUtil$MediaSource:[I

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_a2

    .line 716
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load audio "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 691
    :pswitch_2f
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getAssetsIgnoreCaseAfd(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v2

    .line 710
    :goto_37
    return v2

    .line 694
    :pswitch_38
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 695
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/QUtil;->getReplAssetPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    goto :goto_37

    .line 698
    :pswitch_57
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p0, p2, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    goto :goto_37

    .line 702
    :pswitch_61
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 703
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 705
    :cond_6c
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->fileUrlToFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    goto :goto_37

    .line 709
    :pswitch_75
    invoke-static {p1, p2, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->cacheMediaTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/File;

    move-result-object v1

    .line 710
    .local v1, "tempFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    goto :goto_37

    .line 713
    .end local v1    # "tempFile":Ljava/io/File;
    :pswitch_82
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load audio for contact "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 689
    nop

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_38
        :pswitch_57
        :pswitch_61
        :pswitch_75
        :pswitch_75
        :pswitch_82
    .end packed-switch
.end method

.method public static loadVideoView(Landroid/widget/VideoView;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    .registers 8
    .param p0, "videoView"    # Landroid/widget/VideoView;
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p2, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 795
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->determineMediaSource(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    move-result-object v0

    .line 796
    .local v0, "mediaSource":Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    sget-object v2, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->$SwitchMap$com$google$appinventor$components$runtime$util$MediaUtil$MediaSource:[I

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_8a

    .line 827
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 799
    :pswitch_2e
    invoke-static {p1, p2, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->cacheMediaTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/File;

    move-result-object v1

    .line 800
    .local v1, "tempFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 822
    .end local v1    # "tempFile":Ljava/io/File;
    :goto_39
    return-void

    .line 804
    :pswitch_3a
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 805
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/Form;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    goto :goto_39

    .line 809
    :pswitch_47
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 810
    invoke-virtual {p0, p2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    goto :goto_39

    .line 814
    :pswitch_50
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 815
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 817
    :cond_5b
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->fileUrlToFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    goto :goto_39

    .line 821
    :pswitch_63
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_39

    .line 825
    :pswitch_6b
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load video for contact "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 796
    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_3a
        :pswitch_47
        :pswitch_50
        :pswitch_2e
        :pswitch_63
        :pswitch_6b
    .end packed-switch
.end method

.method public static openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->determineMediaSource(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private static openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/InputStream;
    .registers 7
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .param p2, "mediaSource"    # Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->$SwitchMap$com$google$appinventor$components$runtime$util$MediaUtil$MediaSource:[I

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_b8

    .line 338
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open media "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 302
    :pswitch_2a
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getAssetsIgnoreCaseInputStream(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 333
    :cond_2e
    :goto_2e
    return-object v0

    .line 305
    :pswitch_2f
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 306
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_2e

    .line 309
    :pswitch_47
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 310
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_2e

    .line 313
    :pswitch_52
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 314
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 317
    :cond_5d
    :pswitch_5d
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_2e

    .line 320
    :pswitch_67
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_2e

    .line 324
    :pswitch_74
    const/4 v0, 0x0

    .line 325
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v1

    const/16 v2, 0xc

    if-lt v1, v2, :cond_aa

    .line 326
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 327
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 326
    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->openContactPhotoInputStreamHelper(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 332
    :goto_89
    if-nez v0, :cond_2e

    .line 336
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open contact photo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 329
    :cond_aa
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 330
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 329
    invoke-static {v1, v2}, Landroid/provider/Contacts$People;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_89

    .line 300
    nop

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_2f
        :pswitch_47
        :pswitch_52
        :pswitch_5d
        :pswitch_67
        :pswitch_74
    .end packed-switch
.end method
