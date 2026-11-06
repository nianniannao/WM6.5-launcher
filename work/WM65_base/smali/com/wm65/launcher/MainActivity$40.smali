.class Lcom/wm65/launcher/MainActivity$40;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/MainActivity;->maybePromptDefaultHome()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/MainActivity;

.field final synthetic val$rm:Landroid/app/role/RoleManager;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/MainActivity;Landroid/app/role/RoleManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2539
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$40;->this$0:Lcom/wm65/launcher/MainActivity;

    iput-object p2, p0, Lcom/wm65/launcher/MainActivity$40;->val$rm:Landroid/app/role/RoleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 2543
    :try_start_0
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$40;->this$0:Lcom/wm65/launcher/MainActivity;

    iget-object p2, p0, Lcom/wm65/launcher/MainActivity$40;->val$rm:Landroid/app/role/RoleManager;

    const-string v0, "android.app.role.HOME"

    invoke-virtual {p2, v0}, Landroid/app/role/RoleManager;->createRequestRoleIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const/16 v0, 0x5c

    invoke-virtual {p1, p2, v0}, Lcom/wm65/launcher/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
