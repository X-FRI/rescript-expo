<div align="center">

<img src="./.github/logo.png" height="150">

rescript-expo

*try to provide accurate [expo](https://expo.dev/) binding for [rescript](https://rescript-lang.org)*

</div>

# Status

```json
"devDependencies": {
  "babel-preset-expo": "^8.1.0",
  "@babel/core": "~7.9.0",
  "rescript": "^11.0.1",
  "expo": "^50.0.0",
  "@rescript/react": "^0.12.0",
  "react-native": "^0.73.2",
  "rescript-react-native": "^0.72.0"
},
"bugs": "https://github.com/rescript-bindings/rescript-expo/issues",
"peerDependencies": {
  "@rescript/react": "^0.12.0",
  "expo": "~50.0.0",
  "react": "18.2.0",
  "react-dom": "18.2.0",
  "react-native": "^0.73.2",
  "react-native-web": "~0.19.10",
  "rescript-react-native": "^0.72.0"
}
```

> From expo sdk 50: https://docs.expo.dev/versions/latest/

- [x] [Accelerometer](./src/Accelerometer.res)
- [ ] [AppleAuthentication]()
- [ ] [Application]()
- [x] [Asset](./src/Asset.res)
- [ ] [AsyncStorage]()
- [x] [Audio](./src/Audio.res)
- [x] [AuthSession](./src/AuthSession.res)
- [ ] [AV]()
- [x] [BackgroundFetch](./src/BackgroundFetch.res)
- [x] [BarCodeScanner](./src/BarCodeScanner.res)
- [ ] [Barometer]()
- [ ] [Battery]()
- [x] [BlurView](./src/BlurView.res)
- [x] [Brightness](./src/Brightness.res)
- [ ] [BuildProperties]()
- [x] [Calendar](./src/Calendar.res)
- [ ] [Camera (Next)]()
- [x] [Camera](./src/Camera.res)
- [ ] [captureRef]()
- [ ] [Cellular]()
- [ ] [Checkbox]()
- [x] [Clipboard](./src/Clipboard.res)
- [x] [Constants](./src/Constants.res)
- [x] [Contacts](./src/Contacts.res)
- [x] [Crypto](./src/Crypto.res)
- [ ] [DateTimePicker]()
- [ ] [DevClient]()
- [ ] [Device]()
- [ ] [DeviceMotion]()
- [x] [DocumentPicker](./src/DocumentPicker.res)
- [x] [FaceDetector](./src/FaceDetector.res)
- [x] [FileSystem](./src/FileSystem.res)
- [ ] [FlashList]()
- [ ] [Font](./src/Font.res)
- [ ] [GestureHandler]()
- [x] [GLView](./src/GLView.res)
- [x] [Gyroscope](./src/Gyroscope.res)
- [x] [Haptics](./src/Haptics.res)
- [ ] [Image]()
- [x] [ImageManipulator](./src/ImageManipulator.res)
- [x] [ImagePicker](./src/ImagePicker.res)
- [x] [IntentLauncher](./src/IntentLauncher.res)
- [x] [KeepAwake](./src/KeepAwake.res)
- [ ] [LightSensor]()
- [x] [LinearGradient](./src/LinearGradient.res)
- [x] [Linking](./src/Linking.res)
- [x] [LocalAuthentication](./src/LocalAuthentication.res)
- [x] [Localization](./src/Localization.res)
- [x] [Location](./src/Location.res)
- [ ] [Lottie]()
- [x] [Magnetometer](./src/Magnetometer.res)
- [x] [MailComposer](./src/MailComposer.res)
- [ ] [Manifests]()
- [ ] [MapView]()
- [ ] [MaskedView]()
- [ ] [MediaLibrary]()
- [ ] [NavigationBar]()
- [ ] [NetInfo]()
- [ ] [Network]()
- [x] [Notifications](./src/Notifications.res)
- [x] [Pedometer](./src/Pedometer.res)
- [ ] [Picker]()
- [x] [Print](./src/Print.res)
- [ ] [Reanimated]()
- [ ] [registerRootComponent]()
- [ ] [SafeAreaContext]()
- [ ] [ScreenCapture]()
- [x] [ScreenOrientation](./src/ScreenOrientation.res)
- [ ] [Screens]()
- [x] [SecureStore](./src/SecureStore.res)
- [ ] [SegmentedControl]()
- [ ] [Sensors]()
- [x] [Sharing](./src/Sharing.res)
- [ ] [Skia]()
- [ ] [Slider]()
- [x] [SMS](./src/SMS.res)
- [x] [Speech](./src/Speech.res)
- [x] [SplashScreen](./src/SplashScreen.res)
- [ ] [SQLite (Next)]()
- [x] [SQLite](./src/SQLite.res)
- [x] [StatusBar](./src/StatusBar.res)
- [x] [StoreReview](./src/StoreReview.res)
- [ ] [Stripe]()
- [x] [Svg](./src/Svg.res)
- [ ] [SystemUI]()
- [x] [TaskManager](./src/TaskManager.res)
- [ ] [TrackingTransparency]()
- [x] [Updates](./src/Updates.res)
- [ ] [URL]()
- [x] [VideoThumbnails](./src/VideoThumbnails.res)
- [x] [Video](./src/Video.res)
- [ ] [ViewPager]()
- [x] [WebBrowser](./src/WebBrowser.res)
- [ ] [WebView]()

# Docs

__The source code comments of this project are synchronized with expo official documents.__

# LICENSE

MIT License

Copyright (c) 2018 rescript-expo

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.