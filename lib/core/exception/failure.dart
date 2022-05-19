import 'dart:core';

abstract class Failure implements Exception {
  String? message;
}
