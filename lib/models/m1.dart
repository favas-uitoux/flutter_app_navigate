class model_dashboard {
  String message;
  String dat;
  List<Details> details;
  String result;

  model_dashboard({this.message, this.dat, this.details, this.result});

  model_dashboard.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    dat = json['dat'];
    if (json['details'] != null) {
      details = new List<Details>();
      json['details'].forEach((v) {
        details.add(new Details.fromJson(v));
      });
    }
    result = json['result'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['dat'] = this.dat;
    if (this.details != null) {
      data['details'] = this.details.map((v) => v.toJson()).toList();
    }
    data['result'] = this.result;
    return data;
  }
}

class Details {
  String slno;
  String orderNo;
  String displayName;
  String status;
  String style;
  String type;
  String count;

  Details(
      {this.slno,
      this.orderNo,
      this.displayName,
      this.status,
      this.style,
      this.type,
      this.count});

  Details.fromJson(Map<String, dynamic> json) {
    slno = json['slno'];
    orderNo = json['order_no'];
    displayName = json['display_name'];
    status = json['status'];
    style = json['style'];
    type = json['type'];
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['slno'] = this.slno;
    data['order_no'] = this.orderNo;
    data['display_name'] = this.displayName;
    data['status'] = this.status;
    data['style'] = this.style;
    data['type'] = this.type;
    data['count'] = this.count;
    return data;
  }
}
