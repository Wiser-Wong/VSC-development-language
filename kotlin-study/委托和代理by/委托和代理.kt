/**
 * 洗碗接口
 */
interface IWashBowl{
    fun washing()
}

/**
 * 大头儿子
 */
class BigHeadSon : IWashBowl{
    override fun washing(){
        println("我是大头儿子，洗碗一次一块钱")
    }
}

/**
 * 小偷爸爸 不洗碗了 让大头儿子洗碗还能赚9块钱 委托大头儿子去洗碗使用关键字by
 */
class SmallHeadFather : IWashBowl by BigHeadSon(){
    // override fun washing(){
    //     println("我是小头爸爸，洗碗一次十块钱")
    //     BigHeadSon().washing() //这里大头儿子对象又被创建了，所以大头儿子创建了两次，需要注意
    //     println("我让大头儿子去洗碗了，我从中赚了九块钱")
    // }
}

fun main(args:Array<String>){
    val father = SmallHeadFather()
    father.washing()
}