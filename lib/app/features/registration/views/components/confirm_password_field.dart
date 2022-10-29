part of register;

class _ConfirmPasswordField extends GetView<RegistrationController> {
  const _ConfirmPasswordField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => TextFormField(
          obscureText: controller.isObsecure.value,
          controller: controller.confirmpassword,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) {
            if (value == null || value.trim() == "") return "";
            return null;
          },
          decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.lock,
                color: Colors.grey,
              ),
              suffixIcon: GestureDetector(
                onTap: () {
                  controller.obsecure();
                },
                child: Icon(
                  controller.isObsecure.value
                      ? Icons.visibility_off_rounded
                      : Icons.visibility,
                ),
              ),
              hintText: "Confirm password"),
        ));
  }
}
