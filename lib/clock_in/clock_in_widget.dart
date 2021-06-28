import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClockInWidget extends StatefulWidget {
  ClockInWidget({Key key}) : super(key: key);

  @override
  _ClockInWidgetState createState() => _ClockInWidgetState();
}

class _ClockInWidgetState extends State<ClockInWidget> {
  bool checkboxListTileValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: CheckboxListTile(
          value: checkboxListTileValue ?? true,
          onChanged: (newValue) =>
              setState(() => checkboxListTileValue = newValue),
          title: Text(
            'Title',
            style: FlutterFlowTheme.title3.override(
              fontFamily: 'Poppins',
            ),
          ),
          subtitle: Text(
            'Subtitle',
            style: FlutterFlowTheme.subtitle2.override(
              fontFamily: 'Poppins',
            ),
          ),
          tileColor: Color(0xFFF5F5F5),
          dense: false,
          controlAffinity: ListTileControlAffinity.trailing,
        ),
      ),
    );
  }
}
