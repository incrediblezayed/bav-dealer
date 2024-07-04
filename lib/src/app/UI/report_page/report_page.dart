import 'dart:io';

import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/repository/report/graphql/__generated__/report.data.gql.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/k_bottom_bar_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class ReportPage extends ConsumerWidget {
  const ReportPage({required this.isFeedback, super.key});
  final bool isFeedback;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context).textTheme;
    final reportPro = ref.watch(reportProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('${isFeedback ? 'Feedback' : 'Report'} Page'),
        elevation: .3,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
          child: Column(
            children: <Widget>[
              DropdownButtonFormField<GCategoriesData_categories>(
                value: reportPro.selectedCategory,
                onChanged: (GCategoriesData_categories? newValue) {
                  reportPro.selectedCategory = newValue;
                },
                items: reportPro.categories
                    .map<DropdownMenuItem<GCategoriesData_categories>>(
                        (GCategoriesData_categories value) {
                  return DropdownMenuItem<GCategoriesData_categories>(
                    value: value,
                    child: Text(value.name!),
                  );
                }).toList(),
                decoration: InputDecoration(
                  // labelText: 'Choose Reason',
                  hintText: 'Choose Reason',
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
                controller: reportPro.title,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black.withOpacity(.2)),
                  ),
                  fillColor: Colors.white,
                  hintText: 'Title',
                  hintStyle: TextStyle(color: Colors.black.withOpacity(.2)),
                ),
              ),
              SizedBox(height: 16.h),
              Stack(
                children: [
                  TextField(
                    controller: reportPro.description,
                    maxLines: 8,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black.withOpacity(.2),
                        ),
                      ),
                      fillColor: Colors.white,
                      hintText: isFeedback
                          ? 'Write you detailed feedback'
                          : 'Write a reason for reporting',
                      hintStyle: TextStyle(color: Colors.black.withOpacity(.2)),
                    ),
                  ),
                  Positioned(
                    right: 8,
                    top: 8,
                    child: IconButton(
                      icon: SvgPicture.asset(AppImages.attach),
                      onPressed: () {
                        reportPro.pickImage();
                      },
                    ),
                  ),
                ],
              ),
              if (reportPro.attachments.isNotEmpty) ...[
                const SizedBox(
                  height: 12,
                ),
                GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  shrinkWrap: true,
                  children: reportPro.attachments
                      .map(
                        (e) => LayoutBuilder(
                          builder: (context, constraints) {
                            return Stack(
                              children: [
                                Image.file(
                                  File(e),
                                  fit: BoxFit.cover,
                                  width: constraints.maxWidth,
                                  height: constraints.maxHeight,
                                ),
                                Positioned(
                                  right: 0,
                                  top: 0,
                                  child: IconButton(
                                    icon: const Icon(Icons.close),
                                    onPressed: () {
                                      reportPro.removeAttachment(e);
                                    },
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      )
                      .toList(),
                ),
              ],
              SizedBox(height: 20.h),
              KBottomBarButton(
                text: 'Submit',
                onTap: () {
                  if (isFeedback) {
                    reportPro.createFeedback();
                  } else {
                    reportPro.createReport();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
