import 'package:json_annotation/json_annotation.dart';

part 'photo_album.g.dart';

@JsonSerializable()
class PhotoAlbumModel {
  int? albumId;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  PhotoAlbumModel(
      {this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  factory PhotoAlbumModel.fromJson(Map<String, dynamic> json) {
    return _$PhotoAlbumModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PhotoAlbumModelToJson(this);
  }
}
