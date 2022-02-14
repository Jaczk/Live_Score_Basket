class BasketMatch {
  int id;
  String date;
  Status status;
  League league;
  Teams home;
  Teams away;
  scoresHome scoreshome;
  scoresAway scoresaway;
  BasketMatch(this.date, this.id, this.league, this.home, this.away,
      this.status, this.scoreshome, this.scoresaway);
  factory BasketMatch.fromJson(Map<String, dynamic> json) {
    return BasketMatch(
      json['id'],
      json['date'],
      League.fromJson(json['league']),
      Teams.fromJson(json['teams']['home']),
      Teams.fromJson(json['teams']['away']),
      Status.fromJson(json['status']),
      scoresHome.fromJson(json['scores']['home']),
      scoresAway.fromJson(json['scores']['away']),
    );
  }
}

class Status {
  int timer;
  String long;
  Status(this.timer, this.long);

  factory Status.fromJson(Map<String, dynamic> json) {
    return Status(json['timer'], json['long']);
  }
}

class League {
  int id;
  String name;
  String season;
  String logo;
  League(this.id, this.name, this.season, this.logo);
  factory League.fromJson(Map<String, dynamic> json) {
    return League(json['id'], json['name'], json['season'], json['logo']);
  }
}

class Teams {
  int id;
  String name;
  String logo;
  Teams(this.id, this.name, this.logo);
  factory Teams.fromJson(Map<String, dynamic> json) {
    return Teams(json['id'], json['name'], json['logo']);
  }
}

class Scores {
  int quarter_1;
  int quarter_2;
  int quarter_3;
  int quarter_4;
  int total;
  Scores(this.quarter_1, this.quarter_2, this.quarter_3, this.quarter_4,
      this.total);
  factory Scores.fromJson(Map<String, dynamic> json) {
    return Scores(json['quarter_1'], json['quarter_2'], json['quarter_3'],
        json['quarter_4'], json['total']);
  }
}

class scoresHome {
  Scores scoreHome;
  scoresHome(this.scoreHome);

  factory scoresHome.fromJson(Map<String, dynamic> json) {
    return scoresHome(Scores.fromJson(json['scores']['home']));
  }
}

class scoresAway {
  Scores scoreAway;
  scoresAway(this.scoreAway);

  factory scoresAway.fromJson(Map<String, dynamic> json) {
    return scoresAway(Scores.fromJson(json['scores']['away']));
  }
}
