.class Lcom/wm65/launcher/SettingsActivity$8;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/SettingsActivity;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/wm65/launcher/SettingsActivity$8;->this$0:Lcom/wm65/launcher/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 204
    iget-object p1, p0, Lcom/wm65/launcher/SettingsActivity$8;->this$0:Lcom/wm65/launcher/SettingsActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wm65/launcher/SettingsActivity$8;->this$0:Lcom/wm65/launcher/SettingsActivity;

    const-class v2, Lcom/wm65/launcher/AppPickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x5a

    invoke-virtual {p1, v0, v1}, Lcom/wm65/launcher/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 206
    iget-object p1, p0, Lcom/wm65/launcher/SettingsActivity$8;->this$0:Lcom/wm65/launcher/SettingsActivity;

    invoke-static {p1}, Lcom/wm65/launcher/Ui;->fade(Landroid/app/Activity;)V

    return-void
.end method
