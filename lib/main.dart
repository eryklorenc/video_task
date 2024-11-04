import 'package:flutter/material.dart';
import 'package:video_task/app/app.dart';
import 'package:video_task/app/core/utils/injection_container.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}
