import 'package:device_preview/device_preview.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/app.dart';
import 'package:flutter_template/firebase_options._developent.dart';
import 'package:flutter_template/utils/consts/colors.dart';
import 'package:flutter_template/utils/device/device_utility.dart';

void main() async {
  // Todo: Add Widget Binding
  WidgetsFlutterBinding.ensureInitialized();
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // Todo: Add Device Utilities
  // Safe area color
  await MyDeviceUtils.setStatusBarColor(color: MyColors.primary);
  // Set device orientation
  await MyDeviceUtils.setPreferredOrientation(orientations: [
    DeviceOrientation.portraitUp,
  ]);

  // Todo: Initialize Local Storage

  // Todo: Await Nativesplash --- Delete if no longer needed
  // Ensure the splash screen is shown after the first frame has drawn for the first time.
  // Preserve until the app init then remove
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Todo: Initialize Firebase --- Delete if no longer needed
  await Firebase.initializeApp(
    options: FirebaseOptionsDevelopment.currentPlatform,
  ).then((FirebaseApp value) => ());

  // Todo: Initialize Firebase Crashlytics
  FlutterError.onError = (errorDetails) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  // Todo: Ininitialize Firebase AppCheck --- Delete if no longer needed
  await FirebaseAppCheck.instance.activate(
    appleProvider: AppleProvider.appAttestWithDeviceCheckFallback,
    androidProvider: AndroidProvider.playIntegrity,
    webProvider: ReCaptchaV3Provider('recaptcha-v3-site-key'),
  );

  // Todo: Initialize dotenv
  await dotenv.load(fileName: ".env.development");

  // Todo: Riverpod Provider Scope --- Remove it if riverpod isn't use
  runApp(
    ProviderScope(
      child: DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const MyApp(flavor: "Development"),
      ),
    ),
  );

  // Todo: Remove Nativesplash --- Delete if no longer needed
  // whenever your initialization is completed, remove the splash screen:
  // FlutterNativeSplash.remove();
}
