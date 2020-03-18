fun main(args : Array<String>){

    print(test("北京"))
}

fun test(placeName:String):String{
    var temple = """ 今天天气晴朗 我要去${placeName}玩."""
    return temple
}