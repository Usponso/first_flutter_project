import 'dart:collection';

import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';

class FavProvider extends ChangeNotifier{
  final List<WordPair> favorites = [];

  UnmodifiableListView<WordPair> get getFavorites => UnmodifiableListView(favorites);

  void addFavorite(WordPair word){
    favorites.add(word);
    notifyListeners();
  }

  void removeFavorite(WordPair word){
    favorites.remove(word);
    notifyListeners();
  }

  void removeAll(){
    favorites.clear();
    notifyListeners();
  }
}