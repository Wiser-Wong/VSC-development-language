fun main(args:Array<String>){
    /**
     * let 带返回值
     * let函数适用的场景
     * 场景一: 最常用的场景就是使用let函数处理需要针对一个可null的对象统一做判空处理。
     * 场景二: 然后就是需要去明确一个变量所处特定的作用域范围内可以使用
     * 
     * 在函数块内可以通过 it 指代该对象。返回值为函数块的最后一行或指定return表达式。
     */
    val value = 1200
    var result = value.let { 
        println(it)
        20000
     }
     println(result)

     var test:Test? = Test(11, 2)
     test!!.let { 
         it.a = 333
         it.b = 444
     }

     test = null
     test?.let {
        it.a = 11
        it.b = 22
     }
     println("a = ${test?.a} , b = ${test?.b}")

}

class Test(var a:Int,var b:Int)