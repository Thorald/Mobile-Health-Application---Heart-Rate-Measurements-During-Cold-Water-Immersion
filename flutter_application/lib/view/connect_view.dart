part of '../main.dart';

class ConnectView extends StatelessWidget {
  final ConnectViewModel viewModel;

  const ConnectView({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Connect'),
        automaticallyImplyLeading: false,
      ),
      body: ConnectViewCenter(viewModel: viewModel),
      floatingActionButton: FloatingActionButton(
        heroTag: "backbutton",
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}

class ConnectViewCenter extends StatelessWidget {
  final ConnectViewModel viewModel;

  const ConnectViewCenter({super.key, required this.viewModel});

  String _statusText(ConnectViewModel vm) {
    if (vm.isConnected) return 'Connected';
    if (vm.isConnecting) return 'Connecting';
    return 'Press to Connect';
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, _) {
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FloatingActionButton(
                heroTag: "connectbutton",
                onPressed: viewModel.connect,
                child: const Icon(Icons.bluetooth),
              ),
              const SizedBox(height: 20),
              Text(
                _statusText(viewModel),
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        );
      },
    );
  }
}
