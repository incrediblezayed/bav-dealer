import 'package:flutter/material.dart';

class RejectionPage extends StatefulWidget {
  const RejectionPage({super.key});

  @override
  _RejectionPageState createState() => _RejectionPageState();
}

class _RejectionPageState extends State<RejectionPage> {
  String selectedReason = '';
  String customReason = '';

  List<String> predefinedReasons = ['Reason 1', 'Reason 2', 'Reason 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rejection Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DropdownButtonFormField<String>(
              value: selectedReason,
              items: predefinedReasons
                  .map(
                    (reason) => DropdownMenuItem<String>(
                      value: reason,
                      child: Text(reason),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedReason = value!;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Select Reason',
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              onChanged: (value) {
                setState(() {
                  customReason = value;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Write in Details (Optional)',
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, {
                  'selectedReason': selectedReason,
                  'customReason': customReason,
                });
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
