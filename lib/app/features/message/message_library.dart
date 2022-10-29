library message_view;

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tempmail/app/config/routes/routes_library.dart';
import 'package:tempmail/app/constants/constants_library.dart';

import 'package:tempmail/app/utils/services/service_library.dart';

import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

part '../message/view/screens/message_screen.dart';
part '../message/view/components/address.dart';
part '../message/view/components/backbutton.dart';
part '../message/view/components/bodytext.dart';
part '../message/view/components/popuplist.dart';
part '../message/view/components/visibility.dart';
part '../message/repository/delete_repo.dart';
part '../message/repository/message_repo.dart';
part '../message/repository/seen_repo.dart';
part '../message/model/message_res_model.dart';
part '../message/model/seen_req_model.dart';
part '../message/model/seen_res_model.dart';
part '../message/controllers/message_controller.dart';
part '../message/bindings/message_binding.dart';
