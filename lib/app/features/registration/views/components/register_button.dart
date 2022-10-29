part of register;

class _RegisterButton extends GetView<RegistrationController> {
  const _RegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ElevatedButton(
        onPressed:
            controller.isLoading.value ? null : () => controller.register(),
        child: controller.isLoading.value
            ? const SizedBox(
                width: 30,
                height: 30,
                child: CircularProgressIndicator(),
              )
            : const Text(
                "Register",
                style: TextStyle(fontSize: 20),
              ),
      ),
    );
  }
}
