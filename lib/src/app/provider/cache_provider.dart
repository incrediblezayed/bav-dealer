import 'dart:convert';

import 'package:dealerapp/src/app/repository/auth/graphql/__generated__/auth.data.gql.dart';
import 'package:hive_flutter/hive_flutter.dart';

///Cache Provider
class CacheProvider {
  ///String Box
  ///
  ///for storing the string data
  ///such as the session token
  ///or the user name
  late Box<String> _stringBox;

  ///Int Box
  ///
  ///for storing the integer data
  ///such as the user id
  late Box<int> _intBox;

  ///Bool Box
  ///
  ///for storing the boolean data
  ///such as whether the user is logged in or not
  late Box<bool> _boolBox;

  ///GraphQL Box
  ///
  ///for caching the GraphQL data
  ///this is managed by the ferry package
  late Box<dynamic> _graphqlBox;

  ///String Box Name for [_stringBox]
  final String _stringBoxName = 'stringBox';

  ///Int Box Name for [_intBox]
  final String _intBoxName = 'intBox';

  ///Bool Box Name for [_boolBox]
  final String _boolBoxName = 'boolBox';

  ///GraphQL Box Name for [_graphqlBox]
  final String _graphqlBoxName = 'graphql';

  ///User Key for [UserModel] data
  final String _userKey = 'user';

  ///Session Token Key for [String] data
  final String _sessionToken = 'sessionToken';

  ///User Id Key for user id
  final String _userId = 'userId';

  ///Initialize the Hive
  ///
  ///This method initializes the Hive
  ///
  ///and initializes all the [Box]
  Future<void> initHive() async {
    await Hive.initFlutter();
    _stringBox = await _initBox<String>(_stringBoxName);
    _intBox = await _initBox<int>(_intBoxName);
    _boolBox = await _initBox<bool>(_boolBoxName);
    _graphqlBox = await _initBox<dynamic>(_graphqlBoxName);
    await _graphqlBox.clear();
  }

  ///Initialize the Box
  ///
  ///This method initializes the Box
  ///and checks whether the box is already open or not
  ///if it's already open then it returns the box
  ///else it opens the box and returns it
  Future<Box<T>> _initBox<T>(String boxName) async {
    final isBoxOpen = Hive.isBoxOpen(boxName);
    if (isBoxOpen) {
      return Hive.box<T>(boxName);
    }
    return Hive.openBox<T>(boxName);
  }

  ///GraphqlBox Getter which returns the [_graphqlBox]
  Box<dynamic> get graphqlBox {
    return _graphqlBox;
  }

  ///Set Data Method
  ///
  ///For storing any data with any key
  ///with the type [T]
  Future<void> setData<T>(String key, T value) async {
    switch (value.runtimeType) {
      case String:
        await _stringBox.put(key, value as String);
        break;
      case int:
        await _intBox.put(key, value as int);
        break;
      case bool:
        await _boolBox.put(key, value as bool);
        break;
      default:
        throw Exception('Invalid Type ${value.runtimeType} for $value');
    }
  }

  ///Get Data Method
  ///
  ///For getting any data with any key
  ///with type [T]
  T? getData<T>(String key) {
    switch (T) {
      case String:
        return _stringBox.get(key) as T?;
      case int:
        return _intBox.get(key) as T?;
      case bool:
        return _boolBox.get(key) as T?;
      default:
        return null;
    }
  }

  String jsonEncode(
    Object? object, {
    Object? Function(Object? nonEncodable)? toEncodable,
  }) =>
      json.encode(object, toEncodable: toEncodable);

  ///Set User Method
  ///
  ///For storing the user data with the key [_userKey]
  ///the data is stored as string by converting it to json
  Future<void> setUser(GUserData_user user) async {
    await _stringBox.put(_userKey, jsonEncode(user.toJson()));
  }

  ///Get User Method
  ///
  ///For getting the user data with the key [_userKey]
  ///the data is stored as string so it is converted to [UserModel] from Json
   GUserData_user? getUser() {
    final userJson = _stringBox.get(_userKey);
    if (userJson != null) {
      return GUserData_user.fromJson(
        jsonDecode(userJson) as Map<String, dynamic>,
      );
    }
    return null;
  }

  ///Set Session Token Method
  ///
  ///For storing the session token with the key [_sessionToken]
  Future<void> setSessionToken(String sessionToken) async {
    await _stringBox.put(_sessionToken, sessionToken);
  }

  ///Get Session Token Method
  ///
  ///For getting the session token with the key [_sessionToken]
  String? getSessionToken() {
    return _stringBox.get(_sessionToken);
  }

  ///Set User Id Method
  ///
  ///For storing the user id with the key [_userId]
  Future<void> setUserId(String userId) async {
    await _stringBox.put(_userId, userId);
  }

  ///Get User Id Method
  ///
  ///For getting the user id with the key [_userId]
  String? getUserId() {
    return _stringBox.get(_userId);
  }

  ///Clear Method
  ///
  ///For clearing all the data from all the boxes
  Future<void> clear() async {
    await _stringBox.clear();
    await _intBox.clear();
    await _boolBox.clear();
    await _graphqlBox.clear();
  }
}
