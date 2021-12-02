class model_dashboard_section {
  String message;
  List<Details> details;
  String result;
  String style;

  model_dashboard_section(
      {this.message, this.details, this.result, this.style});

  model_dashboard_section.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    if (json['details'] != null) {
      details = new List<Details>();
      json['details'].forEach((v) {
        details.add(new Details.fromJson(v));
      });
    }
    result = json['result'];
    style = json['style'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.details != null) {
      data['details'] = this.details.map((v) => v.toJson()).toList();
    }
    data['result'] = this.result;
    data['style'] = this.style;
    return data;
  }
}

class Details {
  String slno;
  String dashSlno;
  String type;
  String details;
  String image;
  String displayName;
  String company;
  String rate;
  String offer;

  Details(
      {this.slno,
        this.dashSlno,
        this.type,
        this.details,
        this.image,
        this.displayName,
        this.company,
        this.rate,
        this.offer});

  Details.fromJson(Map<String, dynamic> json) {
    slno = json['slno'];
    dashSlno = json['dash_slno'];
    type = json['type'];
    details = json['details'];
    image = json['image'];
    displayName = json['display_name'];
    company = json['company'];
    rate = json['rate'];
    offer = json['offer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['slno'] = this.slno;
    data['dash_slno'] = this.dashSlno;
    data['type'] = this.type;
    data['details'] = this.details;
    data['image'] = this.image;
    data['display_name'] = this.displayName;
    data['company'] = this.company;
    data['rate'] = this.rate;
    data['offer'] = this.offer;
    return data;
  }
}
