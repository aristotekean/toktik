import 'package:tok_tik/domain/datasources/video_posts_datasource.dart';
import 'package:tok_tik/domain/entities/video_post.dart';
import 'package:tok_tik/infrastructure/models/local_video_model.dart';
import 'package:tok_tik/shared/data/local_video_post.dart';

class LocalVideosDatasource extends VideoPostDataSource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingByPage(int page) async {
    await Future.delayed(Duration(seconds: 2));
    final List<VideoPost> newVideos = videoPosts
        .map((v) => LocalVideoModel.fromJson(v).toVideoPostEntity())
        .toList();
    return newVideos;
  }
}
