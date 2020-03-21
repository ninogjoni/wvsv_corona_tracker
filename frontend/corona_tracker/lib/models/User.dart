//https://www.who.int/news-room/q-a-detail/q-a-coronaviruses#:~:text=symptoms

enum Status {
  uninfectious,
  infectious,
  suspicion
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
      case Status.uninfectious:
        return "Nicht ansteckend";
        break;
      case Status.infectious:
        return 'Ansteckend';
        break;
      case Status.suspicion:
        return 'Verdacht';
        break;
      default:
        return 'uninfectious';
    }
  }
}