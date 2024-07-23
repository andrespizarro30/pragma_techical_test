class CatsBreedImagesListModel {

  List<CatsBreedImagesModel> _catBreedsImagesList = [];
  List<CatsBreedImagesModel> get catBreedsImagesList => _catBreedsImagesList;


  CatsBreedListModel({required catBreedsImagesList}){
    _catBreedsImagesList = catBreedsImagesList;
  }

  CatsBreedImagesListModel.fromJson(List json) {
    if (json != null) {
      _catBreedsImagesList = <CatsBreedImagesModel>[];
      json.forEach((v) {
        _catBreedsImagesList!.add(new CatsBreedImagesModel.fromJson(v));
      });
    }
  }

  List toJson() {
    List data = [];
    if (this._catBreedsImagesList != null) {
      data = this._catBreedsImagesList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CatsBreedImagesModel {
  String? id;
  String? url;
  int? width;
  int? height;

  CatsBreedImagesModel({this.id, this.url, this.width, this.height});

  CatsBreedImagesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    data['width'] = this.width;
    data['height'] = this.height;
    return data;
  }
}
