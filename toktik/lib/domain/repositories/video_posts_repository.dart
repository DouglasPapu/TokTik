import 'package:toktik/domain/entities/video_post.dart';

abstract class VideoPostRepository {

  Future<List<VideoPost>> gettFavoriteVideosByPage(String userIDs);
  Future<List<VideoPost>> gettTrendingVideosByPage(int page);


}