import 'package:freezed_annotation/freezed_annotation.dart';
import '../mappers/ads_source_mapper.dart';
import 'hand_description_model.dart';

part 'game_statisctic_model.freezed.dart';


@freezed
class GameStatisticModel with _$GameStatisticModel {
  const factory GameStatisticModel({
    required DateTime dateTime,
    required int ante,
    required int bet,
    required int win,
    required String playerId,
    required int level,
    required int balance,
    required int goldBalance,
    required HandDescriptionModel dealerHand,
    required HandDescriptionModel playerHand,
    required HandDescriptionModel playerUnchangedHand,
    required GameResults gameResults,
  }) = _GameStatisticModel;

}
