# dart-learn

## 链接

[Dart 语言开发文档](https://dart.cn/guides)

## 注意事项

1. 所有变量引用的都是 对象，每个对象都是一个 类 的实例。数字、函数以及 null 都是对象。除去 null 以外（如果你开启了 空安全）, 所有的类都继承于 Object 类

2. 如果你开启了 **空安全**，变量在未声明为可空类型时不能为 null。

   你可以通过在类型后加上问号 (?) 将类型声明为可空。

   例如，int? 类型的变量可以是整形数字或 null。

   如果你 明确知道 一个表达式不会为空，但 Dart 不这么认为时，你可以在表达式后添加 ! 来断言表达式不为空（为空时将抛出异常）

   例如：`int x = nullableButNotNullInt!`

3. 如果你想要显式地声明允许任意类型，使用 Object?（如果你 开启了空安全）、 Object 或者 特殊类型 dynamic 将检查延迟到运行时进行。

4. Dart 支持泛型

   比如`List<int>`（表示一组由 int 对象组成的列表）或 `List<Object>`（表示一组由任何类型对象组成的列表）。

5. Dart 支持顶级函数（例如 main 方法），同时还支持定义属于类或对象的函数（即 静态 和 实例方法）。你还可以在函数中定义函数（嵌套 或 局部函数）

6. Dart 支持顶级 变量，以及定义属于类或对象的变量（静态和实例变量）。实例变量有时称之为域或属性。

7. Dart 没有类似于 Java 那样的 public、protected 和 private 成员访问限定符。

   如果一个标识符以下划线 (_) 开头则表示该标识符在库内是私有的。

8. 标识符 可以以字母或者下划线 (_) 开头，其后可跟字符和数字的组合。

9. Dart 中 表达式 和 语句 是有区别的，表达式有值而语句没有。

   比如条件表达式 expression condition ? expr1 : expr2 中含有值 expr1 或 expr2。

   与 if-else 分支语句相比，if-else 分支语句则没有值。

   一个语句通常包含一个或多个表达式，但是一个表达式不能只包含一个语句。