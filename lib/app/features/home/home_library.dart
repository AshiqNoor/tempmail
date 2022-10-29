library home;

import 'dart:convert';
import 'package:tempmail/app/config/routes/routes_library.dart';
import 'package:tempmail/app/constants/constants_library.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'package:tempmail/app/utils/services/service_library.dart';

part '../home/views/screens/home_screen.dart';
part '../home/views/components/drawer.dart';
part '../home/views/components/logout.dart';
part '../home/views/components/messages.dart';
part '../home/repository/home_repo.dart';
part '../home/model/messages_res_model.dart';
part '../home/model/profile_res_model.dart';
part '../home/controllers/home_controller.dart';
part '../home/bindings/home_binding.dart';
