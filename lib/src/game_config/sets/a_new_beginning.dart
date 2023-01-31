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
import 'package:new_card_game/src/game_config/cards/expawdition/creatures/aquanine.dart';
import 'package:new_card_game/src/game_config/cards/expawdition/creatures/archeostrich.dart';
import 'package:new_card_game/src/game_config/cards/expawdition/creatures/bloodsniffer.dart';
import 'package:new_card_game/src/game_config/cards/expawdition/creatures/cloudasher.dart';
import 'package:new_card_game/src/game_config/cards/expawdition/creatures/digs_hund.dart';
import 'package:new_card_game/src/game_config/cards/expawdition/creatures/expedinguin.dart';
import 'package:new_card_game/src/game_config/cards/expawdition/creatures/meteagle.dart';
import 'package:new_card_game/src/game_config/cards/expawdition/creatures/torchy_phoenix.dart';
import 'package:new_card_game/src/game_config/cards/expawdition/effects/all_bite_no_bark.dart';
import 'package:new_card_game/src/game_config/cards/expawdition/effects/elemental_flock.dart';
import 'package:new_card_game/src/game_config/cards/expawdition/effects/fetch.dart';
import 'package:new_card_game/src/game_config/cards/expawdition/effects/heavenly_woofer.dart';

/// The first set of the game.
/// Consists of 54 unique cards.
/// Currently 31 cards are planned, 23 slots are open.
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
  // effects
  expawditionFetch,
  expawditionHeavenlyWoofer,
  expawditionAllBiteNoBark,
  expawditionElementalFlock,
  // items
  // creatures
  expawditionAquanine,
  expawditionArcheostrich,
  expawditionBloodsniffer,
  expawditionCloudasher,
  expawditionDigsHund,
  expawditionExpedinguin,
  expawditionMeteagle,
  expawditionTorchyPhoenix,
  // jobs

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
