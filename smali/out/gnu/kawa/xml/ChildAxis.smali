.class public Lgnu/kawa/xml/ChildAxis;
.super Lgnu/kawa/xml/TreeScanner;
.source "ChildAxis.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lgnu/kawa/xml/TreeScanner;-><init>()V

    return-void
.end method

.method public static make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/ChildAxis;
    .registers 2
    .param p0, "type"    # Lgnu/lists/NodePredicate;

    .prologue
    .line 13
    new-instance v0, Lgnu/kawa/xml/ChildAxis;

    invoke-direct {v0}, Lgnu/kawa/xml/ChildAxis;-><init>()V

    .line 14
    .local v0, "axis":Lgnu/kawa/xml/ChildAxis;
    iput-object p0, v0, Lgnu/kawa/xml/ChildAxis;->type:Lgnu/lists/NodePredicate;

    .line 15
    return-object v0
.end method


# virtual methods
.method public scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V
    .registers 8
    .param p1, "seq"    # Lgnu/lists/AbstractSequence;
    .param p2, "ipos"    # I
    .param p3, "out"    # Lgnu/lists/PositionConsumer;

    .prologue
    .line 20
    iget-object v1, p0, Lgnu/kawa/xml/ChildAxis;->type:Lgnu/lists/NodePredicate;

    invoke-virtual {p1, p2, v1}, Lgnu/lists/AbstractSequence;->firstChildPos(ILgnu/lists/ItemPredicate;)I

    move-result v0

    .line 21
    .local v0, "child":I
    :goto_6
    if-eqz v0, :cond_14

    .line 23
    invoke-interface {p3, p1, v0}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 24
    iget-object v1, p0, Lgnu/kawa/xml/ChildAxis;->type:Lgnu/lists/NodePredicate;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lgnu/lists/AbstractSequence;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result v0

    goto :goto_6

    .line 26
    :cond_14
    return-void
.end method
