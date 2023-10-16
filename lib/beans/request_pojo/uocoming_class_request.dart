class UpcomingClassRequest {
  int? noteId;
  int? offset;
  int? limit;

  UpcomingClassRequest({this.noteId, this.offset, this.limit});

  UpcomingClassRequest.fromJson(Map<String, dynamic> json) {
    noteId = json['noteId'];
    offset = json['offset'];
    limit = json['limit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['noteId'] = this.noteId;
    data['offset'] = this.offset;
    data['limit'] = this.limit;
    return data;
  }
}
