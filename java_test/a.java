improt StringBuilder
class a {
    public static void main(String[] args) {
        val s = StringBuilder("123567 3231")
        val index = 3
        val startSb = StringBuilder(s.substring(0,index))
        val endSb = StringBuilder(s.substring(index,s.length).replace(" ",""))
        if (endSb.length > 4) {
            endSb.insert(3," ")
            endSb.insert(0," ")
        }
        println(startSb.append(endSb))
    }
}