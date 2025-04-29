import 'package:flutter/material.dart';
import 'new_post_screen.dart'; // 🔥 추가해줘야 함!!

class BoardScreen extends StatefulWidget {
  const BoardScreen({Key? key}) : super(key: key);

  @override
  _BoardScreenState createState() => _BoardScreenState();
}

class _BoardScreenState extends State<BoardScreen> {
  List<Map<String, String>> posts = [
    {"title": "첫 번째 글", "content": "이건 첫 번째 글 내용입니다."},
    {"title": "두 번째 글", "content": "이건 두 번째 글 내용입니다."},
  ];

  void _addNewPost(String title, String content) {
    setState(() {
      posts.add({"title": title, "content": content});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('타조 클린 게시판'),
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];
          return ListTile(
            title: Text(post['title'] ?? ''),
            subtitle: Text(post['content'] ?? ''),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NewPostScreen(
                onPostCreated: _addNewPost,
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}


