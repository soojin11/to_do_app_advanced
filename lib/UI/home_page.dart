import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todo_app/UI/add_task.dart';
import 'package:flutter_todo_app/UI/theme.dart';
import 'package:flutter_todo_app/services/notification.dart';
import 'package:flutter_todo_app/services/theme_services.dart';
import 'package:flutter_todo_app/widgets/button.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime _selectedDate = DateTime.now();
  var notifyHelper;
  @override
  void initState() {
    super.initState();
    notifyHelper = NotifyHelper();
    notifyHelper.initializeNotification();
    notifyHelper.requestIOSPermissions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          _addTaskBar(),
          _addDateBar(),
        ],
      ),
    );
  }

  _appBar() {
    return AppBar(
      elevation: 0,
      leading: GestureDetector(
        onTap: () {
          ThemeService().switchTheme();
          notifyHelper.displayNotification(
              title: "Theme Changed",
              body: Get.isDarkMode
                  ? "Activated Light Theme"
                  : "Activated Dark Theme");

          //notifyHelper.scheduledNotification();
        },
        child: Icon(
            Get.isDarkMode
                ? Icons.wb_sunny_outlined
                : Icons.nightlight_outlined,
            size: 30),
      ),
      actions: [
        CircleAvatar(backgroundImage: AssetImage('images/pic-3.png')),
        SizedBox(width: 20),
      ],
    );
  }

  _addTaskBar() {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(DateFormat.yMMMMd().format(DateTime.now()),
                    style: subHeadingStyle),
                Text(
                  "Today",
                  style: headingStyle,
                ),
              ],
            ),
          ),
          Mybutton(
              label: "+ ADD TASK", onTap: () => Get.to(() => AddTaskPage())),
        ],
      ),
    );
  }

  _addDateBar() {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 15, right: 15),
      child: DatePicker(
        DateTime.now(),
        height: 100,
        width: 80,
        initialSelectedDate: DateTime.now(),
        selectionColor: primaryClr,
        dayTextStyle: GoogleFonts.lato(
          textStyle: TextStyle(fontSize: 15),
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
        selectedTextColor: Colors.white,
        monthTextStyle: GoogleFonts.lato(
          textStyle: TextStyle(fontSize: 15),
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
        onDateChange: (date) {
          _selectedDate = date;
        },
        dateTextStyle: GoogleFonts.lato(
          textStyle: TextStyle(
              color: Colors.grey, fontSize: 23, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
