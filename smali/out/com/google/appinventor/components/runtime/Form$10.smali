.class Lcom/google/appinventor/components/runtime/Form$10;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Form;

.field final synthetic val$component:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

.field final synthetic val$fHeight:I


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Form;

    .prologue
    .line 2157
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$10;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Form$10;->val$component:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    iput p3, p0, Lcom/google/appinventor/components/runtime/Form$10;->val$fHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2160
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "(Form)Height not stable yet... trying again"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2161
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$10;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$10;->val$component:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    iget v2, p0, Lcom/google/appinventor/components/runtime/Form$10;->val$fHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 2162
    return-void
.end method
