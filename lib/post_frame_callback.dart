import 'package:flutter/material.dart';

class PostFrameCallbackSample extends StatefulWidget {
  const PostFrameCallbackSample({Key? key}) : super(key: key);

  @override
  State<PostFrameCallbackSample> createState() =>
      _PostFrameCallbackSampleState();
}

class _PostFrameCallbackSampleState extends State<PostFrameCallbackSample> {
  @override
  void initState() {
    super.initState();

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post Frame Callback sample'),
      ),
      body: const Center(
        child: Text('Body of the Scaffold'),
      ),
    );
  }
}
