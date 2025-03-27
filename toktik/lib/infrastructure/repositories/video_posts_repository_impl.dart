

import 'package:toktik/domain/datasources/video_posts_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_posts_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository{

  final VideoPostDatasource videoPostDatasource;

  VideoPostsRepositoryImpl({required this.videoPostDatasource});

  @override
  Future<List<VideoPost>> gettFavoriteVideosByPage(String userIDs) {
    // TODO: implement gettFavoriteVideosByPage
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> gettTrendingVideosByPage(int page) {
    return videoPostDatasource.gettTrendingVideosByPage(page);
  }


}