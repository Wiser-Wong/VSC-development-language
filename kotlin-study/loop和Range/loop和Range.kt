fun main(args:Array<String>){
    var nums = 1..10 //[1,100]闭区间
    var result = 0
    for(num in nums){
        result = result + num
    }

    println("结果：$result")

    var nums1 = 1 until 10 //[1,10)前闭后开区间
    for(num in nums1){
        println(num)
    }

    //step 用法
    for(a in nums1 step 2){
        println(a)
    }

    //reversed反转
    var nums2 = nums1.reversed();
    for(b in nums2){
        println(b)
    }

    //长度
    println("总数：${nums1.count()}")
}