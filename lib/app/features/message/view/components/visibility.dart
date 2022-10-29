part of message_view;

class _Visinbility extends GetView<MessageController> {
  const _Visinbility({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() => Visibility(
        visible: controller.isVisible.value,
        child: Material(
          elevation: 5,
          borderRadius: const BorderRadius.all(Radius.circular(7)),
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("From",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          )),
                      Text("Date",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          )),
                      Text("Deleted",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          )),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "${controller.fromname.value}-${controller.fromaddress.value}",
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          )),
                      Text(DateFormat().format(controller.createdAt.value),
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          )),
                      Text(controller.isDeleted.toString(),
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          )),
                    ],
                  )
                ],
              )),
        )));
  }
}
