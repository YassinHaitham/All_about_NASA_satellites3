.class Lgnu/kawa/functions/LispRepositionFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field absolute:Z

.field backwards:Z

.field count:I


# direct methods
.method public constructor <init>(IZZ)V
    .registers 4
    .param p1, "count"    # I
    .param p2, "backwards"    # Z
    .param p3, "absolute"    # Z

    .prologue
    .line 1084
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 1085
    iput p1, p0, Lgnu/kawa/functions/LispRepositionFormat;->count:I

    .line 1086
    iput-boolean p2, p0, Lgnu/kawa/functions/LispRepositionFormat;->backwards:Z

    .line 1087
    iput-boolean p3, p0, Lgnu/kawa/functions/LispRepositionFormat;->absolute:Z

    .line 1088
    return-void
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .registers 9
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "dst"    # Ljava/io/Writer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1093
    iget v3, p0, Lgnu/kawa/functions/LispRepositionFormat;->count:I

    iget-boolean v1, p0, Lgnu/kawa/functions/LispRepositionFormat;->absolute:Z

    if-eqz v1, :cond_19

    move v1, v2

    :goto_8
    invoke-static {v3, v1, p1, p2}, Lgnu/kawa/functions/LispRepositionFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v0

    .line 1095
    .local v0, "count":I
    iget-boolean v1, p0, Lgnu/kawa/functions/LispRepositionFormat;->absolute:Z

    if-nez v1, :cond_16

    .line 1097
    iget-boolean v1, p0, Lgnu/kawa/functions/LispRepositionFormat;->backwards:Z

    if-eqz v1, :cond_15

    .line 1098
    neg-int v0, v0

    .line 1099
    :cond_15
    add-int/2addr v0, p2

    .line 1101
    :cond_16
    if-gez v0, :cond_1b

    :goto_18
    return v2

    .line 1093
    .end local v0    # "count":I
    :cond_19
    const/4 v1, 0x1

    goto :goto_8

    .line 1101
    .restart local v0    # "count":I
    :cond_1b
    array-length v1, p1

    if-le v0, v1, :cond_20

    array-length v2, p1

    goto :goto_18

    :cond_20
    move v2, v0

    goto :goto_18
.end method
