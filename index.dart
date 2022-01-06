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

  /**函数 */
  int fib(int n) {
    if (n == 0 || n == 1) return n;
    return fib(n - 1) + fib(n - 2);
  }

  print(fib(10));
}
