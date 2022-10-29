part of message_view;

class _BackButton extends GetView<MessageController> {
  const _BackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      onPressed: () {
        controller.goToHomeScreen();
      },
    );
  }
}
