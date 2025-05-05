import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sekiro App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SEKIRO SHADOWS DIE TWICE')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeButton(title: 'TROPHIES', page: TROPHIES()),
            HomeButton(title: 'BOSSES', page: BOSSES()),
            HomeButton(title: 'MINI-BOSSES', page: MINI_BOSSES()),
            HomeButton(title: 'PROSTHETIC TOOLS', page: PROSTHETIC_TOOLS()),
            HomeButton(title: 'IMPORTANT ITEMS', page: IMPORTANT_ITEMS()),
            HomeButton(title: 'ENDINGS', page: ENDINGS()),
            HomeButton(title: 'SKILLS', page: SKILLS()),
            HomeButton(title: 'NINJUTSU TECHNIQUES', page: NINJUTSU_TECHNIQUES()),
          ],
        ),
      ),
    );
  }
}

class HomeButton extends StatelessWidget {
  final String title;
  final Widget page;

  HomeButton({required this.title, required this.page});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: ElevatedButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => page)),
        child: Text(title),
      ),
    );
  }
}

class StandardScaffold extends StatelessWidget {
  final String title;
  final Widget body;

  StandardScaffold({required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: body,
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Voltar'),
        ),
      ),
    );
  }
}

// Telas principais
class TROPHIES extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardScaffold(
      title: 'Trophies',
      body: Center(child: Text('Conteúdo de Trophies')),
    );
  }
}

class BOSSES extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardScaffold(
      title: 'Bosses',
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            BossButton(title: 'Gyobu Oniwa', page: GyobuOniwaPage()),
            BossButton(title: 'Genichiro', page: GenichiroPage()),
            BossButton(title: 'Macacos da Biombo Dobrável', page: BiomboPage()),
            BossButton(title: 'Macaco Guardião', page: GuardiaoPage()),
            BossButton(title: 'Macaco Sem Cabeça', page: SemCabecaPage()),
            BossButton(title: 'Monge Falso', page: MongeFalsoPage()),
            BossButton(title: 'SS Isshin', page: SsIsshinPage()),
            BossButton(title: 'Monge Verdadeiro', page: MongeVerdadeiroPage()),
            BossButton(title: 'Dragão Divino', page: DragaoDivinoPage()),
            BossButton(title: 'Coruja Grande Shinobi', page: CorujaGrandePage()),
            BossButton(title: 'Lady Butterfly', page: LadyButterflyPage()),
            BossButton(title: 'Demônio do Ódio', page: DemonioPage()),
            BossButton(title: 'Isshin Ashina (Shura)', page: IsshinShuraPage()),
            BossButton(title: 'Pai Coruja (Purificação)', page: PaiCorujaPage()),
            BossButton(title: 'Genichiro Interior', page: GenichiroInteriorPage()),
            BossButton(title: 'Isshin Interior', page: IsshinInteriorPage()),
            BossButton(title: 'Coruja Interior', page: CorujaInteriorPage()),
          ],
        ),
      ),
    );
  }
}

class BossButton extends StatelessWidget {
  final String title;
  final Widget page;

  BossButton({required this.title, required this.page});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: ElevatedButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => page)),
        child: Text(title),
      ),
    );
  }
}

// Mini-telas de Bosses
Widget simpleDetailPage(String title, String content) {
  return StandardScaffold(
    title: title,
    body: Center(child: Text(content)),
  );
}

class GyobuOniwaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Gyobu Oniwa', 'Detalhes sobre Gyobu Oniwa');
}

class GenichiroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Genichiro', 'Detalhes sobre Genichiro');
}

class BiomboPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Macacos da Biombo', 'Detalhes sobre os Macacos');
}

class GuardiaoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Macaco Guardião', 'Detalhes sobre o Guardião');
}

class SemCabecaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Macaco Sem Cabeça', 'Detalhes sobre ele');
}

class MongeFalsoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Monge Falso', 'Detalhes sobre o falso monge');
}

class SsIsshinPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('SS Isshin', 'Detalhes sobre SS Isshin');
}

class MongeVerdadeiroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Monge Verdadeiro', 'Detalhes sobre o monge');
}

class DragaoDivinoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Dragão Divino', 'Detalhes sobre o dragão');
}

class CorujaGrandePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Coruja Grande Shinobi', 'Detalhes sobre ele');
}

class LadyButterflyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Lady Butterfly', 'Detalhes sobre ela');
}

class DemonioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Demônio do Ódio', 'Detalhes sobre o demônio');
}

class IsshinShuraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Isshin Shura', 'Detalhes sobre ele');
}

class PaiCorujaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Pai Coruja', 'Detalhes sobre o pai coruja');
}

class GenichiroInteriorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Genichiro Interior', 'Detalhes sobre ele');
}

class IsshinInteriorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Isshin Interior', 'Detalhes sobre ele');
}

class CorujaInteriorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Coruja Interior', 'Detalhes sobre a coruja interior');
}

// Outras telas principais
// Tela de Mini-Bosses
class MINI_BOSSES extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardScaffold(
      title: 'Mini-Bosses',
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            MiniBossButton(title: 'Ogre - Stairway', page: OgreStairwayPage()),
            MiniBossButton(title: 'Ogre - Inside antechamber - Castle', page: OgreInsideAntechamberPage()),
            MiniBossButton(title: 'Shichimen Warrior - Abandoned Dungeon', page: ShichimenAbandonedDungeonPage()),
            MiniBossButton(title: 'Shichimen Warrior - Depths Cave', page: ShichimenDepthsCavePage()),
            MiniBossButton(title: 'Shichimen Warrior - Fountain Head', page: ShichimenFountainHeadPage()),
            MiniBossButton(title: 'Drunkards - Hirata memory 1 - Juzuo', page: DrunkardsJuzuoPage()),
            MiniBossButton(title: 'Drunkards - Hirata memory 2 - Juzuo returns', page: DrunkardsJuzuoReturnsPage()),
            MiniBossButton(title: 'Drunkards - Hidden forest - Tokujiro', page: DrunkardsTokujiroPage()),
            MiniBossButton(title: 'Lone Shadow - In well near reservoir', page: LoneShadowReservoirPage()),
            MiniBossButton(title: 'Lone Shadow - Vilehand - Ashina Dojo', page: LoneShadowAshinaDojoPage()),
            MiniBossButton(title: 'Lone Shadow - Masanaga - Great serpent shrine', page: LoneShadowMasanagaPage()),
            MiniBossButton(title: 'Ashina Elites - Jinsuke Saze - Ashina Dojo', page: AshinaElitesJinsukePage()),
            MiniBossButton(title: 'Ashina Elites - Ujinari Mizuo - Second invasion', page: AshinaElitesUjinariPage()),
            MiniBossButton(title: 'Long Arm Centipede - Sen-un - Senpou temple', page: LongArmSenunPage()),
            MiniBossButton(title: 'Long Arm Centipede - Giraffe - Gun fort', page: LongArmGiraffePage()),
            MiniBossButton(title: 'Snakes Eyes - Shirufaji - Gun fort', page: SnakesEyesShirufajiPage()),
            MiniBossButton(title: 'Snakes Eyes - Shirahagi - Poison pool', page: SnakesEyesShirahagiPage()),
            MiniBossButton(title: 'Bulls - Blazing bull - Castle', page: BullsBlazingBullPage()),
            MiniBossButton(title: 'Bulls - Sakura bull - Fountain head palace', page: BullsSakuraBullPage()),
            MiniBossButton(title: 'Seven Spears of Ashina - Shikibu Toshikatsu Yamauchi - Moon tower', page: SevenSpearsShikibuPage()),
            MiniBossButton(title: 'Seven Spears of Ashina - Shume Masaji Oniwa - Ashina Reservoir', page: SevenSpearsShumePage()),
            MiniBossButton(title: 'Generals - Ashina - Naomori Kawarada', page: GeneralsNaomoriPage()),
            MiniBossButton(title: 'Generals - Ashina - Tenzen Yamauchi', page: GeneralsTenzenPage()),
            MiniBossButton(title: 'Generals - Ashina - Kuranosuke Matsumoto', page: GeneralsKuranosukePage()),
            MiniBossButton(title: 'Headless - Ashina Outskirts', page: HeadlessAshinaOutskirtsPage()),
            MiniBossButton(title: 'Headless - Sunken Valley', page: HeadlessSunkenValleyPage()),
            MiniBossButton(title: 'Headless - Ashina Depths', page: HeadlessAshinaDepthsPage()),
            MiniBossButton(title: 'Headless - Ashina Castle', page: HeadlessAshinaCastlePage()),
            MiniBossButton(title: 'Shinobi hunter - Hirata memory 1', page: ShinobiHunterHirataPage()),
            MiniBossButton(title: 'Shigekichi of the Red Guard - Fire guy', page: ShigekichiFireGuyPage()),
            MiniBossButton(title: 'Mist noble - Hidden forest', page: MistNoblePage()),
            MiniBossButton(title: 'O\'rin of water - Mibu village', page: OrinWaterPage()),
            MiniBossButton(title: 'Okami Leader - Lighting gal at Sakura tree', page: OkamiLeaderPage()),
            MiniBossButton(title: 'Armored Warrior - Senpou temple', page: ArmoredWarriorPage()),
          ],
        ),
      ),
    );
  }
}

class MiniBossButton extends StatelessWidget {
  final String title;
  final Widget page;

  MiniBossButton({required this.title, required this.page});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: ElevatedButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => page)),
        child: Text(title),
      ),
    );
  }
}

// Exemplo de página de detalhes para um mini-boss
Widget createDetailPage(String title, String content) {
  return StandardScaffold(
    title: title,
    body: Center(child: Text(content)),
  );
}

// Páginas de detalhes para cada mini-boss
class OgreStairwayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Ogre - Stairway', 'Detalhes sobre Ogre em Stairway');
}

class OgreInsideAntechamberPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Ogre - Inside antechamber - Castle', 'Detalhes sobre Ogre em Inside antechamber');
}

class ShichimenAbandonedDungeonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Shichimen Warrior - Abandoned Dungeon', 'Detalhes sobre Shichimen Warrior em Abandoned Dungeon');
}

class ShichimenDepthsCavePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Shichimen Warrior - Depths Cave', 'Detalhes sobre Shichimen Warrior em Depths Cave');
}

class ShichimenFountainHeadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Shichimen Warrior - Fountain Head', 'Detalhes sobre Shichimen Warrior em Fountain Head');
}

class DrunkardsJuzuoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Drunkards - Hirata memory 1 - Juzuo', 'Detalhes sobre Drunkards em Hirata memory 1');
}

class DrunkardsJuzuoReturnsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Drunkards - Hirata memory 2 - Juzuo returns', 'Detalhes sobre Drunkards em Hirata memory 2');
}

class DrunkardsTokujiroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Drunkards - Hidden forest - Tokujiro', 'Detalhes sobre Drunkards em Hidden forest');
}

class LoneShadowReservoirPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Lone Shadow - In well near reservoir', 'Detalhes sobre Lone Shadow em Reservoir');
}

// Páginas de detalhes para os mini-bosses restantes

class LoneShadowAshinaDojoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Lone Shadow - Vilehand - Ashina Dojo', 'Detalhes sobre Lone Shadow em Ashina Dojo');
}

class LoneShadowMasanagaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Lone Shadow - Masanaga - Great serpent shrine', 'Detalhes sobre Lone Shadow em Great Serpent Shrine');
}

class AshinaElitesJinsukePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Ashina Elites - Jinsuke Saze - Ashina Dojo', 'Detalhes sobre Ashina Elites em Ashina Dojo');
}

class AshinaElitesUjinariPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Ashina Elites - Ujinari Mizuo - Second invasion', 'Detalhes sobre Ashina Elites em Second Invasion');
}

class LongArmSenunPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Long Arm Centipede - Sen-un - Senpou temple', 'Detalhes sobre Long Arm Centipede em Senpou Temple');
}

class LongArmGiraffePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Long Arm Centipede - Giraffe - Gun fort', 'Detalhes sobre Long Arm Centipede em Gun Fort');
}

class SnakesEyesShirufajiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Snakes Eyes - Shirufaji - Gun fort', 'Detalhes sobre Snakes Eyes em Gun Fort');
}

class SnakesEyesShirahagiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Snakes Eyes - Shirahagi - Poison pool', 'Detalhes sobre Snakes Eyes em Poison Pool');
}

class BullsBlazingBullPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Bulls - Blazing bull - Castle', 'Detalhes sobre Bulls em Blazing Bull');
}

class BullsSakuraBullPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Bulls - Sakura bull - Fountain head palace', 'Detalhes sobre Bulls em Sakura Bull');
}

class SevenSpearsShikibuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Seven Spears of Ashina - Shikibu Toshikatsu Yamauchi - Moon tower', 'Detalhes sobre Seven Spears em Moon Tower');
}

class SevenSpearsShumePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Seven Spears of Ashina - Shume Masaji Oniwa - Ashina Reservoir', 'Detalhes sobre Seven Spears em Ashina Reservoir');
}

class GeneralsNaomoriPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Generals - Ashina - Naomori Kawarada', 'Detalhes sobre Generals em Ashina');
}

class GeneralsTenzenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Generals - Ashina - Tenzen Yamauchi', 'Detalhes sobre Generals em Ashina');
}

class GeneralsKuranosukePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Generals - Ashina - Kuranosuke Matsumoto', 'Detalhes sobre Generals em Ashina');
}

class HeadlessAshinaOutskirtsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Headless - Ashina Outskirts', 'Detalhes sobre Headless em Ashina Outskirts');
}

class HeadlessSunkenValleyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Headless - Sunken Valley', 'Detalhes sobre Headless em Sunken Valley');
}

class HeadlessAshinaDepthsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Headless - Ashina Depths', 'Detalhes sobre Headless em Ashina Depths');
}

class HeadlessAshinaCastlePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Headless - Ashina Castle', 'Detalhes sobre Headless em Ashina Castle');
}

class ShinobiHunterHirataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Shinobi hunter - Hirata memory 1', 'Detalhes sobre Shinobi Hunter em Hirata Memory');
}

class ShigekichiFireGuyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Shigekichi of the Red Guard - Fire guy', 'Detalhes sobre Shigekichi of the Red Guard em Fire guy');
}

class MistNoblePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Mist noble - Hidden forest', 'Detalhes sobre Mist Noble em Hidden Forest');
}

class OrinWaterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('O\'rin of water - Mibu village', 'Detalhes sobre O\'rin of Water em Mibu Village');
}

class OkamiLeaderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Okami Leader - Lighting gal at Sakura tree', 'Detalhes sobre Okami Leader em Lighting Gal at Sakura Tree');
}

class ArmoredWarriorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => simpleDetailPage('Armored Warrior - Senpou temple', 'Detalhes sobre Armored Warrior em Senpou Temple');
}


class PROSTHETIC_TOOLS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardScaffold(
      title: 'Prosthetic Tools',
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            ProstheticButton(title: 'Loaded Shuriken', page: LoadedShurikenPage()),
            ProstheticButton(title: 'Flame Vent', page: FlameVentPage()),
            ProstheticButton(title: 'Loaded Axe', page: LoadedAxePage()),
            ProstheticButton(title: 'Shinobi Firecracker', page: ShinobiFirecrackerPage()),
            ProstheticButton(title: 'Mist Raven', page: MistRavenPage()),
            ProstheticButton(title: 'Loaded Spear', page: LoadedSpearPage()),
            ProstheticButton(title: 'Sabimaru', page: SabimaruPage()),
            ProstheticButton(title: 'Loaded Umbrella', page: LoadedUmbrellaPage()),
            ProstheticButton(title: 'Divine Abduction', page: DivineAbductionPage()),
            ProstheticButton(title: 'Finger Whistle', page: FingerWhistlePage()),
          ],
        ),
      ),
    );
  }
}

class ProstheticButton extends StatelessWidget {
  final String title;
  final Widget page;

  ProstheticButton({required this.title, required this.page});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: ElevatedButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => page)),
        child: Text(title),
      ),
    );
  }
}

// Páginas de detalhes para as Prosthetic Tools

class LoadedShurikenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Loaded Shuriken', 'Detalhes sobre Loaded Shuriken');
}

class FlameVentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Flame Vent', 'Detalhes sobre Flame Vent');
}

class LoadedAxePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Loaded Axe', 'Detalhes sobre Loaded Axe');
}

class ShinobiFirecrackerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Shinobi Firecracker', 'Detalhes sobre Shinobi Firecracker');
}

class MistRavenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Mist Raven', 'Detalhes sobre Mist Raven');
}

class LoadedSpearPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Loaded Spear', 'Detalhes sobre Loaded Spear');
}

class SabimaruPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Sabimaru', 'Detalhes sobre Sabimaru');
}

class LoadedUmbrellaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Loaded Umbrella', 'Detalhes sobre Loaded Umbrella');
}

class DivineAbductionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Divine Abduction', 'Detalhes sobre Divine Abduction');
}

class FingerWhistlePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Finger Whistle', 'Detalhes sobre Finger Whistle');
}


class IMPORTANT_ITEMS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardScaffold(
      title: 'Important Items',
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            ImportantItemButton(title: 'Gota de Sangue de Dragão', page: GotaSangueDragaoPage()),
            ImportantItemButton(title: 'Texto Esotérico', page: TextoEsotericoPage()),
            ImportantItemButton(title: 'Texto de Passagem Flutuante', page: TextoPassagemFlutuantePage()),
            ImportantItemButton(title: 'Chave da Portaria', page: ChavePortariaPage()),
            ImportantItemButton(title: 'Semente de Cabaça', page: SementeCabacaPage()),
            ImportantItemButton(title: 'Chave do Templo Oculto', page: ChaveTemploOcultoPage()),
            ImportantItemButton(title: 'Kusabimaru', page: KusabimaruPage()),
            ImportantItemButton(title: 'Fragmento de Máscara', page: FragmentoMascaraPage()),
            ImportantItemButton(title: 'Remanescente de Memória', page: RemanescenteMemoriaPage()),
            ImportantItemButton(title: 'Monóculo Nightjar', page: MonoculoNightjarPage()),
            ImportantItemButton(title: 'Letra Ornamental', page: LetraOrnamentalPage()),
            ImportantItemButton(title: 'Contas de Oração', page: ContasOracaoPage()),
            ImportantItemButton(title: 'Colar de Oração', page: ColarOracaoPage()),
            ImportantItemButton(title: 'Descrição do Rato', page: DescricaoRatoPage()),
            ImportantItemButton(title: 'Cata-vento Vermelho e Branco', page: CataVentoVermelhoBrancoPage()),
            ImportantItemButton(title: 'Essência de Podridão', page: EssenciaPodridaoPage()),
            ImportantItemButton(title: 'Gota de Sakura', page: GotaSakuraPage()),
            ImportantItemButton(title: 'Prótese Shinobi', page: ProteseShinobiPage()),
            ImportantItemButton(title: 'Saquê Não Refinado', page: SakeNaoRefinadoPage()),
            ImportantItemButton(title: 'Cabaça Vermelha Murcha', page: CabacaVermelhaMurchaPage()),
            ImportantItemButton(title: 'Amuleto do Sino do Jovem Lorde', page: AmuletoSinoLordePage()),
            ImportantItemButton(title: 'Materiais de Atualização', page: MateriaisAtualizacaoPage()),
            ImportantItemButton(title: 'Lâmina Mortal', page: LaminaMortalPage()),
          ],
        ),
      ),
    );
  }
}

class ImportantItemButton extends StatelessWidget {
  final String title;
  final Widget page;

  ImportantItemButton({required this.title, required this.page});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: ElevatedButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => page)),
        child: Text(title),
      ),
    );
  }
}

// Páginas de detalhes para os itens importantes

class GotaSangueDragaoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Gota de Sangue de Dragão', 'Detalhes sobre Gota de Sangue de Dragão');
}

class TextoEsotericoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Texto Esotérico', 'Detalhes sobre Texto Esotérico');
}

class TextoPassagemFlutuantePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Texto de Passagem Flutuante', 'Detalhes sobre Texto de Passagem Flutuante');
}

class ChavePortariaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Chave da Portaria', 'Detalhes sobre Chave da Portaria');
}

class SementeCabacaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Semente de Cabaça', 'Detalhes sobre Semente de Cabaça');
}

class ChaveTemploOcultoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Chave do Templo Oculto', 'Detalhes sobre Chave do Templo Oculto');
}

class KusabimaruPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Kusabimaru', 'Detalhes sobre Kusabimaru');
}

class FragmentoMascaraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Fragmento de Máscara', 'Detalhes sobre Fragmento de Máscara');
}

class RemanescenteMemoriaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Remanescente de Memória', 'Detalhes sobre Remanescente de Memória');
}

class MonoculoNightjarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Monóculo Nightjar', 'Detalhes sobre Monóculo Nightjar');
}

class LetraOrnamentalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Letra Ornamental', 'Detalhes sobre Letra Ornamental');
}

class ContasOracaoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Contas de Oração', 'Detalhes sobre Contas de Oração');
}

class ColarOracaoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Colar de Oração', 'Detalhes sobre Colar de Oração');
}

class DescricaoRatoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Descrição do Rato', 'Detalhes sobre Descrição do Rato');
}

class CataVentoVermelhoBrancoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Cata-vento Vermelho e Branco', 'Detalhes sobre Cata-vento Vermelho e Branco');
}

class EssenciaPodridaoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Essência de Podridão', 'Detalhes sobre Essência de Podridão');
}

class GotaSakuraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Gota de Sakura', 'Detalhes sobre Gota de Sakura');
}

class ProteseShinobiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Prótese Shinobi', 'Detalhes sobre Prótese Shinobi');
}

class SakeNaoRefinadoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Saquê Não Refinado', 'Detalhes sobre Saquê Não Refinado');
}

class CabacaVermelhaMurchaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Cabaça Vermelha Murcha', 'Detalhes sobre Cabaça Vermelha Murcha');
}

class AmuletoSinoLordePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Amuleto do Sino do Jovem Lorde', 'Detalhes sobre Amuleto do Sino do Jovem Lorde');
}

class MateriaisAtualizacaoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Materiais de Atualização', 'Detalhes sobre Materiais de Atualização');
}

class LaminaMortalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Lâmina Mortal', 'Detalhes sobre Lâmina Mortal');
}


class ENDINGS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardScaffold(
      title: 'Endings',
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            EndingButton(title: 'Shura', page: ShuraPage()),
            EndingButton(title: 'Rebirth', page: RebirthPage()),
            EndingButton(title: 'Purification', page: PurificationPage()),
            EndingButton(title: 'Immortal Severance', page: ImmortalSeverancePage()),
          ],
        ),
      ),
    );
  }
}

class EndingButton extends StatelessWidget {
  final String title;
  final Widget page;

  EndingButton({required this.title, required this.page});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: ElevatedButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => page)),
        child: Text(title),
      ),
    );
  }
}

// Páginas de detalhes para os finais

class ShuraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Shura', 'Detalhes sobre o final Shura');
}

class RebirthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Rebirth', 'Detalhes sobre o final Rebirth');
}

class PurificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Purification', 'Detalhes sobre o final Purification');
}

class ImmortalSeverancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Immortal Severance', 'Detalhes sobre o final Immortal Severance');
}


class SKILLS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardScaffold(
      title: 'Skills',
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            SkillButton(title: 'Corte Rápido', page: CorteRapidoPage()),
            SkillButton(title: 'Corte Mortal', page: CorteMortalPage()),
            SkillButton(title: 'Corte Impiedoso', page: CorteImpiedosoPage()),
            SkillButton(title: 'Corte Esotérico', page: CorteEsotericoPage()),
            SkillButton(title: 'Corte Poderoso', page: CortePoderosoPage()),
            SkillButton(title: 'Corte de Atalho', page: CorteAtalhoPage()),
            SkillButton(title: 'Passagem Flutuante', page: PassagemFlutuantePage()),
            SkillButton(title: 'Empurrão de Dragão', page: EmpurraoDeDragaoPage()),
            SkillButton(title: 'Corte do Céu', page: CorteDoCeuPage()),
            SkillButton(title: 'Golpe da Águia', page: GolpeDaAguaPage()),
            SkillButton(title: 'Golpe em Espiral', page: GolpeEmEspiralPage()),
            SkillButton(title: 'Corte do Relâmpago', page: CorteRelampagoPage()),
            SkillButton(title: 'Golpe da Chama', page: GolpeDaChamaPage()),
            SkillButton(title: 'Golpe da Tempestade', page: GolpeDaTempestadePage()),
            SkillButton(title: 'Golpe Relâmpago', page: GolpeRelampagoPage()),
            SkillButton(title: 'Golpe Flamígero', page: GolpeFlamigeroPage()),
            SkillButton(title: 'Golpe do Lobo', page: GolpeDoLoboPage()),
            SkillButton(title: 'Golpe da Serpente', page: GolpeDaSerpentePage()),
          ],
        ),
      ),
    );
  }
}

class SkillButton extends StatelessWidget {
  final String title;
  final Widget page;

  SkillButton({required this.title, required this.page});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: ElevatedButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => page)),
        child: Text(title),
      ),
    );
  }
}

// Páginas de detalhes
Widget cDetailPage(String title, String content) {
  return StandardScaffold(
    title: title,
    body: Center(child: Text(content)),
  );
}

class CorteRapidoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Corte Rápido', 'Detalhes sobre Corte Rápido');
}

class CorteMortalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Corte Mortal', 'Detalhes sobre Corte Mortal');
}

class CorteImpiedosoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Corte Impiedoso', 'Detalhes sobre Corte Impiedoso');
}

class CorteEsotericoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Corte Esotérico', 'Detalhes sobre Corte Esotérico');
}

class CortePoderosoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Corte Poderoso', 'Detalhes sobre Corte Poderoso');
}

class CorteAtalhoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Corte de Atalho', 'Detalhes sobre Corte de Atalho');
}

class PassagemFlutuantePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Passagem Flutuante', 'Detalhes sobre Passagem Flutuante');
}

class EmpurraoDeDragaoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Empurrão de Dragão', 'Detalhes sobre Empurrão de Dragão');
}

class CorteDoCeuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Corte do Céu', 'Detalhes sobre Corte do Céu');
}

class GolpeDaAguaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Golpe da Águia', 'Detalhes sobre Golpe da Águia');
}

class GolpeEmEspiralPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Golpe em Espiral', 'Detalhes sobre Golpe em Espiral');
}

class CorteRelampagoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Corte do Relâmpago', 'Detalhes sobre Corte do Relâmpago');
}

class GolpeDaChamaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Golpe da Chama', 'Detalhes sobre Golpe da Chama');
}

class GolpeDaTempestadePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Golpe da Tempestade', 'Detalhes sobre Golpe da Tempestade');
}

class GolpeRelampagoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Golpe Relâmpago', 'Detalhes sobre Golpe Relâmpago');
}

class GolpeFlamigeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Golpe Flamígero', 'Detalhes sobre Golpe Flamígero');
}

class GolpeDoLoboPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Golpe do Lobo', 'Detalhes sobre Golpe do Lobo');
}

class GolpeDaSerpentePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => createDetailPage('Golpe da Serpente', 'Detalhes sobre Golpe da Serpente');
}


// Ninjutsu Techniques
class NINJUTSU_TECHNIQUES extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardScaffold(
      title: 'Ninjutsu Techniques',
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            NinjutsuButton(title: 'Ninjutsu de Sangramento', page: NinjutsuSangramentoPage()),
            NinjutsuButton(title: 'Ninjutsu de Marionete', page: NinjutsuMarionetePage()),
            NinjutsuButton(title: 'Ninjutsu do Mercúrio', page: NinjutsuMercurioPage()),
          ],
        ),
      ),
    );
  }
}

class NinjutsuButton extends StatelessWidget {
  final String title;
  final Widget page;

  NinjutsuButton({required this.title, required this.page});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: ElevatedButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => page)),
        child: Text(title),
      ),
    );
  }
}

// Telas de Ninjutsus
class NinjutsuSangramentoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StandardScaffold(
    title: 'Ninjutsu de Sangramento',
    body: Center(child: Text('Detalhes sobre o Ninjutsu de Sangramento')),
  );
}

class NinjutsuMarionetePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StandardScaffold(
    title: 'Ninjutsu de Marionete',
    body: Center(child: Text('Detalhes sobre o Ninjutsu de Marionete')),
  );
}

class NinjutsuMercurioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StandardScaffold(
    title: 'Ninjutsu do Mercúrio',
    body: Center(child: Text('Detalhes sobre o Ninjutsu do Mercúrio')),
  );
}
