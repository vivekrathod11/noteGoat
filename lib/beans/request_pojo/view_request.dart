class ViewRequest {
  Filter? filter;
  Pagination? pagination;

  ViewRequest({this.filter, this.pagination});

  ViewRequest.fromJson(Map<String, dynamic> json) {
    filter =
    json['filter'] != null ? new Filter.fromJson(json['filter']) : null;
    pagination = json['pagination'] != null
        ? new Pagination.fromJson(json['pagination'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.filter != null) {
      data['filter'] = this.filter!.toJson();
    }
    if (this.pagination != null) {
      data['pagination'] = this.pagination!.toJson();
    }
    return data;
  }
}

class Filter {
  String? consumerId;
  String? directoryId;
  String? noteId;
  String? globalSearch;

  Filter({this.consumerId, this.directoryId, this.noteId, this.globalSearch});

  Filter.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumerId'];
    directoryId = json['directoryId'];
    noteId = json['noteId'];
    globalSearch = json['globalSearch'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumerId'] = this.consumerId;
    data['directoryId'] = this.directoryId;
    data['noteId'] = this.noteId;
    data['globalSearch'] = this.globalSearch;
    return data;
  }
}

class Pagination {
  int? page;
  int? size;
  String? sortBy;
  String? sortOrder;

  Pagination({this.page, this.size, this.sortBy, this.sortOrder});

  Pagination.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    size = json['size'];
    sortBy = json['sortBy'];
    sortOrder = json['sortOrder'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = this.page;
    data['size'] = this.size;
    data['sortBy'] = this.sortBy;
    data['sortOrder'] = this.sortOrder;
    return data;
  }
}
