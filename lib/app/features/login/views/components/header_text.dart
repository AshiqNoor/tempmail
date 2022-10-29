part of login;

class _HeaderText extends StatelessWidget {
  const _HeaderText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Login Now", style: Theme.of(context).textTheme.headline5),
        const SizedBox(height: 5),
        const Text("Please enter your email and password to login")
      ],
    );
  }
}
