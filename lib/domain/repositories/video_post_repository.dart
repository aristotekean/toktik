import 'package:tok_tik/domain/entities/video_post.dart';

abstract class VideoPostDataRepository {
  Future<List<VideoPost>> getTrendingByPage(int page);
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID);
}
