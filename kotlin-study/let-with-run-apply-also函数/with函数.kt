fun main(args:Array<String>){
    /**
     * with 返回是最后一行
     * 传递参数进去 并直接使用参数内的属性方法
     */
    val user = User("名字",22)
    with(user) { 
        name = "Wiser"
        age = 18
        this
    }.let { 
        println("name = ${it.name} , age = ${it.age}")
    }

    //集合
    with(ArrayList<String>()) { 
        add("爱因斯坦")
        add("牛顿")
        add("高斯")
        this
    }.let { 
        for(name in it){
            println("name = $name")
        }
    }

    //测试多组合函数
    val result = user.let { 
        it
    }.apply { 
        
    }.run {
        this
    }
    println("reuslt:-->${result.name}")


    val result1 = with(user) { 
        name = "wangxiangyu"
        println("with --> name = ${name}")
        this
    }.let { 
        it.age = 11
        println("let --> age = ${it.age}")
        it
    }.apply { 
        this.age = 22
        println("apply --> age = ${this.age}")
    }.run { 
        this.name = "王翔宇"
        println("run --> name = ${this.name}")
        this
    }
    println("result1:--> name = ${result.name} , age = ${result.age}")

}

class User(var name:String,var age:Int)