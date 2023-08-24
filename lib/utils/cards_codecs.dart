import '../transport/protos/generated/intermediate.pb.dart';

enum GameResults {
  push(value: 1, name: 'PUSH'),
  fold(value: 2, name: 'FOLD'),
  win(value: 3, name: 'WIN'),
  lose(value: 4, name: 'LOSE'),
  notQualified(value: 5, name: 'NOT QUALIFIED');

  final int value;
  final String name;
  const GameResults({required this.value, required this.name});
}

enum Suits {
  spade(value: 0, name: 'SPADE'),
  heart(value: 1, name: 'HEART'),
  diams(value: 2, name: 'DIAMS'),
  club(value: 3, name: 'CLUB');

  final int value;
  final String name;

  const Suits({required this.value, required this.name});
}

enum Values {
  val2(value: 0, name: '2'),
  val3(value: 1, name: '3'),
  val4(value: 2, name: '4'),
  val5(value: 3, name: '5'),
  val6(value: 4, name: '6'),
  val7(value: 5, name: '7'),
  val8(value: 6, name: '8'),
  val9(value: 7, name: '9'),
  val10(value: 8, name: '10'),
  jack(value: 9, name: 'J'),
  queen(value: 10, name: 'Q'),
  king(value: 11, name: 'K'),
  ace(value: 12, name: 'A');

  final int value;
  final String name;

  const Values({required this.value, required this.name});
}

String decodeCard(GameStatisticData_CardDescription card) {
  String value = 'unknown';
  String suit = 'unknown';
  for (var element in Values.values) {
    if (element.value == card.value) {
      value = element.name;
      break;
    }
  }
  for (var element in Suits.values) {
    if (element.value == card.suit)  {
      suit = element.name;
      break;
    }
  }
  return '$suit-$value';
}

String decodeHand(List<GameStatisticData_CardDescription> cards) {
  String hand = '';
  for (var element in cards) {
    hand += decodeCard(element);
    hand += ', ';
  }
  return hand;
}

String decodeGameResult(int result) {
  for (var element in GameResults.values) {
    if (element.value == result) return element.name;
  }
  return 'unknown';
}