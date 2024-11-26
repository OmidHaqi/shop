class HomeModel {
  HomeModel({
    this.message,
    this.status,
    this.data,
  });

  HomeModel.fromJson(dynamic json) {
    message = json['message'];
    status = json['status'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? message;
  String? status;
  Data? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    map['status'] = status;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }
}

class Data {
  Data({
    this.sliders,
    this.banners,
    this.categories,
    this.suggestionProducts,
    this.nearShops,
  });

  Data.fromJson(dynamic json) {
    if (json['sliders'] != null) {
      sliders = [];
      json['sliders'].forEach((v) {
        sliders?.add(Sliders.fromJson(v));
      });
    }
    if (json['banners'] != null) {
      banners = [];
      json['banners'].forEach((v) {
        banners?.add(Banners.fromJson(v));
      });
    }
    if (json['categories'] != null) {
      categories = [];
      json['categories'].forEach((v) {
        categories?.add(Categories.fromJson(v));
      });
    }
    if (json['suggestionProducts'] != null) {
      suggestionProducts = [];
      json['suggestionProducts'].forEach((v) {
        suggestionProducts?.add(SuggestionProducts.fromJson(v));
      });
    }
    nearShops = json['nearShops'];
  }
  List<Sliders>? sliders;
  List<Banners>? banners;
  List<Categories>? categories;
  List<SuggestionProducts>? suggestionProducts;
  String? nearShops;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (sliders != null) {
      map['sliders'] = sliders?.map((v) => v.toJson()).toList();
    }
    if (banners != null) {
      map['banners'] = banners?.map((v) => v.toJson()).toList();
    }
    if (categories != null) {
      map['categories'] = categories?.map((v) => v.toJson()).toList();
    }
    if (suggestionProducts != null) {
      map['suggestionProducts'] =
          suggestionProducts?.map((v) => v.toJson()).toList();
    }
    map['nearShops'] = nearShops;
    return map;
  }
}

class SuggestionProducts {
  SuggestionProducts({
    this.title,
    this.location,
    this.items,
    this.priority,
    this.updatedAt,
    this.image,
  });

  SuggestionProducts.fromJson(dynamic json) {
    title = json['title'];
    location = json['location'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
    priority = json['priority'];
    updatedAt = json['updated_at'];
    image = json['image'];
  }
  String? title;
  String? location;
  List<Items>? items;
  dynamic priority;
  int? updatedAt;
  String? image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['location'] = location;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    map['priority'] = priority;
    map['updated_at'] = updatedAt;
    map['image'] = image;
    return map;
  }
}

class Items {
  Items({
    this.id,
    this.image,
    this.name,
    this.price,
    this.priceBeforDiscount,
    this.discount,
    this.callStatus,
    this.specialDiscount,
    this.star,
    this.category,
  });

  Items.fromJson(dynamic json) {
    id = json['id'];
    image = json['image'];
    name = json['name'];
    price = json['price'];
    priceBeforDiscount = json['priceBeforDiscount'];
    discount = json['discount'];
    callStatus = json['callStatus'];
    specialDiscount = json['specialDiscount'];
    star = json['star'];
    category = json['category'];
  }
  int? id;
  String? image;
  String? name;
  String? price;
  String? priceBeforDiscount;
  int? discount;
  int? callStatus;
  int? specialDiscount;
  int? star;
  String? category;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['image'] = image;
    map['name'] = name;
    map['price'] = price;
    map['priceBeforDiscount'] = priceBeforDiscount;
    map['discount'] = discount;
    map['callStatus'] = callStatus;
    map['specialDiscount'] = specialDiscount;
    map['star'] = star;
    map['category'] = category;
    return map;
  }
}

class Categories {
  Categories({
    this.id,
    this.title,
    this.img,
    this.icon,
    this.childs,
  });

  Categories.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    img = json['img'];
    icon = json['icon'];
    if (json['childs'] != null) {
      childs = [];
      json['childs'].forEach((v) {
        childs?.add(Childs.fromJson(v));
      });
    }
  }
  int? id;
  String? title;
  String? img;
  String? icon;
  List<Childs>? childs;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['img'] = img;
    map['icon'] = icon;
    if (childs != null) {
      map['childs'] = childs?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Childs {
  Childs({
    this.id,
    this.title,
    this.img,
    this.icon,
    this.childs,
  });

  Childs.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    img = json['img'];
    icon = json['icon'];
    childs = json['childs'];
  }
  int? id;
  String? title;
  String? img;
  String? icon;
  dynamic childs;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['img'] = img;
    map['icon'] = icon;
    map['childs'] = childs;
    return map;
  }
}

class Banners {
  Banners({
    this.sizeClass,
    this.location,
    this.image,
    this.link,
    this.priority,
    this.categoryId,
    this.updatedAt,
  });

  Banners.fromJson(dynamic json) {
    sizeClass = json['sizeClass'];
    location = json['location'];
    image = json['image'];
    link = json['link'];
    priority = json['priority'];
    categoryId = json['category_id'];
    updatedAt = json['updated_at'];
  }
  String? sizeClass;
  String? location;
  String? image;
  dynamic link;
  dynamic priority;
  int? categoryId;
  int? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sizeClass'] = sizeClass;
    map['location'] = location;
    map['image'] = image;
    map['link'] = link;
    map['priority'] = priority;
    map['category_id'] = categoryId;
    map['updated_at'] = updatedAt;
    return map;
  }
}

class Sliders {
  Sliders({
    this.img,
    this.link,
    this.updatedAt,
  });

  Sliders.fromJson(dynamic json) {
    img = json['img'];
    link = json['link'];
    updatedAt = json['updated_at'];
  }
  String? img;
  dynamic link;
  int? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['img'] = img;
    map['link'] = link;
    map['updated_at'] = updatedAt;
    return map;
  }
}
