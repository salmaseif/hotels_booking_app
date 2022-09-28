import 'hotel.dart';
import 'Link_model.dart';
class hotelsSearchData {
  int? currentPage;
  List<Hotel>? hotelsList;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<Link>? links;
  Null? nextPageUrl;
  String? path;
  int? perPage;
  Null? prevPageUrl;
  int? to;
  int? total;

  hotelsSearchData(
      {this.currentPage,
        this.hotelsList,
        this.firstPageUrl,
        this.from,
        this.lastPage,
        this.lastPageUrl,
        this.links,
        this.nextPageUrl,
        this.path,
        this.perPage,
        this.prevPageUrl,
        this.to,
        this.total});

  hotelsSearchData.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    if (json['data'] != null) {
      hotelsList = <Hotel>[];
      json['data'].forEach((v) {
        hotelsList!.add(new Hotel.fromJson(v));
      });
    }
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    if (json['links'] != null) {
      links = <Link>[];
      json['links'].forEach((v) {
        links!.add(new Link.fromJson(v));
      });
    }
    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_page'] = this.currentPage;
    if (this.hotelsList != null) {
      data['data'] = this.hotelsList!.map((v) => v.toJson()).toList();
    }
    data['first_page_url'] = this.firstPageUrl;
    data['from'] = this.from;
    data['last_page'] = this.lastPage;
    data['last_page_url'] = this.lastPageUrl;
    if (this.links != null) {
      data['links'] = this.links!.map((v) => v.toJson()).toList();
    }
    data['next_page_url'] = this.nextPageUrl;
    data['path'] = this.path;
    data['per_page'] = this.perPage;
    data['prev_page_url'] = this.prevPageUrl;
    data['to'] = this.to;
    data['total'] = this.total;
    return data;
  }
}