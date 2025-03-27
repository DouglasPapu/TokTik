import 'package:toktik/data/local_video_posts.dart';
import 'package:toktik/domain/datasources/video_posts_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastructure/models/local_video_model.dart';

class LocalVideoDataSource implements VideoPostDatasource{


  
  @override
  Future<List<VideoPost>> gettFavoriteVideosByPage(String userIDs) {
    // TODO: implement gettFavoriteVideosByPage
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> gettTrendingVideosByPage(int page) async {

      await Future.delayed(Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts.map(
        (video) => LocalVideoModel.fromJson(video).toVideoPostEntity()
      ).toList();


    return newVideos;
  }



}