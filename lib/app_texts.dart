// Textos centralizados para esta práctica; no es un sistema de traducciones.
class AppTexts {
  static const title = 'DiceBattle';
  static const nameLabel = 'Nombre del jugador';
  static const nameHelp = 'Escribe un nombre para poder jugar.';
  static const roll = 'Lanzar';
  static const finish = 'Finalizar';
  static const result = 'Resultado';
  static const back = 'Volver a la partida';
  static const reload = 'Recargar';

  static String lastDie(int value) => 'Último dado: $value';
  static String total(int value) => 'Puntuación: $value';
  static String player(String name) => 'Jugador: $name';
  static String contador (int contador) => 'contador: $contador';
}
