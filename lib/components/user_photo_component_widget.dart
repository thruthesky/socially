import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserPhotoComponentWidget extends StatefulWidget {
  const UserPhotoComponentWidget({
    Key key,
    this.userDocumentReference,
  }) : super(key: key);

  final DocumentReference userDocumentReference;

  @override
  _UserPhotoComponentWidgetState createState() =>
      _UserPhotoComponentWidgetState();
}

class _UserPhotoComponentWidgetState extends State<UserPhotoComponentWidget> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UsersRecord>(
      stream: UsersRecord.getDocument(widget.userDocumentReference),
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
          width: 62,
          height: 62,
          decoration: BoxDecoration(
            color: Color(0x00EEEEEE),
          ),
          child: Stack(
            children: [
              if (containerUsersRecord.hasPhotoUrl ?? true)
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(256),
                    ),
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        containerUsersRecord.photoUrl,
                      ),
                    ),
                  ),
                ),
              if (!(containerUsersRecord.hasPhotoUrl) ?? true)
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/images/anonymous.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
