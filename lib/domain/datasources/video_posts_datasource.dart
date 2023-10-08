import 'package:tok_tik/domain/entities/video_post.dart';

abstract class VideoPostDataSource {
  Future<List<VideoPost>> getTrendingByPage(int page);
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID);
}
