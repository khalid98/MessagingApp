import 'package:flutter_bloc/flutter_bloc.dart';

import 'groupchat_state.dart';

class GroupchatCubit extends Cubit<GroupchatState> {
  GroupchatCubit() : super(GroupchatInitial());

  String? selectedChannel = "# General";
  int? selectedIndex = 0;
  bool showChannel = false;

  void selectChannel(String selectedChannel, int selectedIndex) {
    this.selectedChannel = selectedChannel;
    this.selectedIndex = selectedIndex;
    emit(GroupchatOnchange());
  }

  void showChannelview() {
    showChannel = !showChannel;
    emit(GroupchatOnchange());
  }
}
