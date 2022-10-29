part of home;

class _Drawer extends GetView<HomeController> {
  const _Drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.getuserprofile();
    return Drawer(
        child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.5),
          ),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(ImageRasterConstant.logo),
              ),
              const Spacer(flex: 2),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Obx(() => Text(controller.id.value,
                    maxLines: 1,
                    overflow: TextOverflow.fade,
                    style: const TextStyle(
                      fontSize: 17,
                    ))),
              ),
              const Spacer(flex: 1),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Obx(() => Text(controller.address.value,
                    maxLines: 1,
                    overflow: TextOverflow.fade,
                    style: const TextStyle(
                      fontSize: 14,
                    ))),
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
        ListTile(
          leading: const Icon(Icons.inbox),
          title: const Text('Inbox',
              style: TextStyle(
                fontSize: 20,
              )),
          onTap: () {
            Get.back();
          },
        ),
        ListTile(
          leading: const Icon(Icons.send),
          title: const Text(
            'Sent',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          onTap: () {
            Get.back();
          },
        ),
        ListTile(
          leading: const Icon(Icons.drafts),
          title: const Text('Draft',
              style: TextStyle(
                fontSize: 20,
              )),
          onTap: () {
            Get.back();
          },
        ),
      ],
    ));
  }
}
