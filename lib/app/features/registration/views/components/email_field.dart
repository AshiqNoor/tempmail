part of register;

class _EmailField extends GetView<RegistrationController> {
  const _EmailField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.name,
      controller: controller.email,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null || value.trim() == "") return "";
        return null;
      },
      decoration: const InputDecoration(
          suffixIcon: Dropdown(),
          prefixIcon: Icon(
            Icons.email,
            color: Colors.grey,
          ),
          hintText: "Email address"),
    );
  }
}
