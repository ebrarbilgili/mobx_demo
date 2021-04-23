import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../constants/base/base_state.dart';
import '../../../constants/service/service_constants.dart';
import '../service/photo_album_service.dart';
import '../view_model/photo_album_view_model.dart';

class PhotoAlbumView extends StatelessWidget with BaseState {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();

  final photoAlbumViewModel = PhotoAlbumViewModel(
    photoAlbumService: PhotoAlbumService(
      service: Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com')),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Observer(
          builder: (context) {
            return RefreshIndicator(
              key: _refreshIndicatorKey,
              onRefresh: () => photoAlbumViewModel.refresh(),
              child: photoAlbumViewModel.isLoading
                  ? ListView(
                      children: [CupertinoActivityIndicator(animating: false)])
                  : ListView.builder(
                      itemCount: photoAlbumViewModel.listPhotoAlbum.length,
                      itemBuilder: (context, index) {
                        final item = photoAlbumViewModel.listPhotoAlbum[index];
                        return Card(
                          child: ListTile(
                            leading: Image.network(item.url ?? ''),
                            title: Text(item.title ?? ''),
                          ),
                        );
                      },
                    ),
            );
          },
        ));
  }
}
