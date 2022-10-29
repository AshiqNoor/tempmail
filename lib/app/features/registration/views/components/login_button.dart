part of register;

class _LoginButton extends GetView<RegistrationController> {
  const _LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Already have an account ? "),
        TextButton(
          onPressed: () => controller.goToLoginScreen(),
          child: const Text("Login"),
        )
      ],
    );
  }
}
