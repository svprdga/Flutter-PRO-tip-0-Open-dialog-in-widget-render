import 'package:flutter/material.dart';

class PostFrameCallbackSampleStateless extends StatelessWidget {
  const PostFrameCallbackSampleStateless();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _showDialog(context),
      builder: (context, snapshot) => Scaffold(
        appBar: AppBar(
          title: const Text('Post Frame Callback Stateless'),
        ),
        body: const Center(
          child: Text('Body of the Scaffold'),
        ),
      ),
    );
  }

  Future<void> _showDialog(BuildContext context) async {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: const Text('Dialog content'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Accept'),
            ),
          ],
        ),
      );
    });
  }
}
