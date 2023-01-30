import 'package:new_card_game/src/game_config/cards/_generic/effects/box_of_thieves.dart';
import 'package:new_card_game/src/game_config/cards/_generic/effects/double_death.dart';
import 'package:new_card_game/src/game_config/cards/_generic/effects/flood_gate_open.dart';
import 'package:new_card_game/src/game_config/cards/_generic/effects/oh_boy.dart';
import 'package:new_card_game/src/game_config/cards/_generic/effects/party_change.dart';
import 'package:new_card_game/src/game_config/cards/_generic/effects/popcorn.dart';
import 'package:new_card_game/src/game_config/cards/_generic/effects/wishing_well.dart';
import 'package:new_card_game/src/game_config/cards/_generic/jobs/card_master.dart';
import 'package:new_card_game/src/game_config/cards/_generic/jobs/card_trader.dart';
import 'package:new_card_game/src/game_config/cards/cynet/creatures/injector.dart';
import 'package:new_card_game/src/game_config/cards/cynet/creatures/malice.dart';
import 'package:new_card_game/src/game_config/cards/cynet/creatures/zero_day.dart';
import 'package:new_card_game/src/game_config/cards/cynet/effects/bugs_galore.dart';
import 'package:new_card_game/src/game_config/cards/cynet/effects/hello_world.dart';
import 'package:new_card_game/src/game_config/cards/cynet/effects/probability_modulator.dart';
import 'package:new_card_game/src/game_config/cards/cynet/items/phishing.dart';
import 'package:new_card_game/src/game_config/cards/cynet/items/viral_duplication.dart';
import 'package:new_card_game/src/game_config/cards/cynet/jobs/bug_tracker.dart';
import 'package:new_card_game/src/game_config/cards/cynet/jobs/issue_tracker.dart';

/// The first set of the game.
/// Consists of 54 unique cards.
/// Currently 19 cards are planned, 35 slots are open.
const aNewBeginning = {
  // Cynet
  // effects
  cynetBugsGalore,
  cynetProbabilityModulator,
  cynetHelloWorld,
  // items
  cynetPhishing,
  cynetViralDuplication,
  // creatures
  cynetInjector,
  cynetMalice,
  cynetZeroDay,
  // jobs
  bugTracker,
  issueTracker,

  // Expawdition

  // Generic
  // effects
  boxOfThieves,
  doubleDeath,
  floodgateOpen,
  ohBoy,
  partyChange,
  popcorn,
  wishingWell,
  // jobs
  cardMaster,
  cardTrader,
};
