/**
 * 每个应用都有一个 main() 函数
 **/
void main() {
  /** hello world  */
  print('hello world');

  /**变量 */
  void log() {
    var name = 'Voge';
    var year = 2022;
    var floatNumber = 3.4;
    var list = [1, 2, 3, 4];
    var object = {'a': 1, 'b': 'string'};
    print(name);
    print(year);
    print(floatNumber);
    print(list);
    print(object);
  }

  log();

  /**流程控制 */

  /**if/else */
  var year = 2022;
  if (year >= 2001)
    print('超过2021');
  else if (year >= 2025) print('超过2025');

  /**for..in.. */
  var list = [1, 2, 3, 4];
  for (final o in list) print(o);

  /**for */
  for (int i = 0; i < list.length; i++) print(list[i]);

  /**while */
  while (year < 2025) {
    year += 1;
    print(year);
  }

  /**
   * 函数
   * 每个函数的参数以及返回值都指定类型
   **/
  int fib(int n) {
    if (n == 0 || n == 1) return n;
    return fib(n - 1) + fib(n - 2);
  }

  print(fib(10));

  /**箭头函数 */
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  flybyObjects.where((element) => element.contains('turn')).forEach((print));

  var voyager = Spacecraft('John', DateTime(2022, 9, 6));
  voyager.describe();

  var voyager3 = Spacecraft.unlaunched('Voyager III');
  voyager3.describe();
}

/**类 */
class Spacecraft {
  String name;

  DateTime? launchDate;

  /**getter属性, 只读 */
  int? get launchYear => launchDate?.year;

  /**构造函数(Constructor) */
  Spacecraft(this.name, this.launchDate) {}

  Spacecraft.unlaunched(String name) : this(name, null);

  /**方法 */
  void describe() {
    print('Spacecraft: $name');

    var launchDate = this.launchDate;

    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;

      print("Launched: $launchYear($years years ago)");
    } else {
      print('Unlaunched');
    }
  }
}

/**继承类 */
class Oribiter extends Spacecraft {
  double altitude;

  Oribiter(String name, DateTime launchDate, this.altitude)
      : super(name, launchDate);
}

/**
 * Mixin 是一种在多个类层次结构中重用代码的方法
 **/
mixin Piloted {
  int astronauts = 1;

  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}

/**使用 Mixin 的方式继承这个类就可将该类中的功能添加给其它类 */
class PilotedCraft extends Spacecraft with Piloted {
  PilotedCraft(String name, DateTime launchDate) : super(name, launchDate);
}
