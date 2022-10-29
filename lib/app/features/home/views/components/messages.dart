part of home;

class _Messages extends GetView<HomeController> {
  const _Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await controller.getmessages();
      },
      child: Obx(
        () => Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: controller.isLoading.value
                    ? const Center(child: CircularProgressIndicator())
                    : controller.isEmpty.value
                        ? const Center(child: Text("Empty Inbox"))
                        : ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: controller.result.length,
                            itemBuilder: (BuildContext ctx, int index) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Card(
                                      child: ListTile(
                                          onTap: () {
                                            Get.offNamed(Routes.message,
                                                arguments: controller
                                                    .result[index]
                                                    .hydraMemberId);
                                          },
                                          leading: CircleAvatar(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5),
                                              child: Text(
                                                maxLines: 1,
                                                overflow: TextOverflow.fade,
                                                controller
                                                    .result[index].from.name
                                                    .toString(),
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
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 13.0),
                                                  child: Text(
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    controller.result[index]
                                                        .from.address
                                                        .toString(),
                                                    style: controller
                                                            .result[index].seen
                                                        ? const TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal)
                                                        : const TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 17),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          subtitle: Row(
                                            children: [
                                              Flexible(
                                                child: Container(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 13.0),
                                                  child: Text(
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    controller
                                                        .result[index].subject
                                                        .toString(),
                                                    style: controller
                                                            .result[index].seen
                                                        ? const TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal)
                                                        : const TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 17),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          trailing: Text(
                                            DateFormat.MMMd().format(controller
                                                .result[index].createdAt),
                                            style: controller.result[index].seen
                                                ? const TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal)
                                                : const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                          ))),
                                ),
                              );
                            }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
