class mediaModel {
  String? status;
  List<Data>? data;

  mediaModel({this.status, this.data});

  mediaModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? title;
  String? thumbnail;
  List<PhotosInAlbum>? photosInAlbum;

  Data({this.title, this.thumbnail, this.photosInAlbum});

  Data.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    thumbnail = json['thumbnail'];
    if (json['photosInAlbum'] != null) {
      photosInAlbum = <PhotosInAlbum>[];
      json['photosInAlbum'].forEach((v) {
        photosInAlbum!.add(new PhotosInAlbum.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['thumbnail'] = this.thumbnail;
    if (this.photosInAlbum != null) {
      data['photosInAlbum'] =
          this.photosInAlbum!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PhotosInAlbum {
  String? photos;

  PhotosInAlbum({this.photos});

  PhotosInAlbum.fromJson(Map<String, dynamic> json) {
    photos = json['photos'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['photos'] = this.photos;
    return data;
  }
}
