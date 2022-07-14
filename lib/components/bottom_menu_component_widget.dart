import '../components/bottom_nav_user_photo_component_widget.dart';
import '../entry_screen/entry_screen_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../home_screen/home_screen_widget.dart';
import '../profile_screen/profile_screen_widget.dart';
import '../register_screen/register_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomMenuComponentWidget extends StatefulWidget {
  const BottomMenuComponentWidget({Key key}) : super(key: key);

  @override
  _BottomMenuComponentWidgetState createState() =>
      _BottomMenuComponentWidgetState();
}

class _BottomMenuComponentWidgetState extends State<BottomMenuComponentWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0x00EEEEEE),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterScreenWidget(),
                  ),
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.person_add_sharp,
                    color: Colors.black,
                    size: 24,
                  ),
                  Text(
                    'Register',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EntryScreenWidget(),
                  ),
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.login_sharp,
                    color: Colors.black,
                    size: 24,
                  ),
                  Text(
                    'Login',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreenWidget(),
                  ),
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.home_sharp,
                    color: Colors.black,
                    size: 24,
                  ),
                  Text(
                    'Home',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreenWidget(),
                  ),
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  BottomNavUserPhotoComponentWidget(),
                  Text(
                    'Profile',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.mode_comment,
                  color: Colors.black,
                  size: 24,
                ),
                Text(
                  'Forum',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.people,
                  color: Colors.black,
                  size: 24,
                ),
                Text(
                  'Friends',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
