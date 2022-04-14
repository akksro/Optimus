class Statistics {
  String createdAt;
  String loggedAt;
  String lastPasswordUpdatedAt;
  String isLoggedin;

  Statistics(this.createdAt, this.loggedAt, this.lastPasswordUpdatedAt,
      this.isLoggedin);

  Statistics.fromJson(Map<String, dynamic> json)
      : createdAt = json['createdAt'],
        loggedAt = json['loggedAt'],
        lastPasswordUpdatedAt = json['lastPasswordUpdatedAt'],
        isLoggedin = json['isLoggedin'];

  Map<String, dynamic> toJson() => {
        'createdAt': createdAt,
        'loggedAt': loggedAt,
        'lastPasswordUpdatedAt': lastPasswordUpdatedAt,
        'isLoggedin': isLoggedin
      };
}
