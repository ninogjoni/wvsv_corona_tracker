//https://www.who.int/news-room/q-a-detail/q-a-coronaviruses#:~:text=symptoms

enum Status {
  unknown,
  suspicion,
  infected,
  cured
}

enum Symptoms {
  fever,
  tiredness,
  dryCough,
  achesPains,
//  nasalCongestion,
//  runnyNose,
//  soreThroat,
//  Diarrhea
}

class User {
  static const String status = '';


// TODO: Needs an alternative as internationalization depends on context
// Which isn't available here
  String typesOfStatus(Status status) {
    switch(status) {
      case Status.unknown:
        return "Unbekannt";
        break;
      case Status.suspicion:
        return 'Verdacht';
        break;
      case Status.diseased:
        return 'Erkrankt';
        break;
      case Status.cured:
        return 'Geheilt';
        break;
      default:
        return 'Unbekannt';
    }
  }
}