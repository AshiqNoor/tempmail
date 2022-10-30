library register;

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tempmail/app/config/routes/routes_library.dart';
import 'package:tempmail/app/constants/constants_library.dart';
import 'package:http/http.dart' as http;
import 'package:tempmail/app/features/login/log_in_library.dart';
import 'package:tempmail/app/utils/services/service_library.dart';

part '../registration/views/screens/registration_screen.dart';
part '../registration/views/components/confirm_password_field.dart';
part '../registration/views/components/email_field.dart';
part '../registration/views/components/header_text.dart';
part '../registration/views/components/illustration_image.dart';
part '../registration/views/components/dropdown.dart';
part '../registration/views/components/login_button.dart';
part '../registration/views/components/password_field.dart';
part '../registration/views/components/register_button.dart';
part '../registration/repository/register_repo.dart';
part '../registration/model/register_req_model.dart';
part '../registration/model/register_res_model.dart';
part '../registration/controllers/registration_controller.dart';
part '../registration/bindings/registration_binding.dart';
