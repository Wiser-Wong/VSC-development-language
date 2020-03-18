fun main(args:Array<String>){
    var str1 = "Test"
    var str2 = "test"

    println(str1.equals(str2))
    println(str1 == str2)

    println(str1.equals(str2,true))//第二个参数代表是否忽略大小写
}