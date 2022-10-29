library services;

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tempmail/app/config/routes/routes_library.dart';
import 'package:tempmail/app/features/home/home_library.dart';
import 'package:tempmail/app/features/login/log_in_library.dart';

import '../../constants/constants_library.dart';

part '../services/src/shared_service.dart';
part '../services/src/base_client.dart';
part '../services/src/exception_handlers.dart';
