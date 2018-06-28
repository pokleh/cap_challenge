import 'package:cap_challenge/logic/app_state.dart';
import 'package:cap_challenge/models/challenge.dart';

import 'actions.dart';

AppState reduce(AppState state, action) {
  print("reducer sees ${action.runtimeType}");
  if (action is UserProvidedAction) {
    return state.copyWith(user: action.user);
  } else if (action is PointsUpdatedAction) {
    return state.copyWith(points: action.points);
  } else if (action is TicketsUpdatedAction) {
    return state.copyWith(tickets: action.tickets);
  } else if (action is CounterUpdatedAction) {
    return state.copyWith(counter: action.counter);
  } else if (action is RankingUpdatedAction) {
    return state.copyWith(usersRanking: action.ranking);
  } else if (action is ChallengesUpdatedAction) {
    return state.copyWith(challenges: action.challenges);
  } else if (action is ChallengeAddedAction) {
    return state.copyWith(challenges: state.challenges..add(action.challenge));
  } else if (action is ChallengeUpdatedAction) {
    List<Challenge> challenges = new List.from(state.challenges);
    challenges
        .singleWhere((challenge) => challenge.key == action.key)
        .isCompleted = action.isCompleted;
    return state.copyWith(challenges: challenges);
  } else if (action is CapsChangedAction) {
    return state.copyWith(collection: action.collection);
  }
  return state;
}