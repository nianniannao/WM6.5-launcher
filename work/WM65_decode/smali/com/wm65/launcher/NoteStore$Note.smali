.class public final Lcom/wm65/launcher/NoteStore$Note;
.super Ljava/lang/Object;
.source "NoteStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wm65/launcher/NoteStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Note"
.end annotation


# instance fields
.field public final id:J

.field public final tag:Ljava/lang/String;

.field public final text:Ljava/lang/String;

.field public final ts:J


# direct methods
.method constructor <init>(JLjava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide p1, p0, Lcom/wm65/launcher/NoteStore$Note;->id:J

    .line 55
    iput-object p3, p0, Lcom/wm65/launcher/NoteStore$Note;->text:Ljava/lang/String;

    if-nez p4, :cond_0

    .line 56
    const-string p4, ""

    :cond_0
    iput-object p4, p0, Lcom/wm65/launcher/NoteStore$Note;->tag:Ljava/lang/String;

    .line 57
    iput-wide p5, p0, Lcom/wm65/launcher/NoteStore$Note;->ts:J

    return-void
.end method
