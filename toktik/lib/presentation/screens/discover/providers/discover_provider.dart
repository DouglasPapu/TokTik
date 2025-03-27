import 'package:flutter/material.dart';
import 'package:toktik/data/local_video_posts.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_posts_repository.dart';
import 'package:toktik/infrastructure/models/local_video_model.dart';



class DiscoverProvider extends ChangeNotifier {

  final VideoPostRepository videosRepository;

  bool initialLoading = true;
  List<VideoPost> videos = [];


  DiscoverProvider({required this.videosRepository});

  Future<void> loadNextPage() async {

    final newVideos =  await videosRepository.gettTrendingVideosByPage(1);

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }

}