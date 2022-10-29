part of register;

class RegistrationScreen extends GetView<RegistrationController> {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          SizedBox(
            width: Get.width,
            height: Get.height,
            child: Form(
              key: controller.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Spacer(flex: 6),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: _HeaderText(),
                  ),
                  Spacer(flex: 4),
                  _IllustrationImage(),
                  Spacer(flex: 4),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: _EmailField(),
                  ),
                  Spacer(flex: 2),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: _PasswordField(),
                  ),
                  Spacer(flex: 2),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: _ConfirmPasswordField(),
                  ),
                  Spacer(flex: 2),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: _RegisterButton(),
                  ),
                  Spacer(flex: 5),
                  _LoginButton(),
                  Spacer(flex: 2),
                ],
              ),
            ),
          ),
        ]))
      ],
    ));
  }
}
