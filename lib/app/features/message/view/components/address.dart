part of message_view;

class _Address extends GetView<MessageController> {
  const _Address({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() => ListTile(
        leading: CircleAvatar(
          child: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              maxLines: 1,
              overflow: TextOverflow.fade,
              controller.fromname.value,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
        ),
        title: Row(
          children: [
            Flexible(
              child: Container(
                padding: const EdgeInsets.only(right: 13.0),
                child: Text(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  controller.fromname.value,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ),
            ),
          ],
        ),
        subtitle: Row(
          children: [
            const Text(
              "to me",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
            InkWell(
                onTap: () {
                  controller.visibility();
                },
                child: controller.isVisible.value
                    ? const Icon(Icons.keyboard_arrow_down)
                    : const Icon(Icons.keyboard_arrow_up))
          ],
        ),
        trailing: PopupMenuButton<PouUpList>(
          color: Colors.blue[200],
          icon: const Icon(Icons.more_vert, color: Colors.black),
          itemBuilder: (BuildContext context) {
            return PouUpList.itemname.map((item) {
              return PopupMenuItem(
                  value: item,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minWidth: double.infinity,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: item.icon as Widget,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              item.name,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ));
            }).toList();
          },
          onSelected: (item) {
            controller.shareWallpaper(item.name);
          },
        )));
  }
}
