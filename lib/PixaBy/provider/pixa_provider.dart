import 'package:flutter/foundation.dart';
import '../api_helper.dart';
import '../modal/pixa_modal.dart';

int selectIndex=0;

class SearchProvider extends ChangeNotifier
{
  Helper helper = Helper();
  SearchModal? searchModal;
  String search = '';
  int selectIndex=0;

  void searchImg(String img)
  {
    search = img;
    notifyListeners();
  }
  void selectedImage(int index)
  {
    selectIndex = index ;
    notifyListeners();
  }

  Future<SearchModal?> fromMap(String img)
  async {
    final data = await helper.fetchApiData(img);
    searchModal = SearchModal.fromJson(data);
    return searchModal;
  }

}