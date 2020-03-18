fun main(args: Array<String>){
    /**
     * 返回的是对象本身
     * 适用场景
     * 整体作用功能和run函数很像，唯一不同点就是它返回的值是对象本身，
     * 而run函数是一个闭包形式返回，返回的是最后一行的值。
     * 正是基于这一点差异它的适用场景稍微与run函数有点不一样。
     * apply一般用于一个对象实例初始化的时候，需要对对象中的属性进行赋值。
     * 或者动态inflate出一个XML的View的时候需要给View绑定数据也会用到，
     * 这种情景非常常见。特别是在我们开发中会有一些数据model向View model转化实例化的过程中需要用到。
     */

     val user = User("Wiser", 22)
     val result = user.apply { 
        println("name is $name - age is $age")
      }   
     println("result is $result")
     println(result.name)
}

class User(var name:String,var age:Int)