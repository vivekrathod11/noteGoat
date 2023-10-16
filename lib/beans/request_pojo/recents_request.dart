class RecentsRequest {
  String? noteId;
  int? offset;
  int? limit;

  RecentsRequest({this.noteId, this.offset, this.limit});

  RecentsRequest.fromJson(Map<String, dynamic> json) {
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
