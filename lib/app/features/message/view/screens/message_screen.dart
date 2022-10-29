part of message_view;

class MessageScreen extends GetView<MessageController> {
  const MessageScreen({Key? key, required this.id}) : super(key: key);
  final String id;
  @override
  Widget build(BuildContext context) {
    controller.getmessages(id);
    return Obx(() => Scaffold(
        appBar: AppBar(
          title: const Text("Message"),
          leading: const _BackButton(),
        ),
        body: CustomScrollView(slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(
              width: Get.width,
              height: Get.height,
              child: controller.isLoading.value
                  ? const Center(child: CircularProgressIndicator())
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Text(controller.subject.value,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                          const SizedBox(
                            height: 15,
                          ),
                          const _Address(),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: _Visinbility(),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const _BodyText(),
                          const SizedBox(
                            height: 20,
                          ),
                        ]),
            ),
          ]))
        ])));
  }
}
