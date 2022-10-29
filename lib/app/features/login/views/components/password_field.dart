part of login;

class _PasswordField extends GetView<LoginController> {
  const _PasswordField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => TextFormField(
          obscureText: controller.isObsecure.value,
          controller: controller.password,
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
              hintText: "Password"),
        ));
  }
}
