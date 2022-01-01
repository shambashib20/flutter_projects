import 'package:flutter/material.dart';

void main() {
  runApp(
    const FriendlyChatApp(),
  );
}

class FriendlyChatApp extends StatelessWidget {
  const FriendlyChatApp({
    Key? key,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'FriendlyChat',
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatelessWidget {
  const ChatScreen({
    Key? key,
  }) : super(key: key);

  @override 
  State<ChatScreen> createState() => _ChatScreenState();

}
  class _ChatScreenState extends State<ChatScreen> {
    final _textController = TextEditingController();

    void _handleSubmitted(String text) {
      _textController.clear();
    }
    @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FriendlyChat')),
      body: _buildTextComposer(),
    );
  }
  

  }
  
}
