fun main(args:Array<String>){
    /**
     * run用法与apply很像  
     * 方法体中都使用this代替 
     * 只不过run函数是使用最后一行的返回，apply返回当前自己的对象
     */
    //用法1
    val result1 = "test".run { 
        println("this1:-->$this")
        return@run 100
    }
    println("result1:-->$result1")
    
    //用法2
    val result2 = "test".run { 
        println("this2:-->$this")
        101
    }
    println("result2:-->$result2")

    //测试
    "test".run { 
        println("run:-->$this")
        return@run this
    }.apply { 
        println("apply:-->$this")
    }.let { 
        println("it:-->${it[2]}")
    }
}
