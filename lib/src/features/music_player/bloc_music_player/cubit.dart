import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fondom2/src/features/music_player/bloc_music_player/state.dart';

class MusicPlayCubit extends Cubit<MusicPlayingStates>{
  MusicPlayCubit():super(MusicPlayingInitialStates());
  static MusicPlayCubit get(context)=>BlocProvider.of(context);
  IconData myIcon=Icons.play_circle_fill;
  bool playing=false;
  void changePasswordVisibility(){
    playing=!playing;
    myIcon= playing?
    Icons.pause_circle_filled:Icons.play_circle_fill;
    emit(ChangeIconPlay());
  }
}