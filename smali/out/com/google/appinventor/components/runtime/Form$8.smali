.class Lcom/google/appinventor/components/runtime/Form$8;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->recomputeLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Form;

    .prologue
    .line 1206
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$8;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$8;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->access$200(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$8;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->access$200(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$8;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->access$200(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-eqz v0, :cond_42

    .line 1209
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->access$400()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1210
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$8;->this$0:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "Fixed"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->Sizing(Ljava/lang/String;)V

    .line 1214
    :goto_2d
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$8;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->ReplayFormOrientation()V

    .line 1216
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$8;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form;->frameWithTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1221
    :goto_39
    return-void

    .line 1212
    :cond_3a
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$8;->this$0:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "Responsive"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->Sizing(Ljava/lang/String;)V

    goto :goto_2d

    .line 1219
    :cond_42
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$8;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_39
.end method
