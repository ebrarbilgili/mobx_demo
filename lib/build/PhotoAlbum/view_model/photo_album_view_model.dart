import 'package:mobx/mobx.dart';

import '../model/photo_album.dart';
import '../service/photo_album_service.dart';

part 'photo_album_view_model.g.dart';

class PhotoAlbumViewModel = _PhotoAlbumViewModelBase with _$PhotoAlbumViewModel;

abstract class _PhotoAlbumViewModelBase with Store {
  @observable
  bool isLoading = true;

  // @observable
  // int index2 = 5;

  @observable
  List<PhotoAlbumModel> listPhotoAlbum = [];

  PhotoAlbumService photoAlbumService;
  _PhotoAlbumViewModelBase({required this.photoAlbumService}) {
    fetchPhotoAlbum();
  }

  @action
  void changeLoading() {
    isLoading = !isLoading;
  }

  @action
  Future<void> fetchPhotoAlbum() async {
    listPhotoAlbum = await photoAlbumService.fetchPhotoAlbumData();
  }

  @action
  Future<void> refresh() async {
    // index2 = 10;
    await fetchPhotoAlbum().whenComplete(() => print('OK!'));
    changeLoading();
  }
}
