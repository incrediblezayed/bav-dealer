/* import 'dart:async';
import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:com/src/app/providers/app_providers.dart';
import 'package:com/src/app/repository/wallet/graphql/__generated__/wallet.data.gql.dart';
import 'package:com/src/app/repository/wallet/wallet.repository.dart';
import 'package:com/src/utils/extenstions.dart';
import 'package:com/src/utils/index.dart';
import 'package:dealerapp/src/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

///Provider for Wallet
class WalletProvider extends ChangeNotifier {
  final WalletRepository _walletRepository = WalletRepository();

  ///Text Editing Controller for Amount
  TextEditingController amountController = TextEditingController();

  List<GWalletTransactionsData_walletTransactions> _history = [];

  ///Wallet History List
  List<GWalletTransactionsData_walletTransactions> get history => _history;
  set history(List<GWalletTransactionsData_walletTransactions> value) {
    _history = value;
    notifyListeners();
  }

  final Razorpay _razorpay = Razorpay();

  bool _loading = false;

  ///Getter for loading
  bool get loading => _loading;
  set loading(bool value) {
    _loading = value;
    notifyListeners();
  }

  ///Wallet instance
  GWalletData_user? wallet;

  String _razorpayOrderId = '';

  ///Initializes the provider
  ///Gets the wallet
  ///Adds listeners for razorpay events
  Future<void> onInit() async {
    _razorpay
      ..on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess)
      ..on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    await getWallet();
    await getWalletHistory();
    loading = false;
  }

  Future<void> _handlePaymentSuccess(PaymentSuccessResponse response) async {
    await verifyPayment(
      razorpayOrderId: _razorpayOrderId,
      razorpayPaymentId: response.paymentId!,
    );
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    log(response.message ?? '');
    AppRoutes.showErrorSnackbar(message: 'Payment failed');
    loading = false;
  }

  ///Gets the wallet
  Future<GWalletData_user?> getWallet({bool isInit = false}) async {
    loading = true;
    try {
      final res = await _walletRepository.getWallet();
      if (res == null) {
        AppRoutes.showErrorSnackbar(message: 'Error getting wallet');
        return null;
      }
      wallet = res;
      notifyListeners();
      return res;
    } catch (e) {
      return null;
    } finally {
      if (!isInit) {
        loading = false;
      }
    }
  }

  ///Get Wallet History
  Future<void> getWalletHistory() async {
    try {
      final response = await _walletRepository.getHistory();
      if (response == null) {
        AppRoutes.showErrorSnackbar(message: 'Error getting wallet history');
        return;
      } else {
        history = response.sortedByCompare(
          (element) => element.createdAt.toDateTime,
          (a, b) => b?.compareTo(a ?? DateTime.now()) ?? -1,
        );
      }
    } catch (e) {
      return;
    }
  }

  ///Initiates payment
  ///
  ///and opens razorpay
  FutureOr<void> _payAmount(int amount) async {
    loading = true;
    final user = cacheProvider.getUser()!;

    if (amount <= 0) {
      AppRoutes.showErrorSnackbar(message: 'Amount should be greater than 0');
      loading = false;
      return;
    }
    final options = {
      'order_id': _razorpayOrderId,
      'key': Constants.razorpayKeyId,
      'amount': amount * 100,
      'name': 'BAV',
      'description': 'Buy A Vehicle',
      'prefill': {'contact': '${user.phoneNumber}', 'email': '${user.email}'},
      'external': {
        'wallets': ['paytm']
      }
    };
    _razorpay.open(options);
  }

  ///Verify payment
  Future<void> verifyPayment({
    required String razorpayOrderId,
    required String razorpayPaymentId,
  }) async {
    loading = true;
    try {
      final res = await _walletRepository.verifyTransaction(
        razorpayOrderId: razorpayOrderId,
        razorpayPaymentId: razorpayPaymentId,
      );
      if (res) {
        AppRoutes.showSuccessSnackbar(message: 'Payment successful');
        AppRoutes.pop();
        await getWallet();
      } else {
        AppRoutes.showErrorSnackbar(message: 'Error verifying payment');
        loading = false;
      }
    } catch (e) {
      loading = false;
      return;
    }
  }

  ///Adds amount to wallet
  Future<void> addAmountToWallet(String amountText) async {
    loading = true;
    try {
      final amount = int.parse(amountText);

      final res = await _walletRepository.addAmountToWallet(amount: amount);
      if (res != null) {
        amountController.clear();
        _razorpayOrderId = res;
        _payAmount(amount);
      } else {
        AppRoutes.showErrorSnackbar(message: 'Error adding amount to wallet');
        loading = false;
      }
    } catch (e) {
      loading = false;
      return;
    }
  }
}
 */