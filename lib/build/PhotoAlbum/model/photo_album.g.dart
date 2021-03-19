// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_album.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotoAlbumModel _$PhotoAlbumModelFromJson(Map<String, dynamic> json) {
  return PhotoAlbumModel(
    albumId: json['albumId'] as int?,
    id: json['id'] as int?,
    title: json['title'] as String?,
    url: json['url'] as String?,
    thumbnailUrl: json['thumbnailUrl'] as String?,
  );
}

Map<String, dynamic> _$PhotoAlbumModelToJson(PhotoAlbumModel instance) =>
    <String, dynamic>{
      'albumId': instance.albumId,
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'thumbnailUrl': instance.thumbnailUrl,
    };
