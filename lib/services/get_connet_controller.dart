// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import '../models/article.dart';

class GetConnectController extends GetConnect {
  static const String _baseUrl = 'https://newsapi.org/v2/';
  static const String _apiKey = 'ef1bf4d75637450693331c8438fdf5c0'; // Ganti ke API KEY yang sudah didapat
  static const String _category = 'business';
  static const String _country = 'us'; //us maksudnya United States ya

  RxList<Article> articles = RxList<Article>([]);
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    fetchArticles();
    super.onInit();
  }

  Future<void> fetchArticles() async {
    try {
      isLoading.value = true; // set loading state to true
      final response = await get(
          '${_baseUrl}top-headlines?country=$_country&category=$_category&apiKey=$_apiKey');

      if (response.statusCode == 200) {
        final articlesResult = Articles.fromJson(response.body);
        articles.value = articlesResult.articles;
      } else {
        print("Request failed with status ${response.statusCode}");
      }
    } catch (e) {
      print('An error occurred: $e');
    } finally {
      isLoading.value = false; // set status loading to false when it done
    }
  }
}