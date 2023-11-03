import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valotod_app/core/di/injection.dart';
import 'package:valotod_app/core/shared/widgets/valobackground_basic_widget.dart';
import 'package:valotod_app/features/chat/presentation/cubit/chat_cubit.dart';
import 'package:valotod_app/features/chat/presentation/widgets/chat_widget.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        ValoBackgroundBasicWidget(),
        ChatWidget(),
      ],
    );
  }
}
