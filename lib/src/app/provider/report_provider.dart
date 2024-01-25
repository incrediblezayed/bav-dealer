import 'dart:async';

import 'package:dealerapp/src/app/repository/report/graphql/__generated__/report.data.gql.dart';
import 'package:dealerapp/src/app/repository/report/report.repository.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:image_picker/image_picker.dart';

class ReportProvider extends ChangeNotifier {
  final ReportRepository _reportRepository = ReportRepository();

  List<GCategoriesData_categories> _categories = [];
  List<GCategoriesData_categories> get categories => _categories;
  set categories(List<GCategoriesData_categories> categories) {
    _categories = categories;
    notifyListeners();
  }

  GCategoriesData_categories? _selectedCategory;
  GCategoriesData_categories? get selectedCategory => _selectedCategory;
  set selectedCategory(GCategoriesData_categories? selectedCategory) {
    _selectedCategory = selectedCategory;
    notifyListeners();
  }

  TextEditingController title = TextEditingController();
  TextEditingController description = TextEditingController();

  List<String> _attachments = [];
  List<String> get attachments => _attachments;
  set attachments(List<String> attachments) {
    _attachments = attachments;
    notifyListeners();
  }

  void addAttachment(String attachment) {
    _attachments.add(attachment);
    notifyListeners();
  }

  void removeAttachment(String attachment) {
    _attachments.remove(attachment);
    notifyListeners();
  }

  void clear() {
    _selectedCategory = null;
    title.clear();
    description.clear();
    _attachments = [];
    notifyListeners();
  }

  Future<void> getCategories() async {
    final categories = await _reportRepository.getCategories();
    _categories = categories;
    notifyListeners();
  }

  ImagePicker picker = ImagePicker();

  Future<void> pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      addAttachment(pickedFile.path);
    }
  }

  Future<void> createReport() async {
    if (_selectedCategory == null) {
      await AppRoutes.showErrorSnackbar(message: 'Please select a category');
    } else if (title.text.isEmpty) {
      await AppRoutes.showErrorSnackbar(message: 'Please enter a title');
    } else if (description.text.isEmpty) {
      await AppRoutes.showErrorSnackbar(message: 'Please enter a description');
    } else {
      unawaited(AppRoutes.showLoadingDialog());

      final response = await _reportRepository.createReport(
        title: title.text,
        description: description.text,
        categoryId: _selectedCategory!.id,
        attachments: attachments,
      );
      AppRoutes.pop();
      if (response) {
        await AppRoutes.showSuccessSnackbar(
          message: 'Feedback submitted successfully',
        );
        clear();
      } else {
        await AppRoutes.showErrorSnackbar(message: 'Something went wrong');
      }
    }
  }

  Future<void> createFeedback() async {
    if (_selectedCategory == null) {
      await AppRoutes.showErrorSnackbar(message: 'Please select a category');
    } else if (title.text.isEmpty) {
      await AppRoutes.showErrorSnackbar(message: 'Please enter a title');
    } else if (description.text.isEmpty) {
      await AppRoutes.showErrorSnackbar(message: 'Please enter a description');
    } else {
      unawaited(AppRoutes.showLoadingDialog());

      final response = await _reportRepository.createFeedback(
        title: title.text,
        description: description.text,
        categoryId: _selectedCategory!.id,
        attachments: attachments,
      );
      AppRoutes.pop();
      if (response) {
        await AppRoutes.showSuccessSnackbar(
          message: 'Feedback submitted successfully',
        );
        clear();
      } else {
        await AppRoutes.showErrorSnackbar(message: 'Something went wrong');
      }
    }
  }
}
