import 'package:mobx/mobx.dart';

import '../model/photo_album.dart';
import '../service/photo_album_service.dart';

part 'photo_album_view_model.g.dart';

class PhotoAlbumViewModel = _PhotoAlbumViewModelBase with _$PhotoAlbumViewModel;

abstract class _PhotoAlbumViewModelBase with Store {
  @observable
  List<PhotoAlbumModel> listPhotoAlbum = [];

  PhotoAlbumService photoAlbumService;
  _PhotoAlbumViewModelBase({required this.photoAlbumService}) {
    fetchPhotoAlbum();
  }

  @action
  Future<void> fetchPhotoAlbum() async {
    listPhotoAlbum = await photoAlbumService.fetchPhotoAlbumData();
  }
}
