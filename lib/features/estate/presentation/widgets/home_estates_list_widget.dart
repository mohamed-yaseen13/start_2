import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:start2/core/models/card_entity.dart';
import 'package:start2/core/models/card_mapper.dart';
import 'package:start2/core/widgets/card_list_widget.dart';
import 'package:start2/features/estate/presentation/providers/estate_provider.dart';

class HomeEstatesListWidget extends StatelessWidget {
  const HomeEstatesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final estateProvider = context.watch<EstateProvider>();
    final List<CardEntity> cards = CardMapper.toCardEntityList(
      estateProvider.estates,
    );

    return CardListWidget(text: 'estates', cards: cards);
  }
}
