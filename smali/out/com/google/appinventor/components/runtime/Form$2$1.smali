.class Lcom/google/appinventor/components/runtime/Form$2$1;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Form$2;

.field final synthetic val$savedLayout:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form$2;Landroid/widget/FrameLayout;)V
    .registers 3
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/Form$2;

    .prologue
    .line 495
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$2$1;->this$1:Lcom/google/appinventor/components/runtime/Form$2;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Form$2$1;->val$savedLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$2$1;->val$savedLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    .line 498
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$2$1;->val$savedLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 500
    :cond_9
    return-void
.end method
