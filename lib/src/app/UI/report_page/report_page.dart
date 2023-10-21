import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/k_bottom_bar_button.dart';
import 'package:dealerapp/src/widgets/k_textfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReportPage extends StatefulWidget {
  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  String? _selectedReason; // Variable to store the selected reason

  List<String> _reasons = [
    'Reason 1',
    'Reason 2',
    'Reason 3',
    'Reason 4',
    'Other',
  ]; // List of reporting reasons

  TextEditingController description = TextEditingController();
  TextEditingController reasonForReporting = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text('Report Page'),
        elevation: .3,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
        child: Column(
          children: <Widget>[
            DropdownButtonFormField<String>(
              value: _selectedReason,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedReason = newValue;
                });
              },
              items: _reasons.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              decoration: InputDecoration(
                // labelText: 'Choose Reason',
                hintText: "Choose Reason",
                counterText: '',
                fillColor: AppTheme.white,
                suffixIconColor: Colors.black.withOpacity(.2),
                labelStyle: theme.headlineMedium,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black.withOpacity(.2)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black.withOpacity(.2)),
                ),
                hintStyle: TextStyle(color: Colors.black.withOpacity(.2)),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black.withOpacity(.2)),
                ),
              ),
            ),
            SizedBox(height: 16.h),
            TextField(
              controller: reasonForReporting,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black.withOpacity(.2))),
                  fillColor: Colors.white,
                  hintText: 'Write a description',
                  hintStyle: TextStyle(color: Colors.black.withOpacity(.2))),
            ),
            SizedBox(height: 16.h),
            Stack(
              alignment: Alignment.topRight,
              children: [
                KTextField(
                  controller: reasonForReporting,
                  hintText: "Write a reason for reporting",
                  maxLines: 8,
                ),
                TextField(
                  controller: reasonForReporting,
                  maxLines: 8,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(.2))),
                      fillColor: Colors.white,
                      hintText: 'Write a reason for reporting',
                      hintStyle:
                          TextStyle(color: Colors.black.withOpacity(.2))),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: IconButton(
                    icon: SvgPicture.asset(AppImages.attach),
                    onPressed: () {
                      // Implement attachment functionality here...
                      // For example, show a file picker to choose an attachment
                      print('Attachment button pressed');
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            KBottomBarButton(
                text: 'Submit',
                onTap: () {
                  if (_selectedReason != null) {
                    // Perform actions based on the selected reason
                    // For example, submit the report with the selected reason
                    print('Report submitted with reason: $_selectedReason');
                  } else {
                    // Handle case when no reason is selected
                    print('Please select a reason for reporting.');
                  }
                }),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: ReportPage()));
