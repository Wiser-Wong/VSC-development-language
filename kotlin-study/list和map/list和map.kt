fun main(args:Array<String>){
    var list = listOf("一","二",true,3,20.10)
    for(v in list){
        println(v)
    }

    //withIndex打印下标
    for((i,v) in list.withIndex()){
        println("坐标${i}:$v")
    }

    var map = HashMap<String,String>()
    map["key1"] = "value1"
    map["key2"] = "value2";
    println(map["key1"])
}