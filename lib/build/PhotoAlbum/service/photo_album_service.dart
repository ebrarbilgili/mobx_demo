import 'dart:io';

import 'package:dio/dio.dart';

import '../model/photo_album.dart';

class PhotoAlbumService {
  final Dio service;
  PhotoAlbumService({required this.service});

  Future<List<PhotoAlbumModel>> fetchPhotoAlbumData() async {
    final response = await service.get('/photos');

    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;
      if (data is List) {
        return data.map((e) => PhotoAlbumModel.fromJson(e)).toList();
      }
    }

    return [];
  }
}
