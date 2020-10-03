.class public Lcom/google/appinventor/components/runtime/HVArrangement;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "HVArrangement.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HVArrangement"


# instance fields
.field private alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

.field private final androidUIHandler:Landroid/os/Handler;

.field private backgroundColor:I

.field private backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

.field private final context:Landroid/app/Activity;

.field private defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private frameContainer:Landroid/view/ViewGroup;

.field private horizontalAlignment:I

.field private imagePath:Ljava/lang/String;

.field private final orientation:I

.field private scrollable:Z

.field private verticalAlignment:I

.field private final viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;IZ)V
    .registers 12
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p2, "orientation"    # I
    .param p3, "scrollable"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/16 v4, 0x64

    .line 85
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 55
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->scrollable:Z

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->imagePath:Ljava/lang/String;

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->androidUIHandler:Landroid/os/Handler;

    .line 86
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->context:Landroid/app/Activity;

    .line 88
    iput p2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->orientation:I

    .line 89
    iput-boolean p3, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->scrollable:Z

    .line 90
    new-instance v0, Lcom/google/appinventor/components/runtime/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->context:Landroid/app/Activity;

    .line 91
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 92
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, p2, v2, v3}, Lcom/google/appinventor/components/runtime/LinearLayout;-><init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0, v5}, Lcom/google/appinventor/components/runtime/LinearLayout;->setBaselineAligned(Z)V

    .line 95
    new-instance v0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;-><init>(Lcom/google/appinventor/components/runtime/LinearLayout;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    .line 96
    iput v7, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->horizontalAlignment:I

    .line 97
    iput v7, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->verticalAlignment:I

    .line 98
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    iget v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->horizontalAlignment:I

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(I)V

    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    iget v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->verticalAlignment:I

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(I)V

    .line 101
    if-eqz p3, :cond_a2

    .line 102
    packed-switch p2, :pswitch_data_b4

    .line 117
    :goto_55
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->frameContainer:Landroid/view/ViewGroup;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->frameContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/HVArrangement;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 125
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 126
    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/HVArrangement;->BackgroundColor(I)V

    .line 128
    return-void

    .line 104
    :pswitch_80
    const-string v0, "HVArrangement"

    const-string v1, "Setting up frameContainer = ScrollView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->frameContainer:Landroid/view/ViewGroup;

    goto :goto_55

    .line 108
    :pswitch_91
    const-string v0, "HVArrangement"

    const-string v1, "Setting up frameContainer = HorizontalScrollView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v0, Landroid/widget/HorizontalScrollView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->frameContainer:Landroid/view/ViewGroup;

    goto :goto_55

    .line 113
    :cond_a2
    const-string v0, "HVArrangement"

    const-string v1, "Setting up frameContainer = FrameLayout()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->frameContainer:Landroid/view/ViewGroup;

    goto :goto_55

    .line 102
    nop

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_91
        :pswitch_80
    .end packed-switch
.end method

.method private updateAppearance()V
    .registers 3

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2a

    .line 376
    iget v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundColor:I

    if-nez v0, :cond_14

    .line 379
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 389
    :goto_13
    return-void

    .line 382
    :cond_14
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 383
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_13

    .line 387
    :cond_2a
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_13
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .registers 3
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/LinearLayout;->add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 147
    return-void
.end method

.method public $context()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->context:Landroid/app/Activity;

    return-object v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method public AlignHorizontal()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how contents of the %type% are aligned  horizontally. The choices are: 1 = left aligned, 2 = right aligned,  3 = horizontally centered.  Alignment has no effect if the arrangement\'s width is automatic."
    .end annotation

    .prologue
    .line 226
    iget v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->horizontalAlignment:I

    return v0
.end method

.method public AlignHorizontal(I)V
    .registers 9
    .param p1, "alignment"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "horizontal_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(I)V

    .line 244
    iput p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->horizontalAlignment:I
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8

    .line 249
    :goto_7
    return-void

    .line 245
    :catch_8
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const-string v2, "HorizontalAlignment"

    const/16 v3, 0x579

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 247
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 246
    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public AlignVertical()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how the contents of the %type% are aligned  vertically. The choices are: 1 = aligned at the top, 2 = vertically centered, 3 = aligned at the bottom.  Alignment has no effect if the arrangement\'s height is automatic."
    .end annotation

    .prologue
    .line 263
    iget v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->verticalAlignment:I

    return v0
.end method

.method public AlignVertical(I)V
    .registers 9
    .param p1, "alignment"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "vertical_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(I)V

    .line 281
    iput p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->verticalAlignment:I
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8

    .line 286
    :goto_7
    return-void

    .line 282
    :catch_8
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const-string v2, "VerticalAlignment"

    const/16 v3, 0x57a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 284
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 283
    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public BackgroundColor()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the background color of the %type%"
    .end annotation

    .prologue
    .line 297
    iget v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .registers 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the background color of the %type%. The background color will not be visible if an Image is being displayed."
    .end annotation

    .prologue
    .line 315
    iput p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundColor:I

    .line 317
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/HVArrangement;->updateAppearance()V

    .line 319
    return-void
.end method

.method public Image()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public Image(Ljava/lang/String;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the path of the background image for the %type%.  If there is both an Image and a BackgroundColor, only the Image will be visible."
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    .line 367
    .end local p1    # "path":Ljava/lang/String;
    :goto_c
    return-void

    .line 351
    .restart local p1    # "path":Ljava/lang/String;
    :cond_d
    if-nez p1, :cond_11

    const-string p1, ""

    .end local p1    # "path":Ljava/lang/String;
    :cond_11
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->imagePath:Ljava/lang/String;

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 357
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->imagePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2c

    .line 359
    :try_start_1e
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->imagePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2c} :catch_30

    .line 366
    :cond_2c
    :goto_2c
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/HVArrangement;->updateAppearance()V

    goto :goto_c

    .line 360
    :catch_30
    move-exception v0

    goto :goto_2c
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->frameContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .registers 9
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "height"    # I

    .prologue
    .line 182
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v0

    .line 183
    .local v0, "cHeight":I
    if-nez v0, :cond_19

    .line 184
    move v1, p2

    .line 185
    .local v1, "fHeight":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->androidUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/HVArrangement$2;

    invoke-direct {v3, p0, p1, v1}, Lcom/google/appinventor/components/runtime/HVArrangement$2;-><init>(Lcom/google/appinventor/components/runtime/HVArrangement;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    .end local v1    # "fHeight":I
    :cond_19
    const/16 v2, -0x3e8

    if-gt p2, v2, :cond_23

    .line 194
    add-int/lit16 v2, p2, 0x3e8

    neg-int v2, v2

    mul-int/2addr v2, v0

    div-int/lit8 p2, v2, 0x64

    .line 197
    :cond_23
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastHeight(I)V

    .line 199
    iget v2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->orientation:I

    if-nez v2, :cond_32

    .line 200
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForHorizontalLayout(Landroid/view/View;I)V

    .line 204
    :goto_31
    return-void

    .line 202
    :cond_32
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForVerticalLayout(Landroid/view/View;I)V

    goto :goto_31
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .registers 4
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "width"    # I

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/HVArrangement;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V

    .line 152
    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V
    .registers 10
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "width"    # I
    .param p3, "trycount"    # I

    .prologue
    .line 155
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->Width()I

    move-result v0

    .line 156
    .local v0, "cWidth":I
    if-nez v0, :cond_1c

    const/4 v2, 0x2

    if-ge p3, v2, :cond_1c

    .line 157
    move v1, p2

    .line 158
    .local v1, "fWidth":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->androidUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/HVArrangement$1;

    invoke-direct {v3, p0, p1, v1, p3}, Lcom/google/appinventor/components/runtime/HVArrangement$1;-><init>(Lcom/google/appinventor/components/runtime/HVArrangement;Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 166
    .end local v1    # "fWidth":I
    :cond_1c
    const/16 v2, -0x3e8

    if-gt p2, v2, :cond_52

    .line 167
    const-string v2, "HVArrangement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HVArrangement.setChildWidth(): width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " parent Width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " child = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    add-int/lit16 v2, p2, 0x3e8

    neg-int v2, v2

    mul-int/2addr v2, v0

    div-int/lit8 p2, v2, 0x64

    .line 171
    :cond_52
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastWidth(I)V

    .line 173
    iget v2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->orientation:I

    if-nez v2, :cond_61

    .line 174
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForHorizontalLayout(Landroid/view/View;I)V

    .line 178
    :goto_60
    return-void

    .line 176
    :cond_61
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForVerticalLayout(Landroid/view/View;I)V

    goto :goto_60
.end method
