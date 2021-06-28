import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../plan/plan_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  DateTime datePicked = DateTime.now();
  DateTimeRange calendarSelectedDay;
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF009688),
        automaticallyImplyLeading: false,
        title: Align(
          alignment: Alignment(-0.05, 0),
          child: AutoSizeText(
            'Time Manager',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.title1.override(
              fontFamily: 'Poppins',
              color: Colors.yellow,
            ),
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PlanWidget(),
            ),
          );
        },
        backgroundColor: Color(0xFF26A69A),
        icon: Icon(
          Icons.add,
          color: Colors.yellow,
        ),
        elevation: 8,
        label: Text(
          'Plan',
          style: FlutterFlowTheme.title3.override(
            fontFamily: 'Poppins',
            color: Colors.yellow,
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment(0, -1),
              child: FlutterFlowCalendar(
                color: Color(0xFF26A69A),
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
                selectedDateStyle: GoogleFonts.getFont(
                  'Lato',
                  color: Colors.yellow,
                ),
                inactiveDateStyle: TextStyle(),
              ),
            ),
            Align(
              alignment: Alignment(0, 0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 350, 0, 0),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlanWidget(),
                      ),
                    );
                    await DatePicker.showDatePicker(context,
                        showTitleActions: true, onConfirm: (date) {
                      setState(() => datePicked = date);
                    }, currentTime: DateTime.now());
                  },
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    children: [],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
