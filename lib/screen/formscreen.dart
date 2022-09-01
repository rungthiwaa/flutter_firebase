import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("แบบฟอร์มบันทึกคะแนนสอบ"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ชื่อ",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "นามสกุล",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "อีเมล",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "คะแนน",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text(
                      "บันทึกข้อมูล",
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
