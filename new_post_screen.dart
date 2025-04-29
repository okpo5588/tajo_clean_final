import 'package:flutter/material.dart';

class NewPostScreen extends StatefulWidget {
  final Function(String title, String content) onPostCreated;

  const NewPostScreen({Key? key, required this.onPostCreated}) : super(key: key);

  @override
  _NewPostScreenState createState() => _NewPostScreenState();
}

class _NewPostScreenState extends State<NewPostScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('글쓰기'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: '제목'),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _contentController,
              decoration: const InputDecoration(labelText: '내용'),
              maxLines: 5,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                widget.onPostCreated(
                  _titleController.text,
                  _contentController.text,
                );
                Navigator.pop(context);
              },
              child: const Text('글 등록'),
            ),
          ],
        ),
      ),
    );
  }
}
