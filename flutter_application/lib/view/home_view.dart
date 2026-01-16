part of '../main.dart';
// This is the Home view screen

class HomePage extends StatelessWidget {
  final HomeViewModel model;
  const HomePage({super.key, this.model});

  DuringSwimView swimView = DuringSwimView(viewModel: model.swimViewModel,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: HomePageBody(context),
      bottomNavigationBar: bottomContainer(context),
    );
  }

  Center HomePageBody(context) => Center(
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => ),
        );
      },
      child: const Text('Start Swim'),
    ),
  );

  Widget bottomContainer(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const HistoryView()),
              );
            },
            child: const Text('History'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ConnectView()),
              );
            },
            child: const Text('Connect'),
          ),
        ],
      ),
    );
  }
}
