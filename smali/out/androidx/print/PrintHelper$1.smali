.class Landroidx/print/PrintHelper$1;
.super Landroid/os/AsyncTask;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/print/PrintHelper;->writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/print/PrintHelper;

.field final synthetic val$attributes:Landroid/print/PrintAttributes;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$cancellationSignal:Landroid/os/CancellationSignal;

.field final synthetic val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

.field final synthetic val$fittingMode:I

.field final synthetic val$pdfAttributes:Landroid/print/PrintAttributes;

.field final synthetic val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;


# direct methods
.method constructor <init>(Landroidx/print/PrintHelper;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/graphics/Bitmap;Landroid/print/PrintAttributes;ILandroid/os/ParcelFileDescriptor;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 9
    .param p1, "this$0"    # Landroidx/print/PrintHelper;

    .prologue
    .line 635
    iput-object p1, p0, Landroidx/print/PrintHelper$1;->this$0:Landroidx/print/PrintHelper;

    iput-object p2, p0, Landroidx/print/PrintHelper$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    iput-object p3, p0, Landroidx/print/PrintHelper$1;->val$pdfAttributes:Landroid/print/PrintAttributes;

    iput-object p4, p0, Landroidx/print/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p5, p0, Landroidx/print/PrintHelper$1;->val$attributes:Landroid/print/PrintAttributes;

    iput p6, p0, Landroidx/print/PrintHelper$1;->val$fittingMode:I

    iput-object p7, p0, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput-object p8, p0, Landroidx/print/PrintHelper$1;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 635
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/print/PrintHelper$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;
    .registers 13
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x0

    .line 639
    :try_start_1
    iget-object v8, p0, Landroidx/print/PrintHelper$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v8}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 715
    :cond_9
    :goto_9
    return-object v7

    .line 643
    :cond_a
    new-instance v6, Landroid/print/pdf/PrintedPdfDocument;

    iget-object v8, p0, Landroidx/print/PrintHelper$1;->this$0:Landroidx/print/PrintHelper;

    iget-object v8, v8, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    iget-object v9, p0, Landroidx/print/PrintHelper$1;->val$pdfAttributes:Landroid/print/PrintAttributes;

    invoke-direct {v6, v8, v9}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    .line 646
    .local v6, "pdfDocument":Landroid/print/pdf/PrintedPdfDocument;
    iget-object v8, p0, Landroidx/print/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v9, p0, Landroidx/print/PrintHelper$1;->val$pdfAttributes:Landroid/print/PrintAttributes;

    .line 647
    invoke-virtual {v9}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v9

    .line 646
    invoke-static {v8, v9}, Landroidx/print/PrintHelper;->convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 649
    .local v4, "maybeGrayscale":Landroid/graphics/Bitmap;
    iget-object v8, p0, Landroidx/print/PrintHelper$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v8}, Landroid/os/CancellationSignal;->isCanceled()Z
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_26} :catch_78

    move-result v8

    if-nez v8, :cond_9

    .line 654
    const/4 v8, 0x1

    :try_start_2a
    invoke-virtual {v6, v8}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v5

    .line 657
    .local v5, "page":Landroid/graphics/pdf/PdfDocument$Page;
    sget-boolean v8, Landroidx/print/PrintHelper;->IS_MIN_MARGINS_HANDLING_CORRECT:Z

    if-eqz v8, :cond_7a

    .line 658
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 672
    .local v0, "contentRect":Landroid/graphics/RectF;
    :goto_3f
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget v10, p0, Landroidx/print/PrintHelper$1;->val$fittingMode:I

    .line 671
    invoke-static {v8, v9, v0, v10}, Landroidx/print/PrintHelper;->getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object v3

    .line 675
    .local v3, "matrix":Landroid/graphics/Matrix;
    sget-boolean v8, Landroidx/print/PrintHelper;->IS_MIN_MARGINS_HANDLING_CORRECT:Z

    if-eqz v8, :cond_b3

    .line 686
    :goto_51
    invoke-virtual {v5}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v3, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 689
    invoke-virtual {v6, v5}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 691
    iget-object v8, p0, Landroidx/print/PrintHelper$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v8}, Landroid/os/CancellationSignal;->isCanceled()Z
    :try_end_61
    .catchall {:try_start_2a .. :try_end_61} :catchall_9e

    move-result v8

    if-eqz v8, :cond_c2

    .line 700
    :try_start_64
    invoke-virtual {v6}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 702
    iget-object v8, p0, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_69} :catch_78

    if-eqz v8, :cond_70

    .line 704
    :try_start_6b
    iget-object v8, p0, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_70} :catch_e9
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_70} :catch_78

    .line 710
    :cond_70
    :goto_70
    :try_start_70
    iget-object v8, p0, Landroidx/print/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v4, v8, :cond_9

    .line 711
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_77} :catch_78

    goto :goto_9

    .line 714
    .end local v0    # "contentRect":Landroid/graphics/RectF;
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    .end local v4    # "maybeGrayscale":Landroid/graphics/Bitmap;
    .end local v5    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    .end local v6    # "pdfDocument":Landroid/print/pdf/PrintedPdfDocument;
    :catch_78
    move-exception v7

    .line 715
    .local v7, "t":Ljava/lang/Throwable;
    goto :goto_9

    .line 662
    .end local v7    # "t":Ljava/lang/Throwable;
    .restart local v4    # "maybeGrayscale":Landroid/graphics/Bitmap;
    .restart local v5    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    .restart local v6    # "pdfDocument":Landroid/print/pdf/PrintedPdfDocument;
    :cond_7a
    :try_start_7a
    new-instance v1, Landroid/print/pdf/PrintedPdfDocument;

    iget-object v8, p0, Landroidx/print/PrintHelper$1;->this$0:Landroidx/print/PrintHelper;

    iget-object v8, v8, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    iget-object v9, p0, Landroidx/print/PrintHelper$1;->val$attributes:Landroid/print/PrintAttributes;

    invoke-direct {v1, v8, v9}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    .line 664
    .local v1, "dummyDocument":Landroid/print/pdf/PrintedPdfDocument;
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v2

    .line 665
    .local v2, "dummyPage":Landroid/graphics/pdf/PdfDocument$Page;
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 666
    .restart local v0    # "contentRect":Landroid/graphics/RectF;
    invoke-virtual {v1, v2}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 667
    invoke-virtual {v1}, Landroid/print/pdf/PrintedPdfDocument;->close()V
    :try_end_9d
    .catchall {:try_start_7a .. :try_end_9d} :catchall_9e

    goto :goto_3f

    .line 700
    .end local v0    # "contentRect":Landroid/graphics/RectF;
    .end local v1    # "dummyDocument":Landroid/print/pdf/PrintedPdfDocument;
    .end local v2    # "dummyPage":Landroid/graphics/pdf/PdfDocument$Page;
    .end local v5    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    :catchall_9e
    move-exception v8

    :try_start_9f
    invoke-virtual {v6}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 702
    iget-object v9, p0, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_a4} :catch_78

    if-eqz v9, :cond_ab

    .line 704
    :try_start_a6
    iget-object v9, p0, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_ab} :catch_e5
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_ab} :catch_78

    .line 710
    :cond_ab
    :goto_ab
    :try_start_ab
    iget-object v9, p0, Landroidx/print/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v4, v9, :cond_b2

    .line 711
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b2
    throw v8
    :try_end_b3
    .catch Ljava/lang/Throwable; {:try_start_ab .. :try_end_b3} :catch_78

    .line 679
    .restart local v0    # "contentRect":Landroid/graphics/RectF;
    .restart local v3    # "matrix":Landroid/graphics/Matrix;
    .restart local v5    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    :cond_b3
    :try_start_b3
    iget v8, v0, Landroid/graphics/RectF;->left:F

    iget v9, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 682
    invoke-virtual {v5}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    goto :goto_51

    .line 696
    :cond_c2
    new-instance v8, Ljava/io/FileOutputStream;

    iget-object v9, p0, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 697
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 696
    invoke-virtual {v6, v8}, Landroid/print/pdf/PrintedPdfDocument;->writeTo(Ljava/io/OutputStream;)V
    :try_end_d0
    .catchall {:try_start_b3 .. :try_end_d0} :catchall_9e

    .line 700
    :try_start_d0
    invoke-virtual {v6}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 702
    iget-object v8, p0, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_d5
    .catch Ljava/lang/Throwable; {:try_start_d0 .. :try_end_d5} :catch_78

    if-eqz v8, :cond_dc

    .line 704
    :try_start_d7
    iget-object v8, p0, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_dc} :catch_e7
    .catch Ljava/lang/Throwable; {:try_start_d7 .. :try_end_dc} :catch_78

    .line 710
    :cond_dc
    :goto_dc
    :try_start_dc
    iget-object v8, p0, Landroidx/print/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v4, v8, :cond_9

    .line 711
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_e3
    .catch Ljava/lang/Throwable; {:try_start_dc .. :try_end_e3} :catch_78

    goto/16 :goto_9

    .line 705
    .end local v0    # "contentRect":Landroid/graphics/RectF;
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    .end local v5    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    :catch_e5
    move-exception v9

    goto :goto_ab

    .restart local v0    # "contentRect":Landroid/graphics/RectF;
    .restart local v3    # "matrix":Landroid/graphics/Matrix;
    .restart local v5    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    :catch_e7
    move-exception v8

    goto :goto_dc

    :catch_e9
    move-exception v8

    goto :goto_70
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 635
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Landroidx/print/PrintHelper$1;->onPostExecute(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 721
    iget-object v0, p0, Landroidx/print/PrintHelper$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 723
    iget-object v0, p0, Landroidx/print/PrintHelper$1;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    invoke-virtual {v0}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteCancelled()V

    .line 733
    :goto_d
    return-void

    .line 724
    :cond_e
    if-nez p1, :cond_1e

    .line 726
    iget-object v0, p0, Landroidx/print/PrintHelper$1;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/print/PageRange;

    const/4 v2, 0x0

    sget-object v3, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V

    goto :goto_d

    .line 730
    :cond_1e
    const-string v0, "PrintHelper"

    const-string v1, "Error writing printed content"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 731
    iget-object v0, p0, Landroidx/print/PrintHelper$1;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V

    goto :goto_d
.end method
