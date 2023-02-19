import 'package:post/data/source/api_data.dart';

import '../configs.dart';
import '../data/models/post_model.dart';

class PostService{
  final String _url = '$baseUrl/posts';
  final ApiData _apiData = ApiData();
  Future<List<Post>> getPost() async{
    List<Post> posts = [];
    try{
      final response = await _apiData.getRequest(_url);
      if(response.statusCode == 200){
        final body = response.body as List;
        posts = body.map((post) => Post.fromJson(post)).toList();
      }else {
        posts = [];
      }
    }catch (e) {
      throw Exception(e.toString());
    }
    return posts;
  }
}