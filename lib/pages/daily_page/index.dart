// daily_screen.dart
import 'package:dumbell/pages/daily_page/setting_page.dart';
import 'package:flutter/material.dart';

class DailyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:
      //  AppBar(

      //   title: Text('Daily'),
      // ),
      appBar: AppBar(
        title: Text(
          'DAILY',
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings), // Icon nút
            onPressed: () {
              // Xử lý sự kiện khi nút được nhấn
              // Ví dụ: điều hướng đến màn hình cài đặt
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingScreen()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Text('This is the Daily Screen'),
      ),
    );
  }
}
