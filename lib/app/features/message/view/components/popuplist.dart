part of message_view;

class PouUpList {
  String name;
  Widget? icon;
  PouUpList({required this.name, this.icon});

  static final List<PouUpList> itemname = [
    PouUpList(name: "Unseen", icon: const Icon(Icons.inbox_rounded, size: 18)),
    PouUpList(name: "Delete", icon: const Icon(Icons.delete, size: 18)),
  ];
}
