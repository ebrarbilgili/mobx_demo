// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_album_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PhotoAlbumViewModel on _PhotoAlbumViewModelBase, Store {
  final _$isLoadingAtom = Atom(name: '_PhotoAlbumViewModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$listPhotoAlbumAtom =
      Atom(name: '_PhotoAlbumViewModelBase.listPhotoAlbum');

  @override
  List<PhotoAlbumModel> get listPhotoAlbum {
    _$listPhotoAlbumAtom.reportRead();
    return super.listPhotoAlbum;
  }

  @override
  set listPhotoAlbum(List<PhotoAlbumModel> value) {
    _$listPhotoAlbumAtom.reportWrite(value, super.listPhotoAlbum, () {
      super.listPhotoAlbum = value;
    });
  }

  final _$fetchPhotoAlbumAsyncAction =
      AsyncAction('_PhotoAlbumViewModelBase.fetchPhotoAlbum');

  @override
  Future<void> fetchPhotoAlbum() {
    return _$fetchPhotoAlbumAsyncAction.run(() => super.fetchPhotoAlbum());
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
listPhotoAlbum: ${listPhotoAlbum}
    ''';
  }
}
