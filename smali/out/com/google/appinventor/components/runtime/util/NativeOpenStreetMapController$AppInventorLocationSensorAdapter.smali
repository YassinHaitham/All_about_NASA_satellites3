.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;
.super Ljava/lang/Object;
.source "NativeOpenStreetMapController.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;
.implements Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppInventorLocationSensorAdapter"
.end annotation


# instance fields
.field private consumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

.field private enabled:Z

.field private lastLocation:Landroid/location/Location;

.field private source:Lcom/google/appinventor/components/runtime/LocationSensor;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->enabled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$1;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .prologue
    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->consumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    .line 208
    return-void
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->lastLocation:Landroid/location/Location;

    return-object v0
.end method

.method public onDistanceIntervalChanged(I)V
    .registers 2
    .param p1, "distance"    # I

    .prologue
    .line 160
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->lastLocation:Landroid/location/Location;

    .line 165
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->consumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    if-eqz v0, :cond_b

    .line 166
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->consumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    invoke-interface {v0, p1, p0}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;->onLocationChanged(Landroid/location/Location;Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V

    .line 168
    :cond_b
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 180
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 176
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 172
    return-void
.end method

.method public onTimeIntervalChanged(I)V
    .registers 2
    .param p1, "time"    # I

    .prologue
    .line 156
    return-void
.end method

.method public setSource(Lcom/google/appinventor/components/runtime/LocationSensor;)V
    .registers 4
    .param p1, "source"    # Lcom/google/appinventor/components/runtime/LocationSensor;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-ne v0, p1, :cond_5

    .line 152
    :cond_4
    :goto_4
    return-void

    .line 145
    :cond_5
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-eqz v0, :cond_f

    .line 146
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    .line 148
    :cond_f
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-eqz v0, :cond_4

    .line 150
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->enabled:Z

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    goto :goto_4
.end method

.method public startLocationProvider(Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;)Z
    .registers 4
    .param p1, "consumer"    # Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    .prologue
    const/4 v1, 0x1

    .line 184
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->consumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    .line 185
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-eqz v0, :cond_e

    .line 186
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    .line 187
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->enabled:Z

    .line 189
    :cond_e
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->enabled:Z

    return v0
.end method

.method public stopLocationProvider()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 194
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-eqz v0, :cond_a

    .line 195
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    .line 197
    :cond_a
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->enabled:Z

    .line 198
    return-void
.end method
