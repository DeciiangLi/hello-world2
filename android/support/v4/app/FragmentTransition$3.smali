.class final Landroid/support/v4/app/FragmentTransition$3;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/FragmentTransition;->configureSharedElementsOptimized(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$epicenter:Landroid/graphics/Rect;

.field final synthetic val$epicenterView:Landroid/view/View;

.field final synthetic val$inFragment:Landroid/support/v4/app/Fragment;

.field final synthetic val$inIsPop:Z

.field final synthetic val$inSharedElements:Landroid/support/v4/util/ArrayMap;

.field final synthetic val$outFragment:Landroid/support/v4/app/Fragment;

.field final synthetic val$sceneRoot:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Landroid/support/v4/app/FragmentTransition$3;->val$sceneRoot:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroid/support/v4/app/FragmentTransition$3;->val$inFragment:Landroid/support/v4/app/Fragment;

    iput-object p3, p0, Landroid/support/v4/app/FragmentTransition$3;->val$outFragment:Landroid/support/v4/app/Fragment;

    iput-boolean p4, p0, Landroid/support/v4/app/FragmentTransition$3;->val$inIsPop:Z

    iput-object p5, p0, Landroid/support/v4/app/FragmentTransition$3;->val$inSharedElements:Landroid/support/v4/util/ArrayMap;

    iput-object p6, p0, Landroid/support/v4/app/FragmentTransition$3;->val$epicenterView:Landroid/view/View;

    iput-object p7, p0, Landroid/support/v4/app/FragmentTransition$3;->val$epicenter:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .prologue
    .line 526
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransition$3;->val$sceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 527
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransition$3;->val$inFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Landroid/support/v4/app/FragmentTransition$3;->val$outFragment:Landroid/support/v4/app/Fragment;

    iget-boolean v2, p0, Landroid/support/v4/app/FragmentTransition$3;->val$inIsPop:Z

    iget-object v3, p0, Landroid/support/v4/app/FragmentTransition$3;->val$inSharedElements:Landroid/support/v4/util/ArrayMap;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransition;->access$200(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;Z)V

    .line 529
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransition$3;->val$epicenterView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransition$3;->val$epicenterView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/FragmentTransition$3;->val$epicenter:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 532
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
