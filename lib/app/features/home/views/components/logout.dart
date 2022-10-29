part of home;

class _LogoutButton extends GetView<HomeController> {
  const _LogoutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.exit_to_app,
        color: Colors.black,
      ),
      onPressed: () {
        controller.logout();
      },
    );
  }
}
