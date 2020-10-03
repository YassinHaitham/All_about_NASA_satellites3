.class public Landroidx/lifecycle/ReportFragment;
.super Landroid/app/Fragment;
.source "ReportFragment.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;
    }
.end annotation


# static fields
.field private static final REPORT_FRAGMENT_TAG:Ljava/lang/String; = "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"


# instance fields
.field private mProcessListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 131
    return-void
.end method

.method private dispatch(Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 5
    .param p1, "event"    # Landroidx/lifecycle/Lifecycle$Event;

    .prologue
    .line 113
    invoke-virtual {p0}, Landroidx/lifecycle/ReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 114
    .local v0, "activity":Landroid/app/Activity;
    instance-of v2, v0, Landroidx/lifecycle/LifecycleRegistryOwner;

    if-eqz v2, :cond_12

    .line 115
    check-cast v0, Landroidx/lifecycle/LifecycleRegistryOwner;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleRegistryOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 125
    :cond_11
    :goto_11
    return-void

    .line 119
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_12
    instance-of v2, v0, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v2, :cond_11

    .line 120
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    .line 121
    .local v1, "lifecycle":Landroidx/lifecycle/Lifecycle;
    instance-of v2, v1, Landroidx/lifecycle/LifecycleRegistry;

    if-eqz v2, :cond_11

    .line 122
    check-cast v1, Landroidx/lifecycle/LifecycleRegistry;

    .end local v1    # "lifecycle":Landroidx/lifecycle/Lifecycle;
    invoke-virtual {v1, p1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    goto :goto_11
.end method

.method private dispatchCreate(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .registers 2
    .param p1, "listener"    # Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    .prologue
    .line 54
    if-eqz p1, :cond_5

    .line 55
    invoke-interface {p1}, Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;->onCreate()V

    .line 57
    :cond_5
    return-void
.end method

.method private dispatchResume(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .registers 2
    .param p1, "listener"    # Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    .prologue
    .line 66
    if-eqz p1, :cond_5

    .line 67
    invoke-interface {p1}, Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;->onResume()V

    .line 69
    :cond_5
    return-void
.end method

.method private dispatchStart(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .registers 2
    .param p1, "listener"    # Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    .prologue
    .line 60
    if-eqz p1, :cond_5

    .line 61
    invoke-interface {p1}, Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;->onStart()V

    .line 63
    :cond_5
    return-void
.end method

.method static get(Landroid/app/Activity;)Landroidx/lifecycle/ReportFragment;
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ReportFragment;

    return-object v0
.end method

.method public static injectIfNeededIn(Landroid/app/Activity;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 39
    .local v0, "manager":Landroid/app/FragmentManager;
    const-string v1, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_21

    .line 40
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/ReportFragment;

    invoke-direct {v2}, Landroidx/lifecycle/ReportFragment;-><init>()V

    const-string v3, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 42
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 44
    :cond_21
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 74
    iget-object v0, p0, Landroidx/lifecycle/ReportFragment;->mProcessListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatchCreate(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V

    .line 75
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 76
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 107
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/lifecycle/ReportFragment;->mProcessListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 110
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 95
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 96
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 88
    iget-object v0, p0, Landroidx/lifecycle/ReportFragment;->mProcessListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatchResume(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V

    .line 89
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 90
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 81
    iget-object v0, p0, Landroidx/lifecycle/ReportFragment;->mProcessListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatchStart(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V

    .line 82
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 83
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 101
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 102
    return-void
.end method

.method setProcessListener(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .registers 2
    .param p1, "processListener"    # Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    .prologue
    .line 128
    iput-object p1, p0, Landroidx/lifecycle/ReportFragment;->mProcessListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 129
    return-void
.end method
