.class Lgnu/math/MPN;
.super Ljava/lang/Object;
.source "MPN.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add_1([I[III)I
    .registers 12
    .param p0, "dest"    # [I
    .param p1, "x"    # [I
    .param p2, "size"    # I
    .param p3, "y"    # I

    .prologue
    const-wide v6, 0xffffffffL

    .line 22
    int-to-long v4, p3

    and-long v0, v4, v6

    .line 23
    .local v0, "carry":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, p2, :cond_19

    .line 25
    aget v3, p1, v2

    int-to-long v4, v3

    and-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 26
    long-to-int v3, v0

    aput v3, p0, v2

    .line 27
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 23
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 29
    :cond_19
    long-to-int v3, v0

    return v3
.end method

.method public static add_n([I[I[II)I
    .registers 14
    .param p0, "dest"    # [I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "len"    # I

    .prologue
    const-wide v8, 0xffffffffL

    .line 40
    const-wide/16 v0, 0x0

    .line 41
    .local v0, "carry":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, p3, :cond_1d

    .line 43
    aget v3, p1, v2

    int-to-long v4, v3

    and-long/2addr v4, v8

    aget v3, p2, v2

    int-to-long v6, v3

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 45
    long-to-int v3, v0

    aput v3, p0, v2

    .line 46
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 48
    :cond_1d
    long-to-int v3, v0

    return v3
.end method

.method public static chars_per_word(I)I
    .registers 5
    .param p0, "radix"    # I

    .prologue
    const/16 v0, 0x10

    const/16 v1, 0xa

    const/16 v2, 0x8

    const/4 v3, 0x4

    .line 336
    if-ge p0, v1, :cond_1e

    .line 338
    if-ge p0, v2, :cond_1c

    .line 340
    const/4 v1, 0x2

    if-gt p0, v1, :cond_11

    .line 341
    const/16 v0, 0x20

    .line 364
    :cond_10
    :goto_10
    return v0

    .line 342
    :cond_11
    const/4 v1, 0x3

    if-ne p0, v1, :cond_17

    .line 343
    const/16 v0, 0x14

    goto :goto_10

    .line 344
    :cond_17
    if-eq p0, v3, :cond_10

    .line 347
    rsub-int/lit8 v0, p0, 0x12

    goto :goto_10

    :cond_1c
    move v0, v1

    .line 350
    goto :goto_10

    .line 352
    :cond_1e
    const/16 v1, 0xc

    if-ge p0, v1, :cond_25

    .line 353
    const/16 v0, 0x9

    goto :goto_10

    .line 354
    :cond_25
    if-gt p0, v0, :cond_29

    move v0, v2

    .line 355
    goto :goto_10

    .line 356
    :cond_29
    const/16 v0, 0x17

    if-gt p0, v0, :cond_2f

    .line 357
    const/4 v0, 0x7

    goto :goto_10

    .line 358
    :cond_2f
    const/16 v0, 0x28

    if-gt p0, v0, :cond_35

    .line 359
    const/4 v0, 0x6

    goto :goto_10

    .line 361
    :cond_35
    const/16 v0, 0x100

    if-gt p0, v0, :cond_3b

    move v0, v3

    .line 362
    goto :goto_10

    .line 364
    :cond_3b
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public static cmp([II[II)I
    .registers 5
    .param p0, "x"    # [I
    .param p1, "xlen"    # I
    .param p2, "y"    # [I
    .param p3, "ylen"    # I

    .prologue
    .line 474
    if-le p1, p3, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    if-ge p1, p3, :cond_8

    const/4 v0, -0x1

    goto :goto_3

    :cond_8
    invoke-static {p0, p2, p1}, Lgnu/math/MPN;->cmp([I[II)I

    move-result v0

    goto :goto_3
.end method

.method public static cmp([I[II)I
    .registers 7
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "size"    # I

    .prologue
    const/high16 v3, -0x80000000

    .line 453
    :cond_2
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_15

    .line 455
    aget v0, p0, p2

    .line 456
    .local v0, "x_word":I
    aget v1, p1, p2

    .line 457
    .local v1, "y_word":I
    if-eq v0, v1, :cond_2

    .line 462
    xor-int v2, v0, v3

    xor-int/2addr v3, v1

    if-le v2, v3, :cond_13

    const/4 v2, 0x1

    .line 465
    .end local v0    # "x_word":I
    .end local v1    # "y_word":I
    :goto_12
    return v2

    .line 462
    .restart local v0    # "x_word":I
    .restart local v1    # "y_word":I
    :cond_13
    const/4 v2, -0x1

    goto :goto_12

    .line 465
    .end local v0    # "x_word":I
    .end local v1    # "y_word":I
    :cond_15
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public static count_leading_zeros(I)I
    .registers 4
    .param p0, "i"    # I

    .prologue
    .line 370
    if-nez p0, :cond_5

    .line 371
    const/16 v0, 0x20

    .line 380
    :cond_4
    return v0

    .line 372
    :cond_5
    const/4 v0, 0x0

    .line 373
    .local v0, "count":I
    const/16 v2, 0x10

    .local v2, "k":I
    :goto_8
    if-lez v2, :cond_4

    .line 374
    ushr-int v1, p0, v2

    .line 375
    .local v1, "j":I
    if-nez v1, :cond_12

    .line 376
    add-int/2addr v0, v2

    .line 373
    :goto_f
    shr-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 378
    :cond_12
    move p0, v1

    goto :goto_f
.end method

.method public static divide([II[II)V
    .registers 26
    .param p0, "zds"    # [I
    .param p1, "nx"    # I
    .param p2, "y"    # [I
    .param p3, "ny"    # I

    .prologue
    .line 291
    move/from16 v8, p1

    .line 297
    .local v8, "j":I
    :cond_2
    aget v13, p0, v8

    add-int/lit8 v16, p3, -0x1

    aget v16, p2, v16

    move/from16 v0, v16

    if-ne v13, v0, :cond_6f

    .line 298
    const/4 v9, -0x1

    .line 304
    .local v9, "qhat":I
    :goto_d
    if-eqz v9, :cond_a6

    .line 306
    sub-int v13, v8, p3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v13, v1, v2, v9}, Lgnu/math/MPN;->submul_1([II[III)I

    move-result v4

    .line 307
    .local v4, "borrow":I
    aget v12, p0, v8

    .line 308
    .local v12, "save":I
    int-to-long v0, v12

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v16, v16, v18

    int-to-long v0, v4

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    sub-long v10, v16, v18

    .line 309
    .local v10, "num":J
    :goto_33
    const-wide/16 v16, 0x0

    cmp-long v13, v10, v16

    if-eqz v13, :cond_a6

    .line 311
    add-int/lit8 v9, v9, -0x1

    .line 312
    const-wide/16 v6, 0x0

    .line 313
    .local v6, "carry":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3e
    move/from16 v0, p3

    if-ge v5, v0, :cond_95

    .line 315
    sub-int v13, v8, p3

    add-int/2addr v13, v5

    aget v13, p0, v13

    int-to-long v0, v13

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v16, v16, v18

    aget v13, p2, v5

    int-to-long v0, v13

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    add-long v16, v16, v18

    add-long v6, v6, v16

    .line 317
    sub-int v13, v8, p3

    add-int/2addr v13, v5

    long-to-int v0, v6

    move/from16 v16, v0

    aput v16, p0, v13

    .line 318
    const/16 v13, 0x20

    ushr-long/2addr v6, v13

    .line 313
    add-int/lit8 v5, v5, 0x1

    goto :goto_3e

    .line 301
    .end local v4    # "borrow":I
    .end local v5    # "i":I
    .end local v6    # "carry":J
    .end local v9    # "qhat":I
    .end local v10    # "num":J
    .end local v12    # "save":I
    :cond_6f
    aget v13, p0, v8

    int-to-long v0, v13

    move-wide/from16 v16, v0

    const/16 v13, 0x20

    shl-long v16, v16, v13

    add-int/lit8 v13, v8, -0x1

    aget v13, p0, v13

    int-to-long v0, v13

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    add-long v14, v16, v18

    .line 302
    .local v14, "w":J
    add-int/lit8 v13, p3, -0x1

    aget v13, p2, v13

    invoke-static {v14, v15, v13}, Lgnu/math/MPN;->udiv_qrnnd(JI)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v9, v0

    .restart local v9    # "qhat":I
    goto/16 :goto_d

    .line 320
    .end local v14    # "w":J
    .restart local v4    # "borrow":I
    .restart local v5    # "i":I
    .restart local v6    # "carry":J
    .restart local v10    # "num":J
    .restart local v12    # "save":I
    :cond_95
    aget v13, p0, v8

    int-to-long v0, v13

    move-wide/from16 v16, v0

    add-long v16, v16, v6

    move-wide/from16 v0, v16

    long-to-int v13, v0

    aput v13, p0, v8

    .line 321
    const-wide/16 v16, 0x1

    sub-long v10, v6, v16

    .line 322
    goto :goto_33

    .line 324
    .end local v4    # "borrow":I
    .end local v5    # "i":I
    .end local v6    # "carry":J
    .end local v10    # "num":J
    .end local v12    # "save":I
    :cond_a6
    aput v9, p0, v8

    .line 325
    add-int/lit8 v8, v8, -0x1

    move/from16 v0, p3

    if-ge v8, v0, :cond_2

    .line 326
    return-void
.end method

.method public static divmod_1([I[III)I
    .registers 16
    .param p0, "quotient"    # [I
    .param p1, "dividend"    # [I
    .param p2, "len"    # I
    .param p3, "divisor"    # I

    .prologue
    .line 219
    add-int/lit8 v0, p2, -0x1

    .line 220
    .local v0, "i":I
    aget v3, p1, v0

    int-to-long v4, v3

    .line 221
    .local v4, "r":J
    const-wide v6, 0xffffffffL

    and-long/2addr v6, v4

    int-to-long v8, p3

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    cmp-long v3, v6, v8

    if-ltz v3, :cond_35

    .line 222
    const-wide/16 v4, 0x0

    .line 229
    :goto_18
    if-ltz v0, :cond_3f

    .line 231
    aget v2, p1, v0

    .line 232
    .local v2, "n0":I
    const-wide v6, -0x100000000L

    and-long/2addr v6, v4

    int-to-long v8, v2

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    or-long v4, v6, v8

    .line 233
    invoke-static {v4, v5, p3}, Lgnu/math/MPN;->udiv_qrnnd(JI)J

    move-result-wide v4

    .line 234
    long-to-int v3, v4

    aput v3, p0, v0

    .line 229
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 225
    .end local v2    # "n0":I
    :cond_35
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/4 v3, 0x0

    aput v3, p0, v0

    .line 226
    const/16 v3, 0x20

    shl-long/2addr v4, v3

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_18

    .line 236
    :cond_3f
    const/16 v3, 0x20

    shr-long v6, v4, v3

    long-to-int v3, v6

    return v3
.end method

.method static findLowestBit(I)I
    .registers 3
    .param p0, "word"    # I

    .prologue
    .line 572
    const/4 v0, 0x0

    .line 573
    .local v0, "i":I
    :goto_1
    and-int/lit8 v1, p0, 0xf

    if-nez v1, :cond_a

    .line 575
    shr-int/lit8 p0, p0, 0x4

    .line 576
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 578
    :cond_a
    and-int/lit8 v1, p0, 0x3

    if-nez v1, :cond_12

    .line 580
    shr-int/lit8 p0, p0, 0x2

    .line 581
    add-int/lit8 v0, v0, 0x2

    .line 583
    :cond_12
    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_18

    .line 584
    add-int/lit8 v0, v0, 0x1

    .line 585
    :cond_18
    return v0
.end method

.method static findLowestBit([I)I
    .registers 4
    .param p0, "words"    # [I

    .prologue
    .line 592
    const/4 v0, 0x0

    .line 594
    .local v0, "i":I
    :goto_1
    aget v1, p0, v0

    if-eqz v1, :cond_f

    .line 595
    mul-int/lit8 v1, v0, 0x20

    aget v2, p0, v0

    invoke-static {v2}, Lgnu/math/MPN;->findLowestBit(I)I

    move-result v2

    add-int/2addr v1, v2

    return v1

    .line 592
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static gcd([I[II)I
    .registers 16
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "len"    # I

    .prologue
    const/4 v12, 0x0

    .line 608
    const/4 v0, 0x0

    .line 610
    .local v0, "i":I
    :goto_2
    aget v10, p0, v0

    aget v11, p1, v0

    or-int v9, v10, v11

    .line 611
    .local v9, "word":I
    if-eqz v9, :cond_26

    .line 617
    move v2, v0

    .line 618
    .local v2, "initShiftWords":I
    invoke-static {v9}, Lgnu/math/MPN;->findLowestBit(I)I

    move-result v1

    .line 622
    .local v1, "initShiftBits":I
    sub-int/2addr p2, v2

    .line 623
    invoke-static {p0, p0, v2, p2, v1}, Lgnu/math/MPN;->rshift0([I[IIII)V

    .line 624
    invoke-static {p1, p1, v2, p2, v1}, Lgnu/math/MPN;->rshift0([I[IIII)V

    .line 628
    aget v10, p0, v12

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_29

    .line 630
    move-object v5, p0

    .line 631
    .local v5, "odd_arg":[I
    move-object v6, p1

    .line 644
    .local v6, "other_arg":[I
    :cond_1e
    :goto_1e
    const/4 v0, 0x0

    :goto_1f
    aget v10, v6, v0

    if-nez v10, :cond_2c

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 608
    .end local v1    # "initShiftBits":I
    .end local v2    # "initShiftWords":I
    .end local v5    # "odd_arg":[I
    .end local v6    # "other_arg":[I
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 635
    .restart local v1    # "initShiftBits":I
    .restart local v2    # "initShiftWords":I
    :cond_29
    move-object v5, p1

    .line 636
    .restart local v5    # "odd_arg":[I
    move-object v6, p0

    .restart local v6    # "other_arg":[I
    goto :goto_1e

    .line 645
    :cond_2c
    if-lez v0, :cond_43

    .line 648
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2f
    sub-int v10, p2, v0

    if-ge v3, v10, :cond_3c

    .line 649
    add-int v10, v3, v0

    aget v10, v6, v10

    aput v10, v6, v3

    .line 648
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 650
    :cond_3c
    :goto_3c
    if-ge v3, p2, :cond_43

    .line 651
    aput v12, v6, v3

    .line 650
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 653
    .end local v3    # "j":I
    :cond_43
    aget v10, v6, v12

    invoke-static {v10}, Lgnu/math/MPN;->findLowestBit(I)I

    move-result v0

    .line 654
    if-lez v0, :cond_4e

    .line 655
    invoke-static {v6, v6, v12, p2, v0}, Lgnu/math/MPN;->rshift([I[IIII)I

    .line 661
    :cond_4e
    invoke-static {v5, v6, p2}, Lgnu/math/MPN;->cmp([I[II)I

    move-result v0

    .line 662
    if-nez v0, :cond_6f

    .line 677
    add-int v10, v2, v1

    if-lez v10, :cond_97

    .line 679
    if-lez v1, :cond_8a

    .line 681
    invoke-static {p0, v2, p0, p2, v1}, Lgnu/math/MPN;->lshift([II[III)I

    move-result v7

    .line 682
    .local v7, "sh_out":I
    if-eqz v7, :cond_67

    .line 683
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "len":I
    .local v4, "len":I
    add-int v10, p2, v2

    aput v7, p0, v10

    move p2, v4

    .line 690
    .end local v4    # "len":I
    .end local v7    # "sh_out":I
    .restart local p2    # "len":I
    :cond_67
    move v0, v2

    :goto_68
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_96

    .line 691
    aput v12, p0, v0

    goto :goto_68

    .line 664
    :cond_6f
    if-lez v0, :cond_86

    .line 666
    invoke-static {v5, v5, v6, p2}, Lgnu/math/MPN;->sub_n([I[I[II)I

    .line 668
    move-object v8, v5

    .local v8, "tmp":[I
    move-object v5, v6

    move-object v6, v8

    .line 674
    .end local v8    # "tmp":[I
    :goto_77
    add-int/lit8 v10, p2, -0x1

    aget v10, v5, v10

    if-nez v10, :cond_1e

    add-int/lit8 v10, p2, -0x1

    aget v10, v6, v10

    if-nez v10, :cond_1e

    .line 675
    add-int/lit8 p2, p2, -0x1

    goto :goto_77

    .line 672
    :cond_86
    invoke-static {v6, v6, v5, p2}, Lgnu/math/MPN;->sub_n([I[I[II)I

    goto :goto_77

    .line 687
    :cond_8a
    move v0, p2

    :goto_8b
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_67

    .line 688
    add-int v10, v0, v2

    aget v11, p0, v0

    aput v11, p0, v10

    goto :goto_8b

    .line 692
    :cond_96
    add-int/2addr p2, v2

    .line 694
    :cond_97
    return p2
.end method

.method public static intLength(I)I
    .registers 2
    .param p0, "i"    # I

    .prologue
    .line 699
    if-gez p0, :cond_4

    xor-int/lit8 p0, p0, -0x1

    .end local p0    # "i":I
    :cond_4
    invoke-static {p0}, Lgnu/math/MPN;->count_leading_zeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    return v0
.end method

.method public static intLength([II)I
    .registers 4
    .param p0, "words"    # [I
    .param p1, "len"    # I

    .prologue
    .line 706
    add-int/lit8 p1, p1, -0x1

    .line 707
    aget v0, p0, p1

    invoke-static {v0}, Lgnu/math/MPN;->intLength(I)I

    move-result v0

    mul-int/lit8 v1, p1, 0x20

    add-int/2addr v0, v1

    return v0
.end method

.method public static lshift([II[III)I
    .registers 13
    .param p0, "dest"    # [I
    .param p1, "d_offset"    # I
    .param p2, "x"    # [I
    .param p3, "len"    # I
    .param p4, "count"    # I

    .prologue
    .line 553
    rsub-int/lit8 v0, p4, 0x20

    .line 554
    .local v0, "count_2":I
    add-int/lit8 v2, p3, -0x1

    .line 555
    .local v2, "i":I
    aget v1, p2, v2

    .line 556
    .local v1, "high_word":I
    ushr-int v4, v1, v0

    .line 557
    .local v4, "retval":I
    add-int/lit8 p1, p1, 0x1

    .line 558
    :goto_a
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1b

    .line 560
    aget v3, p2, v2

    .line 561
    .local v3, "low_word":I
    add-int v5, p1, v2

    shl-int v6, v1, p4

    ushr-int v7, v3, v0

    or-int/2addr v6, v7

    aput v6, p0, v5

    .line 562
    move v1, v3

    .line 563
    goto :goto_a

    .line 564
    .end local v3    # "low_word":I
    :cond_1b
    add-int v5, p1, v2

    shl-int v6, v1, p4

    aput v6, p0, v5

    .line 565
    return v4
.end method

.method public static mul([I[II[II)V
    .registers 19
    .param p0, "dest"    # [I
    .param p1, "x"    # [I
    .param p2, "xlen"    # I
    .param p3, "y"    # [I
    .param p4, "ylen"    # I

    .prologue
    .line 111
    const/4 v8, 0x0

    aget v8, p3, v8

    move/from16 v0, p2

    invoke-static {p0, p1, v0, v8}, Lgnu/math/MPN;->mul_1([I[III)I

    move-result v8

    aput v8, p0, p2

    .line 113
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_c
    move/from16 v0, p4

    if-ge v4, v0, :cond_4b

    .line 115
    aget v8, p3, v4

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long v6, v8, v10

    .line 116
    .local v6, "yword":J
    const-wide/16 v2, 0x0

    .line 117
    .local v2, "carry":J
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1d
    move/from16 v0, p2

    if-ge v5, v0, :cond_43

    .line 119
    aget v8, p1, v5

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    mul-long/2addr v8, v6

    add-int v10, v4, v5

    aget v10, p0, v10

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    add-long/2addr v8, v10

    add-long/2addr v2, v8

    .line 121
    add-int v8, v4, v5

    long-to-int v9, v2

    aput v9, p0, v8

    .line 122
    const/16 v8, 0x20

    ushr-long/2addr v2, v8

    .line 117
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 124
    :cond_43
    add-int v8, v4, p2

    long-to-int v9, v2

    aput v9, p0, v8

    .line 113
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 126
    .end local v2    # "carry":J
    .end local v5    # "j":I
    .end local v6    # "yword":J
    :cond_4b
    return-void
.end method

.method public static mul_1([I[III)I
    .registers 14
    .param p0, "dest"    # [I
    .param p1, "x"    # [I
    .param p2, "len"    # I
    .param p3, "y"    # I

    .prologue
    const-wide v8, 0xffffffffL

    .line 86
    int-to-long v6, p3

    and-long v4, v6, v8

    .line 87
    .local v4, "yword":J
    const-wide/16 v0, 0x0

    .line 88
    .local v0, "carry":J
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_b
    if-ge v2, p2, :cond_1c

    .line 90
    aget v3, p1, v2

    int-to-long v6, v3

    and-long/2addr v6, v8

    mul-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 91
    long-to-int v3, v0

    aput v3, p0, v2

    .line 92
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 94
    :cond_1c
    long-to-int v3, v0

    return v3
.end method

.method public static rshift([I[IIII)I
    .registers 13
    .param p0, "dest"    # [I
    .param p1, "x"    # [I
    .param p2, "x_start"    # I
    .param p3, "len"    # I
    .param p4, "count"    # I

    .prologue
    .line 488
    rsub-int/lit8 v0, p4, 0x20

    .line 489
    .local v0, "count_2":I
    aget v3, p1, p2

    .line 490
    .local v3, "low_word":I
    shl-int v4, v3, v0

    .line 491
    .local v4, "retval":I
    const/4 v2, 0x1

    .line 492
    .local v2, "i":I
    :goto_7
    if-ge v2, p3, :cond_1a

    .line 494
    add-int v5, p2, v2

    aget v1, p1, v5

    .line 495
    .local v1, "high_word":I
    add-int/lit8 v5, v2, -0x1

    ushr-int v6, v3, p4

    shl-int v7, v1, v0

    or-int/2addr v6, v7

    aput v6, p0, v5

    .line 496
    move v3, v1

    .line 492
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 498
    .end local v1    # "high_word":I
    :cond_1a
    add-int/lit8 v5, v2, -0x1

    ushr-int v6, v3, p4

    aput v6, p0, v5

    .line 499
    return v4
.end method

.method public static rshift0([I[IIII)V
    .registers 7
    .param p0, "dest"    # [I
    .param p1, "x"    # [I
    .param p2, "x_start"    # I
    .param p3, "len"    # I
    .param p4, "count"    # I

    .prologue
    .line 512
    if-lez p4, :cond_6

    .line 513
    invoke-static {p0, p1, p2, p3, p4}, Lgnu/math/MPN;->rshift([I[IIII)I

    .line 517
    :cond_5
    return-void

    .line 515
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, p3, :cond_5

    .line 516
    add-int v1, v0, p2

    aget v1, p1, v1

    aput v1, p0, v0

    .line 515
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static rshift_long([III)J
    .registers 15
    .param p0, "x"    # [I
    .param p1, "len"    # I
    .param p2, "count"    # I

    .prologue
    .line 527
    shr-int/lit8 v4, p2, 0x5

    .line 528
    .local v4, "wordno":I
    and-int/lit8 p2, p2, 0x1f

    .line 529
    add-int/lit8 v5, p1, -0x1

    aget v5, p0, v5

    if-gez v5, :cond_37

    const/4 v0, -0x1

    .line 530
    .local v0, "sign":I
    :goto_b
    if-lt v4, p1, :cond_39

    move v1, v0

    .line 531
    .local v1, "w0":I
    :goto_e
    add-int/lit8 v4, v4, 0x1

    .line 532
    if-lt v4, p1, :cond_3c

    move v2, v0

    .line 533
    .local v2, "w1":I
    :goto_13
    if-eqz p2, :cond_2a

    .line 535
    add-int/lit8 v4, v4, 0x1

    .line 536
    if-lt v4, p1, :cond_3f

    move v3, v0

    .line 537
    .local v3, "w2":I
    :goto_1a
    ushr-int v5, v1, p2

    rsub-int/lit8 v6, p2, 0x20

    shl-int v6, v2, v6

    or-int v1, v5, v6

    .line 538
    ushr-int v5, v2, p2

    rsub-int/lit8 v6, p2, 0x20

    shl-int v6, v3, v6

    or-int v2, v5, v6

    .line 540
    .end local v3    # "w2":I
    :cond_2a
    int-to-long v6, v2

    const/16 v5, 0x20

    shl-long/2addr v6, v5

    int-to-long v8, v1

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    or-long/2addr v6, v8

    return-wide v6

    .line 529
    .end local v0    # "sign":I
    .end local v1    # "w0":I
    .end local v2    # "w1":I
    :cond_37
    const/4 v0, 0x0

    goto :goto_b

    .line 530
    .restart local v0    # "sign":I
    :cond_39
    aget v1, p0, v4

    goto :goto_e

    .line 532
    .restart local v1    # "w0":I
    :cond_3c
    aget v2, p0, v4

    goto :goto_13

    .line 536
    .restart local v2    # "w1":I
    :cond_3f
    aget v3, p0, v4

    goto :goto_1a
.end method

.method public static set_str([I[BII)I
    .registers 21
    .param p0, "dest"    # [I
    .param p1, "str"    # [B
    .param p2, "str_len"    # I
    .param p3, "base"    # I

    .prologue
    .line 385
    const/4 v11, 0x0

    .line 386
    .local v11, "size":I
    add-int/lit8 v15, p3, -0x1

    and-int v15, v15, p3

    if-nez v15, :cond_37

    .line 391
    const/4 v9, 0x0

    .line 392
    .local v9, "next_bitpos":I
    const/4 v3, 0x0

    .line 393
    .local v3, "bits_per_indigit":I
    move/from16 v6, p3

    .local v6, "i":I
    :goto_b
    shr-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_12

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 394
    :cond_12
    const/4 v10, 0x0

    .line 396
    .local v10, "res_digit":I
    move/from16 v6, p2

    move v12, v11

    .end local v11    # "size":I
    .local v12, "size":I
    :goto_16
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_30

    .line 398
    aget-byte v8, p1, v6

    .line 399
    .local v8, "inp_digit":I
    shl-int v15, v8, v9

    or-int/2addr v10, v15

    .line 400
    add-int/2addr v9, v3

    .line 401
    const/16 v15, 0x20

    if-lt v9, v15, :cond_7f

    .line 403
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "size":I
    .restart local v11    # "size":I
    aput v10, p0, v12

    .line 404
    add-int/lit8 v9, v9, -0x20

    .line 405
    sub-int v15, v3, v9

    shr-int v10, v8, v15

    :goto_2e
    move v12, v11

    .line 407
    .end local v11    # "size":I
    .restart local v12    # "size":I
    goto :goto_16

    .line 409
    .end local v8    # "inp_digit":I
    :cond_30
    if-eqz v10, :cond_7d

    .line 410
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "size":I
    .restart local v11    # "size":I
    aput v10, p0, v12

    .line 444
    .end local v3    # "bits_per_indigit":I
    .end local v6    # "i":I
    .end local v9    # "next_bitpos":I
    .end local v10    # "res_digit":I
    :goto_36
    return v11

    .line 415
    :cond_37
    invoke-static/range {p3 .. p3}, Lgnu/math/MPN;->chars_per_word(I)I

    move-result v7

    .line 416
    .local v7, "indigits_per_limb":I
    const/4 v13, 0x0

    .local v13, "str_pos":I
    move v14, v13

    .end local v13    # "str_pos":I
    .local v14, "str_pos":I
    move v12, v11

    .line 418
    .end local v11    # "size":I
    .restart local v12    # "size":I
    :goto_3e
    move/from16 v0, p2

    if-ge v14, v0, :cond_7d

    .line 420
    sub-int v4, p2, v14

    .line 421
    .local v4, "chunk":I
    if-le v4, v7, :cond_47

    .line 422
    move v4, v7

    .line 423
    :cond_47
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "str_pos":I
    .restart local v13    # "str_pos":I
    aget-byte v10, p1, v14

    .line 424
    .restart local v10    # "res_digit":I
    move/from16 v2, p3

    .local v2, "big_base":I
    move v14, v13

    .line 426
    .end local v13    # "str_pos":I
    .restart local v14    # "str_pos":I
    :goto_4e
    add-int/lit8 v4, v4, -0x1

    if-lez v4, :cond_5e

    .line 428
    mul-int v15, v10, p3

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "str_pos":I
    .restart local v13    # "str_pos":I
    aget-byte v16, p1, v14

    add-int v10, v15, v16

    .line 429
    mul-int v2, v2, p3

    move v14, v13

    .end local v13    # "str_pos":I
    .restart local v14    # "str_pos":I
    goto :goto_4e

    .line 433
    :cond_5e
    if-nez v12, :cond_69

    .line 434
    move v5, v10

    .line 440
    .local v5, "cy_limb":I
    :goto_61
    if-eqz v5, :cond_7b

    .line 441
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "size":I
    .restart local v11    # "size":I
    aput v5, p0, v12

    :goto_67
    move v12, v11

    .line 442
    .end local v11    # "size":I
    .restart local v12    # "size":I
    goto :goto_3e

    .line 437
    .end local v5    # "cy_limb":I
    :cond_69
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-static {v0, v1, v12, v2}, Lgnu/math/MPN;->mul_1([I[III)I

    move-result v5

    .line 438
    .restart local v5    # "cy_limb":I
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-static {v0, v1, v12, v10}, Lgnu/math/MPN;->add_1([I[III)I

    move-result v15

    add-int/2addr v5, v15

    goto :goto_61

    :cond_7b
    move v11, v12

    .end local v12    # "size":I
    .restart local v11    # "size":I
    goto :goto_67

    .end local v2    # "big_base":I
    .end local v4    # "chunk":I
    .end local v5    # "cy_limb":I
    .end local v7    # "indigits_per_limb":I
    .end local v10    # "res_digit":I
    .end local v11    # "size":I
    .end local v14    # "str_pos":I
    .restart local v12    # "size":I
    :cond_7d
    move v11, v12

    .end local v12    # "size":I
    .restart local v11    # "size":I
    goto :goto_36

    .end local v11    # "size":I
    .restart local v3    # "bits_per_indigit":I
    .restart local v6    # "i":I
    .restart local v8    # "inp_digit":I
    .restart local v9    # "next_bitpos":I
    .restart local v10    # "res_digit":I
    .restart local v12    # "size":I
    :cond_7f
    move v11, v12

    .end local v12    # "size":I
    .restart local v11    # "size":I
    goto :goto_2e
.end method

.method public static sub_n([I[I[II)I
    .registers 13
    .param p0, "dest"    # [I
    .param p1, "X"    # [I
    .param p2, "Y"    # [I
    .param p3, "size"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v8, -0x80000000

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "cy":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, p3, :cond_27

    .line 62
    aget v3, p2, v1

    .line 63
    .local v3, "y":I
    aget v2, p1, v1

    .line 64
    .local v2, "x":I
    add-int/2addr v3, v0

    .line 67
    xor-int v4, v3, v8

    xor-int v7, v0, v8

    if-ge v4, v7, :cond_23

    move v0, v5

    .line 68
    :goto_14
    sub-int v3, v2, v3

    .line 69
    xor-int v4, v3, v8

    xor-int v7, v2, v8

    if-le v4, v7, :cond_25

    move v4, v5

    :goto_1d
    add-int/2addr v0, v4

    .line 70
    aput v3, p0, v1

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_23
    move v0, v6

    .line 67
    goto :goto_14

    :cond_25
    move v4, v6

    .line 69
    goto :goto_1d

    .line 72
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_27
    return v0
.end method

.method public static submul_1([II[III)I
    .registers 21
    .param p0, "dest"    # [I
    .param p1, "offset"    # I
    .param p2, "x"    # [I
    .param p3, "len"    # I
    .param p4, "y"    # I

    .prologue
    .line 246
    move/from16 v0, p4

    int-to-long v12, v0

    const-wide v14, 0xffffffffL

    and-long v10, v12, v14

    .line 247
    .local v10, "yl":J
    const/4 v2, 0x0

    .line 248
    .local v2, "carry":I
    const/4 v3, 0x0

    .line 251
    .local v3, "j":I
    :cond_c
    aget v9, p2, v3

    int-to-long v12, v9

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    mul-long v4, v12, v10

    .line 252
    .local v4, "prod":J
    long-to-int v7, v4

    .line 253
    .local v7, "prod_low":I
    const/16 v9, 0x20

    shr-long v12, v4, v9

    long-to-int v6, v12

    .line 254
    .local v6, "prod_high":I
    add-int/2addr v7, v2

    .line 257
    const/high16 v9, -0x80000000

    xor-int/2addr v9, v7

    const/high16 v12, -0x80000000

    xor-int/2addr v12, v2

    if-ge v9, v12, :cond_44

    const/4 v9, 0x1

    :goto_27
    add-int v2, v9, v6

    .line 259
    add-int v9, p1, v3

    aget v8, p0, v9

    .line 260
    .local v8, "x_j":I
    sub-int v7, v8, v7

    .line 261
    const/high16 v9, -0x80000000

    xor-int/2addr v9, v7

    const/high16 v12, -0x80000000

    xor-int/2addr v12, v8

    if-le v9, v12, :cond_39

    .line 262
    add-int/lit8 v2, v2, 0x1

    .line 263
    :cond_39
    add-int v9, p1, v3

    aput v7, p0, v9

    .line 265
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, p3

    if-lt v3, v0, :cond_c

    .line 266
    return v2

    .line 257
    .end local v8    # "x_j":I
    :cond_44
    const/4 v9, 0x0

    goto :goto_27
.end method

.method public static udiv_qrnnd(JI)J
    .registers 23
    .param p0, "N"    # J
    .param p2, "D"    # I

    .prologue
    .line 136
    const/16 v14, 0x20

    ushr-long v4, p0, v14

    .line 137
    .local v4, "a1":J
    const-wide v14, 0xffffffffL

    and-long v2, p0, v14

    .line 138
    .local v2, "a0":J
    if-ltz p2, :cond_52

    .line 140
    move/from16 v0, p2

    int-to-long v14, v0

    sub-long/2addr v14, v4

    const/16 v16, 0x1f

    ushr-long v16, v2, v16

    sub-long v14, v14, v16

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    cmp-long v14, v4, v14

    if-gez v14, :cond_3a

    .line 143
    move/from16 v0, p2

    int-to-long v14, v0

    div-long v10, p0, v14

    .line 144
    .local v10, "q":J
    move/from16 v0, p2

    int-to-long v14, v0

    rem-long v12, p0, v14

    .line 207
    .local v12, "r":J
    :cond_2c
    :goto_2c
    const/16 v14, 0x20

    shl-long v14, v12, v14

    const-wide v16, 0xffffffffL

    and-long v16, v16, v10

    or-long v14, v14, v16

    return-wide v14

    .line 149
    .end local v10    # "q":J
    .end local v12    # "r":J
    :cond_3a
    move/from16 v0, p2

    int-to-long v14, v0

    const/16 v16, 0x1f

    shl-long v14, v14, v16

    sub-long v8, p0, v14

    .line 151
    .local v8, "c":J
    move/from16 v0, p2

    int-to-long v14, v0

    div-long v10, v8, v14

    .line 152
    .restart local v10    # "q":J
    move/from16 v0, p2

    int-to-long v14, v0

    rem-long v12, v8, v14

    .line 154
    .restart local v12    # "r":J
    const-wide/32 v14, -0x80000000

    add-long/2addr v10, v14

    .line 155
    goto :goto_2c

    .line 159
    .end local v8    # "c":J
    .end local v10    # "q":J
    .end local v12    # "r":J
    :cond_52
    ushr-int/lit8 v14, p2, 0x1

    int-to-long v6, v14

    .line 162
    .local v6, "b1":J
    const/4 v14, 0x1

    ushr-long v8, p0, v14

    .line 163
    .restart local v8    # "c":J
    cmp-long v14, v4, v6

    if-ltz v14, :cond_63

    const/4 v14, 0x1

    shr-long v14, v4, v14

    cmp-long v14, v14, v6

    if-gez v14, :cond_d2

    .line 165
    :cond_63
    cmp-long v14, v4, v6

    if-gez v14, :cond_7e

    .line 167
    div-long v10, v8, v6

    .line 168
    .restart local v10    # "q":J
    rem-long v12, v8, v6

    .line 178
    .restart local v12    # "r":J
    :goto_6b
    const-wide/16 v14, 0x2

    mul-long/2addr v14, v12

    const-wide/16 v16, 0x1

    and-long v16, v16, v2

    add-long v12, v14, v16

    .line 179
    and-int/lit8 v14, p2, 0x1

    if-eqz v14, :cond_2c

    .line 181
    cmp-long v14, v12, v10

    if-ltz v14, :cond_9d

    .line 182
    sub-long/2addr v12, v10

    goto :goto_2c

    .line 172
    .end local v10    # "q":J
    .end local v12    # "r":J
    :cond_7e
    const/16 v14, 0x20

    shl-long v14, v6, v14

    sub-long v14, v8, v14

    const-wide/16 v16, -0x1

    xor-long v8, v14, v16

    .line 173
    div-long v10, v8, v6

    .line 174
    .restart local v10    # "q":J
    rem-long v12, v8, v6

    .line 175
    .restart local v12    # "r":J
    const-wide/16 v14, -0x1

    xor-long/2addr v14, v10

    const-wide v16, 0xffffffffL

    and-long v10, v14, v16

    .line 176
    const-wide/16 v14, 0x1

    sub-long v14, v6, v14

    sub-long v12, v14, v12

    goto :goto_6b

    .line 183
    :cond_9d
    sub-long v14, v10, v12

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v16, v16, v18

    cmp-long v14, v14, v16

    if-gtz v14, :cond_bd

    .line 184
    sub-long v14, v12, v10

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v12, v14, v16

    .line 185
    const-wide/16 v14, 0x1

    sub-long/2addr v10, v14

    goto/16 :goto_2c

    .line 187
    :cond_bd
    sub-long v14, v12, v10

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v12, v14, v16

    .line 188
    const-wide/16 v14, 0x2

    sub-long/2addr v10, v14

    goto/16 :goto_2c

    .line 194
    .end local v10    # "q":J
    .end local v12    # "r":J
    :cond_d2
    move/from16 v0, p2

    neg-int v14, v0

    int-to-long v14, v14

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    cmp-long v14, v2, v14

    if-ltz v14, :cond_ea

    .line 196
    const-wide/16 v10, -0x1

    .line 197
    .restart local v10    # "q":J
    move/from16 v0, p2

    int-to-long v14, v0

    add-long v12, v2, v14

    .restart local v12    # "r":J
    goto/16 :goto_2c

    .line 201
    .end local v10    # "q":J
    .end local v12    # "r":J
    :cond_ea
    const-wide/16 v10, -0x2

    .line 202
    .restart local v10    # "q":J
    move/from16 v0, p2

    int-to-long v14, v0

    add-long/2addr v14, v2

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v12, v14, v16

    .restart local v12    # "r":J
    goto/16 :goto_2c
.end method
