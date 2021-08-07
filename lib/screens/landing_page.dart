import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shop_a_lot/constants.dart';
import 'package:shop_a_lot/screens/home_page.dart';
import 'package:shop_a_lot/screens/login_page.dart';

class LandingPage extends StatelessWidget {
  // ignore: unused_field
  final Future<FirebaseApp> _initialisation = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      builder: (context, streamSnapshot) {
        stream:
        FirebaseAuth.instance.authStateChanges();
        Object? _user =
            streamSnapshot.data; // If the user is null, we're not logged in
        if (_user == null) {
          // user not logged in, head to login
          return LoginPage();
        } else {
          // The user is logged in, head to homepage
          return HomePage();
        }

        // If Firebase App init, snapshot has error
//         if (snapshot.hasError) {
//           return Scaffold(
//             body: Center(
//               child: Text('Error: ${snapshot.error}'),
//             ),
//           );
//         }

//         // Connection Initialized - Firebase App is running
//         if (snapshot.connectionState == ConnectionState.done) {
//           // StreamBuilder can check the login state live
//           return StreamBuilder(
//             stream: FirebaseAuth.instance.authStateChanges(),
//             builder: (context, streamSnapshot) {
//               // If Stream Snapshot has error
//               if (streamSnapshot.hasError) {
//                 return Scaffold(
//                   body: Center(
//                     child: Text("Error: ${streamSnapshot.error}"),
//                   ),
//                 );
//               }

//               // Connection state active - Do the user login check inside the
//               // if statement
//               if (streamSnapshot.connectionState == ConnectionState.active) {
//                 // Get the user
//

// ///////////////////////////////////
//               }

//               // Checking the auth state - Loading
//               return Scaffold(
//                 body: Center(
//                   child: Text(
//                     "Checking Authentication...",
//                     style: Constants.regularHeading,
//                   ),
//                 ),
//               );
//             },
//           );
//         }

        // Connecting to Firebase - Loading
        // return Scaffold(
        //   body: Center(
        //     child: Text(
        //       "Initializing App...",
        //       style: Constants.regularHeading,
        //     ),
        //   ),
        // );
      },
    );
  }
}
