.class public Lcom/google/youngandroid/runtime$frame1;
.super Lgnu/expr/ModuleBody;
.source "runtime5826689526814817227.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/youngandroid/runtime;->lambda4(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame1"
.end annotation


# instance fields
.field arg:Ljava/lang/Object;

.field final lambda$Fn5:Lgnu/expr/ModuleMethod;

.field final lambda$Fn6:Lgnu/expr/ModuleMethod;

.field pieces:Lgnu/lists/LList;


# direct methods
.method public constructor <init>()V
    .registers 6

    const/4 v4, 0x0

    const/16 v3, 0x1001

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, v4, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "/tmp/runtime5826689526814817227.scm:1470"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/youngandroid/runtime$frame1;->lambda$Fn5:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, v4, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "/tmp/runtime5826689526814817227.scm:1471"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/youngandroid/runtime$frame1;->lambda$Fn6:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_16

    .line 1471
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_9
    return-object v0

    .line 1470
    :pswitch_a
    invoke-virtual {p0, p2}, Lcom/google/youngandroid/runtime$frame1;->lambda5(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_9

    .line 1471
    :pswitch_10
    invoke-virtual {p0, p2}, Lcom/google/youngandroid/runtime$frame1;->lambda6(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_9

    .line 4294967295
    :pswitch_data_16
    .packed-switch 0x4
        :pswitch_a
        :pswitch_10
    .end packed-switch
.end method

.method lambda5(Ljava/lang/Object;)V
    .registers 3
    .param p1, "port"    # Ljava/lang/Object;

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/google/youngandroid/runtime$frame1;->pieces:Lgnu/lists/LList;

    invoke-static {v0, p1}, Lkawa/lib/ports;->display(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method lambda6(Ljava/lang/Object;)V
    .registers 3
    .param p1, "port"    # Ljava/lang/Object;

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/google/youngandroid/runtime$frame1;->arg:Ljava/lang/Object;

    invoke-static {v0, p1}, Lkawa/lib/ports;->display(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v1, :pswitch_data_1a

    .line 1470
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 1471
    :goto_b
    return v0

    :pswitch_c
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_b

    .line 1470
    :pswitch_13
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_b

    .line 4294967295
    :pswitch_data_1a
    .packed-switch 0x4
        :pswitch_13
        :pswitch_c
    .end packed-switch
.end method
