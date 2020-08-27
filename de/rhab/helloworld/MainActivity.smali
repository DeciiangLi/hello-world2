.class public Lde/rhab/helloworld/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v2, 0x7f04001b

    invoke-virtual {p0, v2}, Lde/rhab/helloworld/MainActivity;->setContentView(I)V

    .line 18
    const v2, 0x7f0d0073

    invoke-virtual {p0, v2}, Lde/rhab/helloworld/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    .line 19
    .local v1, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v1}, Lde/rhab/helloworld/MainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 21
    const v2, 0x7f0d0074

    invoke-virtual {p0, v2}, Lde/rhab/helloworld/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    .line 22
    .local v0, "fab":Landroid/support/design/widget/FloatingActionButton;
    new-instance v2, Lde/rhab/helloworld/MainActivity$1;

    invoke-direct {v2, p0}, Lde/rhab/helloworld/MainActivity$1;-><init>(Lde/rhab/helloworld/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 34
    invoke-virtual {p0}, Lde/rhab/helloworld/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 43
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 46
    .local v0, "id":I
    const v1, 0x7f0d009b

    if-ne v0, v1, :cond_0

    .line 47
    const/4 v1, 0x1

    .line 50
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
