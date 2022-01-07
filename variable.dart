/**可以使用 var 创建变量 并将其 初始化 */
var name = 'Bob';

/**可以指定类型 */
String str = 'Bob';

/**
 * 一个对象的引用不局限于单一的类型
 * 可以将其指定为 Object（或 dynamic）类型
 */
Object any = 'Bob';

void main() {
  /**
 * 默认值
 * 未初始化以及可空类型的变量拥有一个默认的初始值 null
 * 
 * 如果启用了空安全, 则必须在使用非空变量之前初始化它们的值
 */
  int? lineCount;
  print(lineCount == null);

  /**
   * Late variables
   * 
   * 作用:
   *  1. 声明在声明后初始化的不可为null的变量
   *  2. 延迟初始化变量
   * 
   * tip: 如果未能初始化延迟变量，则在使用该变量时会发生运行时错误。
   * 
   * 使用场景：当您将一个变量标记为late但在其声明时初始化它时，初始化器将在第一次使用该变量时运行。这种延迟初始化在以下几种情况下很方便：
   *  1. 可能不需要该变量，初始化它的成本很高
   *  2. 您正在初始化一个实例变量，其初始值设定项需要访问该实例变量。
   */
  late String description;
  description = 'late';
  print(description);

  // 在下面的示例中，如果从未使用过温度变量，则不会调用昂贵的_readThermometer函数：
  // late String temperature = _readThermometer()

  /**
   *  Final and Const
   *  如果你不想更改一个变量，可以使用关键字 final 或者 const 修饰变量，
   *  这两个关键字可以替代 var 关键字或者加在一个具体的类型前
   * 
   *  Final: 一个 final 变量只可以被赋值一次
   *  Const: 一个 const 变量是一个编译时常量(const 变量同时也是 final 的)
   * 
   *  实例变量 可以是 final 的但不可以是 const
   */

  final finalName = 'bob';
  // finalName = 'init';
}
