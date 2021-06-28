import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecordListWidget extends StatefulWidget {
  RecordListWidget({
    Key key,
    this.planList,
  }) : super(key: key);

  final DateTimeRange planList;

  @override
  _RecordListWidgetState createState() => _RecordListWidgetState();
}

class _RecordListWidgetState extends State<RecordListWidget> {
  DateTimeRange calendarSelectedDay;

  @override
  void initState() {
    super.initState();
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowCalendar(
      color: FlutterFlowTheme.primaryColor,
      weekFormat: false,
      weekStartsMonday: false,
      onChange: (DateTimeRange newSelectedDate) {
        setState(() => calendarSelectedDay = newSelectedDate);
      },
      titleStyle: TextStyle(),
      dayOfWeekStyle: FlutterFlowTheme.title3.override(
        fontFamily: 'Poppins',
      ),
      dateStyle: TextStyle(),
      selectedDateStyle: TextStyle(),
      inactiveDateStyle: TextStyle(),
    );
  }
}
