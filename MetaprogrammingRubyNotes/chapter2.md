##对象模型
语言构件存在的系统：对象模型

###打开类

安装单元测试test-unit库：```gem install test-unit```

Ruby的```class```关键字更像是一个**作用域操作符**，而不是类型声明语句

* ```class```的确可创建一个不存在的类（只是副作用）
*  ```class```的核心任务是把我们带到类的上下文中，让我们可以在里面定义方法

**打开类：**
  可以重新打开已经存在的类并对之进行修改，标准库中的类也可以（如String或Array）
  
###打开类的问题
新增的方法可能与已有的方法重名（猴子补丁）

##类的真相
###对象有什么

```
class  MyClass
    def my_method
       @v=1
     end
end

obj = MyClass.new
puts obj.class
obj.my_method
obj.instance_variables

puts obj.methods
```

* 实例变量：Ruby中对象的类和它的实例变量没有关系
* 方法:Object#methods 绝大多数对象都从Object类继承了一组方法

>一个对象的实例变量存在于对象本身之中，而一个对象的方法存在于对象自身的类中。

###类的真相
**类本身也是对象**

```
puts "HELLO".class
puts String.class

puts Class.instance_methods(false)
```
在Ruby中，可以像操作其他任何对象一样对类进行操作。可在运行时，修改类的相关信息。

```
puts Array.superclass
puts Object.superclass
puts BasicObject.superclass
puts Class.superclass
puts Class.superclass.superclass
```

####模块
Class类的超类是Module（模块）=====》每个类都是一个模块

类就是带有三个方法(new,allocate,superclass)的增强模块

代码被包含到别的代码中----->使用模块
某段代码被实例化或被继承----->使用类

类可通过引用访问

```
class Foo
end
foo = Foo.new
myFoo = Foo
foo2= myFoo.new
```
myFoo是变量，Foo是常量 类是对象，类名是常量

####常量
任何以大写字母开头的引用都是常量（包括类名和模块名）

常量的值可以修改，常量和变量的作用域不同

```
MyConstant = "root level"
module MyModule
	MyConstant = "outer"
	class MyFoo
		MyConstant = "inner"
	end
end
#这里的常量像文件系统一样组织成树形结构
```

####常量的路径
通过路径标识，用双冒号进行分隔

```
puts MyModule::MyConstant
puts MyModule::MyFoo::MyConstant
puts ::MyConstant
```
绝对路径--->双冒号开头

Module类有一个实例方法和类方法，方法名都是constants

```
puts Module.constants#返回当前程序中所有顶层的常量 包括类名
puts MyModule.constants#返回当前范围内的所有常量
```

获取当前代码所在的路径，使用Module.nesting方法。

防止类名冲突，使用模块充当常量容器的模块----->命名空间

####对象和类小结

* 对象：一组实例变量+一个指向类的引用。对象的方法并不存在于对象本身，而是存在于对象的类中。（这些方法被称为类的实例方法）
* 类：一个对象（Class类的一个实例）+一组实例方法+一个指向超类的引用。Class类是Module类的一个引用，因此类也是一个模块。

####调用方法

* 方法查找
* 执行方法（Ruby需用到self）

#####方法查找
接收者：调用方法所在的对象

祖先链：从一个类找到它的超类，再找到超类的超类直到找到BasicObject类（Ruby类体系的根节点）

__方法查找的过程:__

Ruby首先在接收者的类中查找，然后再顺着祖先链向上查找，直到找到。

示例见lookup.rb

获取类的祖先链：```MySubClass.ancestors```

######模块与方法查找
祖先链中也包括模块

把一个模块被包含在一个类中（或模块中） include/prepend

####Kernel模块
Ruby中有一些方法可以随时随地地进行调用，如```print```

实际上是调用了Kernel模块的私有实例方法,而Object类包含了Kernel模块，Kernel就进入了每个对象的祖先链。

```ruby
Kernel.private_instance_methods.grep(/^pr/)
#printf,print,proc
```

Kernel模块的方法对所有的对象都可用，叫做内核方法。

