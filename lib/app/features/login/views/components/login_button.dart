part of login;

class _LoginButton extends GetView<LoginController> {
  const _LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ElevatedButton(
        onPressed: controller.isLoading.value ? null : () => controller.login(),
        child: controller.isLoading.value
            ? const SizedBox(
                width: 30,
                height: 30,
                child: CircularProgressIndicator(),
              )
            : const Text(
                "Login",
                style: TextStyle(fontSize: 20),
              ),
      ),
    );
  }
}
