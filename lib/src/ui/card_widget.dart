import 'package:flutter/material.dart' hide Card;
import 'package:image_downloader_web/image_downloader_web.dart';
import 'package:new_card_game/src/game_config/card.dart';
import 'package:new_card_game/src/game_config/creature.dart';
import 'package:new_card_game/src/game_config/effect.dart';
import 'package:new_card_game/src/game_config/item.dart';
import 'package:new_card_game/src/game_config/job.dart';
import 'package:widgets_to_image/widgets_to_image.dart';

const effectTextStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w500,
);
const effectHeadingTextStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w600,
);

class CardWidget extends StatefulWidget {
  const CardWidget({
    required this.card,
    this.height = 600,
    super.key,
  });

  final Card card;
  final double height;

  static const aspectRatio = 63.5 / 88.9;

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  final WidgetsToImageController controller = WidgetsToImageController();
  var _loading = false;
  @override
  Widget build(BuildContext context) {
    var card = widget.card;
    return InkWell(
      onTap: () async {
        if (_loading) return;
        _loading = true;

        var imageData = await controller.capture();
        if (imageData != null) {
          await WebImageDownloader.downloadImageFromUInt8List(
            uInt8List: imageData,
            name: '${card.name}.png',
          );
        }
        _loading = false;
      },
      child: WidgetsToImage(
        controller: controller,
        child: SizedBox(
          width: widget.height * CardWidget.aspectRatio,
          height: widget.height,
          child: Stack(
            children: [
              Positioned.fill(
                child: CardBackground(
                  card: widget.card,
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: CardAttribute(
                  card: card,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardAttribute extends StatelessWidget {
  const CardAttribute({
    required this.card,
    super.key,
  });

  final Card card;

  @override
  Widget build(BuildContext context) {
    var card = this.card;
    String text = 'Item';
    if (card is Creature) {
      text = card.attribute.name;
    }
    if (card is Effect) {
      text = 'Effect';
    }
    if (card is Job) {
      text = 'Job';
    }

    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.blueGrey.shade600,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
          ),
        ],
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: const Alignment(0, 0.5),
        children: [
          Positioned.fill(
            child: Center(
              child: Text(
                text[0],
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blueGrey.shade900,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          Positioned(
            left: -10,
            right: -10,
            bottom: 5,
            child: Align(
              alignment: const Alignment(0, 1.2),
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      color: Colors.black26,
                      blurRadius: 3,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardBackground extends StatelessWidget {
  const CardBackground({
    required this.card,
    super.key,
  });

  final Card card;

  @override
  Widget build(BuildContext context) {
    var color = Colors.amber.shade200;
    if (card is Effect) {
      color = Colors.green.shade800;
    }
    if (card is Item) {
      color = Colors.blue.shade400;
    }
    if (card is Job) {
      color = Colors.grey.shade700.withRed(100);
    }
    var theme = Theme.of(context);
    return Container(
      color: Colors.brown.shade600.withGreen(150),
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          color: color,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                left: 16,
                top: 4,
                bottom: 4,
              ),
              color: Colors.blueGrey.shade700.withOpacity(0.7),
              child: Text(
                card.name,
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 272,
                  width: 272,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned.fill(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          color: Colors.black26,
                          child: Container(
                            height: 240,
                            width: 240,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(card.image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: ArchetypeDisplay(
                          card: card,
                        ),
                      ),
                      Positioned(
                        left: 0,
                        bottom: 0,
                        child: CreatureTypeDisplay(
                          card: card,
                        ),
                      ),
                      Positioned(
                        bottom: -15,
                        right: -15,
                        child: ResourceDisplay(
                          card: card,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 272,
                    child: CardSidebar(
                      card: card,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: CardBody(card: card),
            ),
          ],
        ),
      ),
    );
  }
}

class ArchetypeDisplay extends StatelessWidget {
  const ArchetypeDisplay({
    required this.card,
    super.key,
  });

  final Card card;

  @override
  Widget build(BuildContext context) {
    String? archetype;
    var card = this.card;
    if (card is Effect) {
      archetype = card.archetype;
    }
    if (card is Item) {
      archetype = card.archetype;
    }
    if (card is Creature) {
      archetype = card.archetype;
    }
    if (archetype != null) {
      var theme = Theme.of(context);
      return Container(
        width: 180,
        padding: const EdgeInsets.only(
          left: 16,
          top: 4,
          bottom: 4,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(20),
          ),
          color: Colors.blueGrey.shade200,
        ),
        child: Text(
          archetype,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      );
    }
    return const SizedBox.shrink();
  }
}

class ResourceDisplay extends StatelessWidget {
  const ResourceDisplay({
    super.key,
    required this.card,
  });

  final Card card;

  @override
  Widget build(BuildContext context) {
    var card = this.card;
    ResourceType? type;
    int amount = 1;
    if (card is Creature) {
      type = card.craftingValue;
      amount = card.craftingAmount;
    }
    if (card is Job) {
      type = card.resourceType;
    }
    if (type != null) {
      return ResourceIcon(type: type, amount: amount);
    }
    return const SizedBox.shrink();
  }
}

class ResourceIcon extends StatelessWidget {
  const ResourceIcon({
    super.key,
    required this.type,
    required this.amount,
  });

  final ResourceType type;
  final int amount;

  @override
  Widget build(BuildContext context) {
    var color = Colors.primaries[type.index % Colors.primaries.length];
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
          ),
        ],
        borderRadius: BorderRadius.circular(25),
        color: color,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: Center(
              child: Text(
                type.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          if (amount > 1) ...[
            Positioned(
              top: -5,
              right: -5,
              child: Text(
                'X$amount',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  shadows: [
                    Shadow(
                      color: color,
                      blurRadius: 3,
                    ),
                  ],
                ),
              ),
            ),
          ]
        ],
      ),
    );
  }
}

class CreatureTypeDisplay extends StatelessWidget {
  const CreatureTypeDisplay({
    super.key,
    required this.card,
  });

  final Card card;

  @override
  Widget build(BuildContext context) {
    String? creatureType;
    var card = this.card;
    if (card is Creature) {
      creatureType = card.type;
    }
    if (card is Job) {
      creatureType = 'Tier ${card.tier}';
    }
    if (creatureType != null) {
      var theme = Theme.of(context);
      return Container(
        width: 120,
        padding: const EdgeInsets.only(
          left: 16,
          top: 4,
          bottom: 4,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
          ),
          color: Colors.blueGrey.shade200,
        ),
        child: Text(
          creatureType,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      );
    }
    return const SizedBox.shrink();
  }
}

class CardSidebar extends StatelessWidget {
  const CardSidebar({
    required this.card,
    super.key,
  });

  final Card card;

  @override
  Widget build(BuildContext context) {
    var card = this.card;
    if (card is Creature) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 12,
          ),
          for (var go in card.gatheringOpportunities) ...[
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  ResourceIcon(type: go.resourceType, amount: go.amount),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(4.0),
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          for (var chance in go.chances) ...[
                            Text(
                              '$chance',
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                          ]
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]
        ],
      );
    }
    return const SizedBox.shrink();
  }
}

class CardBody extends StatelessWidget {
  const CardBody({
    required this.card,
    super.key,
  });

  final Card card;

  @override
  Widget build(BuildContext context) {
    var card = this.card;
    if (card is Effect) {
      return EffectBody(effect: card);
    }
    if (card is Job) {
      return JobBody(job: card);
    }
    if (card is Item) {
      return ItemBody(item: card);
    }
    if (card is Creature) {
      return CreatureBody(creature: card);
    }
    return const Placeholder();
  }
}

class EffectBody extends StatelessWidget {
  const EffectBody({
    required this.effect,
    super.key,
  });

  final Effect effect;

  @override
  Widget build(BuildContext context) {
    return CostWidget(
      cost: effect.cost,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8.0),
            Text(
              effect.moveType.map((e) => e.name).join('/'),
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              effect.description,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemBody extends StatelessWidget {
  const ItemBody({
    required this.item,
    super.key,
  });

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
          alignment: Alignment.center,
          child: Text(
            item.requirement,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Expanded(
          child: CostWidget(
            cost: item.cost,
            child: Container(
              padding: const EdgeInsets.all(12).copyWith(top: 4),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (item.placementEffect != null) ...[
                    const Text(
                      'Place',
                      style: effectHeadingTextStyle,
                    ),
                    Text(
                      item.placementEffect!,
                      style: effectTextStyle,
                    ),
                  ],
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Equip',
                    style: effectHeadingTextStyle,
                  ),
                  Text(
                    item.equipEffect,
                    style: effectTextStyle,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class JobBody extends StatelessWidget {
  const JobBody({
    required this.job,
    super.key,
  });

  final Job job;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          const SizedBox(height: 16.0),
          for (var reward in job.rewards) ...[
            JobRewardDisplay(reward: reward),
            const SizedBox(
              height: 4,
            ),
          ],
        ],
      ),
    );
  }
}

class JobRewardDisplay extends StatelessWidget {
  const JobRewardDisplay({
    required this.reward,
    super.key,
  });

  final JobReward reward;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade700,
      ),
      child: Row(
        children: [
          Text(
            '${reward.cost}',
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 12),
          if (reward.pointReward != null) ...[
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.blueGrey.shade200,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '${reward.pointReward}',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ] else ...[
            Expanded(
              child: Text(
                '${reward.effectReward}',
                style: effectTextStyle.copyWith(
                  color: Colors.white,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ]
        ],
      ),
    );
  }
}

class CreatureBody extends StatelessWidget {
  const CreatureBody({
    required this.creature,
    super.key,
  });

  final Creature creature;

  @override
  Widget build(BuildContext context) {
    return CostWidget(
      defence: creature.defence,
      cost: creature.cost,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const SizedBox(
              height: 8.0,
            ),
            for (var move in creature.moves) ...[
              MoveLine(move: move),
            ]
          ],
        ),
      ),
    );
  }
}

class MoveLine extends StatelessWidget {
  const MoveLine({
    required this.move,
    super.key,
  });

  final Move move;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white24,
        border: Border.all(),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.centerLeft,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 12),
              SizedBox(
                width: 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (var type in move.moveTypes) ...[
                      Text(
                        type.name,
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              Expanded(
                child: Text(
                  move.effect,
                ),
              ),
              if (move.damage > 0) ...[
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.red.shade300,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '${move.damage}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ]
            ],
          ),
          Positioned(
            left: -20,
            child: Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.blueGrey.shade200,
              ),
              alignment: Alignment.center,
              child: Text(
                '${move.cost}',
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CostWidget extends StatelessWidget {
  const CostWidget({
    required this.cost,
    required this.child,
    this.defence,
    super.key,
  });

  final Widget child;
  final int cost;
  final int? defence;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Stack(
      children: [
        Positioned.fill(child: child),
        Positioned(
          left: 0,
          bottom: 0,
          child: Container(
            width: 60,
            padding: const EdgeInsets.all(4),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
              ),
              color: Colors.blueGrey.shade200,
            ),
            child: Text(
              '$cost',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
        ),
        if (defence != null) ...[
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              width: 60,
              padding: const EdgeInsets.all(4),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                ),
                color: Colors.limeAccent.shade400,
              ),
              child: Text(
                '$defence',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}
