part of message_view;

class _BodyText extends GetView<MessageController> {
  const _BodyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: Get.width,
        decoration: BoxDecoration(color: Colors.grey.withOpacity(0.1)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(controller.text.value,
              style: const TextStyle(color: Colors.black, fontSize: 17)),
        ),
      ),
    );
  }
}
