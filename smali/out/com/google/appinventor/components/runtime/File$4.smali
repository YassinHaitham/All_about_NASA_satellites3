.class Lcom/google/appinventor/components/runtime/File$4;
.super Ljava/lang/Object;
.source "File.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File;->Write(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/File;

.field final synthetic val$append:Z

.field final synthetic val$operation:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/File;Ljava/lang/Runnable;Z)V
    .registers 4
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/File;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File$4;->this$0:Lcom/google/appinventor/components/runtime/File;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/File$4;->val$operation:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/google/appinventor/components/runtime/File$4;->val$append:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    .prologue
    .line 319
    if-eqz p2, :cond_8

    .line 320
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$4;->val$operation:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 325
    :goto_7
    return-void

    .line 322
    :cond_8
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$4;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File$4;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/File$4;->val$append:Z

    if-eqz v0, :cond_18

    const-string v0, "AppendTo"

    :goto_14
    invoke-virtual {v1, v2, v0, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_18
    const-string v0, "SaveFile"

    goto :goto_14
.end method
