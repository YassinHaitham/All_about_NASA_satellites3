.class Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;
.super Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/customview/widget/ExploreByTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyNodeProvider"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/customview/widget/ExploreByTouchHelper;


# direct methods
.method constructor <init>(Landroidx/customview/widget/ExploreByTouchHelper;)V
    .registers 2

    .prologue
    .line 1238
    iput-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidx/customview/widget/ExploreByTouchHelper;

    invoke-direct {p0}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;-><init>()V

    .line 1239
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 4
    .param p1, "virtualViewId"    # I

    .prologue
    .line 1245
    iget-object v1, p0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidx/customview/widget/ExploreByTouchHelper;

    .line 1246
    invoke-virtual {v1, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 1247
    .local v0, "node":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    return-object v1
.end method

.method public findFocus(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 4
    .param p1, "focusType"    # I

    .prologue
    .line 1257
    const/4 v1, 0x2

    if-ne p1, v1, :cond_d

    iget-object v1, p0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidx/customview/widget/ExploreByTouchHelper;

    iget v0, v1, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 1259
    .local v0, "focusedId":I
    :goto_7
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_12

    .line 1260
    const/4 v1, 0x0

    .line 1262
    :goto_c
    return-object v1

    .line 1257
    .end local v0    # "focusedId":I
    :cond_d
    iget-object v1, p0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidx/customview/widget/ExploreByTouchHelper;

    iget v0, v1, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    goto :goto_7

    .line 1262
    .restart local v0    # "focusedId":I
    :cond_12
    invoke-virtual {p0, v0}, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->createAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    goto :goto_c
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 1252
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidx/customview/widget/ExploreByTouchHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/customview/widget/ExploreByTouchHelper;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
