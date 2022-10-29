part of mixins;

/// use this mixin for all form field
mixin ValidatorMixin {
  String? isValidEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Email is required ";
    }
    // else if (!value.contains("@")) {
    //   return "Invalid Email";
    // }
    else if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
        .hasMatch(value)) {
      return "Invalid Email";
    }
    return null;
  }

  String? isValidPassword(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Password is required";
    } else if (value.length > 10 || value.length < 4) {
      return "Password at least 4-10 character";
    } else if (value.split(" ").length > 1) {
      return "Invalid Password";
    }

    return null;
  }

  String? isValidConfirmPassword(String? value, String? value2) {
    if (value2 == null || value2.trim().isEmpty) {
      return "Confirm Password is required";
    } else if (value != value2) {
      return "Password not Match";
    }
    return null;
  }

  String? isValidName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Name is required";
    } else if (value.split(" ").length > 1) {
      return "Invalid Name";
    }
    return null;
  }

  String? isValidPhoneNo(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Phone No is required";
    } else if (!RegExp(r'(^(?:[+88]0)?[0-9]{10,12}$)').hasMatch(value)) {
      return 'Please enter valid mobile number';
    }
    // else if (value.length < 11) {
    //   return "Phone no at least 11 character";
    // }
    return null;
  }
}
