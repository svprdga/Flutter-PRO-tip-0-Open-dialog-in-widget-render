import 'package:flutter/material.dart';
import 'package:open_dialog_in_widget_render/post_frame_callback.dart';
import 'package:open_dialog_in_widget_render/post_frame_callback_stateless.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter PRO tip #0',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _MainScreen(),
    );
  }
}

class _MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter PRO tip #0')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PostFrameCallbackSample(),
                ),
              ),
              child: const Text('Post Frame Callback sample'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const PostFrameCallbackSampleStateless(),
                  ),
                ),
                child: const Text('Stateless sample'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
