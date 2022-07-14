import '../auth/auth_util.dart';
import '../auth/firebase_user_provider.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavUserPhotoComponentWidget extends StatefulWidget {
  const BottomNavUserPhotoComponentWidget({Key key}) : super(key: key);

  @override
  _BottomNavUserPhotoComponentWidgetState createState() =>
      _BottomNavUserPhotoComponentWidgetState();
}

class _BottomNavUserPhotoComponentWidgetState
    extends State<BottomNavUserPhotoComponentWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        if (loggedIn ?? true)
          StreamBuilder<UsersRecord>(
            stream: UsersRecord.getDocument(currentUserReference),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: CircularProgressIndicator(
                      color: FlutterFlowTheme.of(context).primaryColor,
                    ),
                  ),
                );
              }
              final containerUsersRecord = snapshot.data;
              return Container(
                decoration: BoxDecoration(
                  color: Color(0x00EEEEEE),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (!(valueOrDefault(
                            currentUserDocument?.hasPhotoUrl, false)) ??
                        true)
                      AuthUserStreamWidget(
                        child: Icon(
                          Icons.person_sharp,
                          color: Colors.black,
                          size: 24,
                        ),
                      ),
                    if (containerUsersRecord.hasPhotoUrl ?? true)
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Color(0x00F5F5F5),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(26),
                            ),
                            child: Image.network(
                              containerUsersRecord.photoUrl,
                              width: 22,
                              height: 22,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              );
            },
          ),
        if (!(loggedIn) ?? true)
          Icon(
            Icons.person_sharp,
            color: Colors.black,
            size: 24,
          ),
      ],
    );
  }
}
