part of home;

class HomeScreen extends GetView<HomeController> {
  HomeScreen({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        leading: IconButton(
          color: Colors.black,
          icon: const Icon(Icons.menu),
          onPressed: () => _key.currentState!.openDrawer(),
        ),
        title: const Center(
          child: Text(
            'TempMail',
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: const [
          _LogoutButton(),
        ],
      ),
      body: const _Messages(),
      drawer: const _Drawer(),
    );
  }
}
