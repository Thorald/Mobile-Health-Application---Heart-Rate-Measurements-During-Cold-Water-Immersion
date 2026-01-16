part of '../main.dart';

class DuringSwimView extends StatefulWidget {
  final DuringSwimViewModel model;
  const DuringSwimView({super.key, required this.model});

  @override
  State<DuringSwimView> createState() => _DuringSwimViewState();
}

class _DuringSwimViewState extends State<DuringSwimView> {
  bool hasStopped = false;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: hasStopped, // controls system back
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Swimming'),
          automaticallyImplyLeading: false, // remove app bar back button
        ),
        body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 24),
            ),
            onPressed: hasStopped
                ? null
                : () {
                    setState(() {
                      hasStopped = true;
                    });

                    // TODO: stop recording / stream here
                  },
            child: StreamBuilder(
              stream: widget.model.pulse,
              builder: (context, snapshot) => Text(
                'Pulse: ${snapshot.data}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: hasStopped ? () => Navigator.pop(context) : null,
          backgroundColor: hasStopped ? null : Colors.grey,
          child: const Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}
