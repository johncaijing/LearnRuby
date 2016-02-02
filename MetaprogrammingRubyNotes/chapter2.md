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

