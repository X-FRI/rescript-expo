/** Accelerometer from expo-sensors provides access to the device accelerometer sensor(s) 
  * and associated listeners to respond to changes in acceleration in three-dimensional space, 
  * meaning any movement or vibration. */
/** remove: A method to unsubscribe the listener. */
type subscription

external subscription: (~remove: unit => unit) => subscription = "Subscription"

/** Each of these keys represents the acceleration along that particular axis in g-force (measured in gs).
  * A g is a unit of gravitational force equal to that exerted by the earth’s gravitational field (9.81 m/s^2).
  *
  * x: Value of gs device reported in X axis.
  * y: Value of gs device reported in Y axis.
  * z: Value of gs device reported in Z axis.
  */
type accelerometerMeasurement
external accelerometerMeasurement: (~x: int, ~y: int, ~z: int) => accelerometerMeasurement =
  "AccelerometerMeasurement"

/** Permission expiration time. Currently, all permissions are granted permanently. */
@unboxed
type rec permissionExpiration =
  | @as("never") Never
  | Number(float)

/** DENIED: User has denied the permission.
  * GRANTED: User has granted the permission.
  * UNDETERMINED: User hasn't granted or denied the permission yet.
  */
type permissionStatus =
  | @as("DENIED") DENIED
  | @as("GRANTED") GRANTED
  | @as("UNDETERMINED") UNDETERMINED

/** An object obtained by permissions get and request functions.
  *
  * canAskAgain: Indicates if user can be asked again for specific permission.
  *              If not, one should be directed to the Settings app in order to enable/disable the permission.
  * expires: Determines time when the permission expires.
  * granted: A convenience boolean that indicates if the permission is granted.
  * status: Determines the status of the permission.
  */
type permissionResponse
external permissionResponse: (
  ~canAskAgain: bool,
  ~expires: permissionExpiration=?,
  ~granted: bool,
  ~status: permissionStatus,
) => permissionResponse = "PermissionResponse"

/** Subscribe for updates to the accelerometer.
  *
  * listener: A callback that is invoked when an accelerometer update is available. 
  *           When invoked, the listener is provided a single argument that is an AccelerometerMeasurement object.
  */
@module("expo-sensors")
@scope("Accelerometer")
external addListener: (accelerometerMeasurement => unit) => subscription = "addListener"

/** Returns the registered listeners count. */
@module("expo-sensors")
@scope("Accelerometer")
external getListenerCount: unit => int = "getListenerCount"

/** Checks user's permissions for accessing sensor. */
@module("expo-sensors")
@scope("Accelerometer")
external getPermissionAsync: unit => promise<permissionResponse> = "getPermissionAsync"

/** Returns boolean which signifies if sensor has any listeners registered. */
@module("expo-sensors")
@scope("Accelerometer")
external hasListeners: unit => bool = "hasListeners"

/** ! You should always check the sensor availability before attempting to use it.
  *
  * Returns whether the accelerometer is enabled on the device.
  * On mobile web, you must first invoke Accelerometer.requestPermissionsAsync() in a user interaction 
  * (i.e. touch event) before you can use this module.
  * If the status is not equal to granted then you should inform the end user that they may have to open settings.
  * On web this starts a timer and waits to see if an event is fired.
  * This should predict if the iOS device has the device orientation API disabled in Settings > Safari > Motion & Orientation Access.
  * Some devices will also not fire if the site isn't hosted with HTTPS as DeviceMotion is now considered a secure API.
  * There is no formal API for detecting the status of DeviceMotion so this API can sometimes be unreliable on web.
  */
@module("expo-sensors")
@scope("Accelerometer")
external isAvailableAsync: unit => promise<bool> = "isAvailableAsync"

/** Removes all registered listeners. */
@module("expo-sensors")
@scope("Accelerometer")
external removeAllListeners: unit => unit = "removeAllListeners"

/** Removes the given subscription. */
@module("expo-sensors")
@scope("Accelerometer")
external removeSubscription: subscription => unit = "removeSubscription"

/** Asks the user to grant permissions for accessing sensor. */
@module("expo-sensors")
@scope("Accelerometer")
external requestPermissionsAsync: unit => promise<permissionResponse> = "requestPermissionsAsync"

/** Desired interval in milliseconds between sensor updates.
  * Starting from Android 12 (API level 31), the system has a 200ms limit for each sensor updates.
  * If you need an update interval less than 200ms, you should:
  *  - add android.permission.HIGH_SAMPLING_RATE_SENSORS to app.json permissions field
  *  - or if you are using bare workflow, add <uses-permission android:name="android.permission.HIGH_SAMPLING_RATE_SENSORS"/> to AndroidManifest.xml.
  */
@module("expo-sensors")
@scope("Accelerometer")
external setUpdateInterval: int => unit = "setUpdateInterval"
