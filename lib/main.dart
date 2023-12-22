import 'package:FaceApp/utils/face_camera.dart';
import 'package:FaceApp/Values/values.dart';
import 'package:FaceApp/providers/auth_provider.dart';
import 'package:FaceApp/providers/employee_provider.dart';
import 'package:FaceApp/splash_screen.dart';
import 'package:FaceApp/utils/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:provider/provider.dart';
import 'locator.dart' as ltr;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FaceCamera.initialize();
  await ltr.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ltr.loc<LoginProvider>()),
        ChangeNotifierProvider(
            create: (context) => ltr.loc<EmployeeProvider>()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return OverlaySupport.global(
      child: MaterialApp(
        color: AppColors.primaryDarkColor,
        navigatorKey: NavigationService.navigatorKey,
        debugShowCheckedModeBanner: false,
        title: 'Coremetal Faceapp',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const SplashScreen(),
      ),
    );
  }
}
