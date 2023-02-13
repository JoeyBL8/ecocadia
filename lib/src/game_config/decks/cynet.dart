import 'package:new_card_game/src/game_config/cards/_generic/creatures/double_decker.dart';
import 'package:new_card_game/src/game_config/cards/_generic/creatures/pillow_magician.dart';
import 'package:new_card_game/src/game_config/cards/_generic/effects/box_of_thieves.dart';
import 'package:new_card_game/src/game_config/cards/_generic/effects/double_death.dart';
import 'package:new_card_game/src/game_config/cards/_generic/effects/flood_gate_open.dart';
import 'package:new_card_game/src/game_config/cards/_generic/effects/oh_boy.dart';
import 'package:new_card_game/src/game_config/cards/_generic/effects/wishing_well.dart';
import 'package:new_card_game/src/game_config/cards/_generic/jobs/card_master.dart';
import 'package:new_card_game/src/game_config/cards/_generic/jobs/card_trader.dart';
import 'package:new_card_game/src/game_config/cards/_generic/jobs/nurse.dart';
import 'package:new_card_game/src/game_config/cards/cynet/creatures/digiwipe.dart';
import 'package:new_card_game/src/game_config/cards/cynet/creatures/injector.dart';
import 'package:new_card_game/src/game_config/cards/cynet/creatures/malice.dart';
import 'package:new_card_game/src/game_config/cards/cynet/creatures/zero_day.dart';
import 'package:new_card_game/src/game_config/cards/cynet/effects/hello_world.dart';
import 'package:new_card_game/src/game_config/cards/cynet/effects/probability_modulator.dart';
import 'package:new_card_game/src/game_config/cards/cynet/effects/ransomware.dart';
import 'package:new_card_game/src/game_config/cards/cynet/items/phishing.dart';
import 'package:new_card_game/src/game_config/cards/cynet/items/viral_duplication.dart';
import 'package:new_card_game/src/game_config/cards/cynet/jobs/bug_tracker.dart';
import 'package:new_card_game/src/game_config/cards/cynet/jobs/issue_tracker.dart';
import 'package:new_card_game/src/game_config/cards/cynet/jobs/tester.dart';
import 'package:new_card_game/src/game_config/job.dart';

const deckCynet = [
  cynetDigiwipe,
  cynetDigiwipe,
  cynetDigiwipe,
  cynetInjector,
  cynetInjector,
  cynetInjector,
  cynetMalice,
  cynetMalice,
  cynetMalice,
  cynetZeroDay,
  cynetZeroDay,
  cynetZeroDay,
  cynetProbabilityModulator,
  cynetProbabilityModulator,
  cynetViralDuplication,
  cynetViralDuplication,
  cynetViralDuplication,
  cynetHelloWorld,
  cynetHelloWorld,
  cynetRansomware,
  cynetRansomware,
  cynetRansomware,
  cynetPhishing,
  cynetPhishing,
  cynetPhishing,
  genericOhBoy,
  genericOhBoy,
  genericOhBoy,
  genericFloodgateOpen,
  genericFloodgateOpen,
  genericFloodgateOpen,
  genericBoxOfThieves,
  genericBoxOfThieves,
  genericDoubleDeath,
  genericDoubleDeath,
  genericPillowMagician,
  genericPillowMagician,
  genericPillowMagician,
  genericWishingWell,
  genericWishingWell,
  genericWishingWell,
];

const jobDeckCynet = <Job>[
  bugTracker,
  bugTracker,
  issueTracker,
  issueTracker,
  issueTracker,
  tester,
  tester,
  tester,
  genericCardMaster,
  genericCardMaster,
  genericCardTrader,
  genericCardTrader,
  genericNurse,
  genericNurse,
  genericNurse,
];
