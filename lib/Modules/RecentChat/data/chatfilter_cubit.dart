import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'chatfilter_state.dart';

class ChatfilterCubit extends Cubit<ChatfilterState> {
  ChatfilterCubit() : super(ChatfilterInitial());

  int selectedIndex=0;

  void ChangeIndex(int index){
    selectedIndex=index;
    emit(ChatfilterOnchange());
  }
}
