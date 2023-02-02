import java.text.DecimalFormat;
class Hello{
    String str = new String("good");
    char[] ch = {'a','b','c'};
    public static void main(String[] args) {
        // System.out.println("你好啊");
        // double dec = 0.10f;
        // DecimalFormat df = new DecimalFormat("#%");//乘以100后以百分比形式输出,此处输出"12%"
        // DecimalFormat df1 = new DecimalFormat("##.##");//输出"0.12"
        // DecimalFormat df2 = new DecimalFormat("00.00");//输出"00.12"
        // String s = df2.format(dec);
        // System.out.println(s);

        // MThread thread = new MThread();
        // // thread.start();

        // new Thread(new Runnable(){
        
        //     @Override
        //     public void run() {
        //         for (int i = 0; i < 10; i++) {
        //             // System.out.println("-----" + i);
        //             System.out.println("---AAAAAA--");
        //             try {
        //                 Thread.sleep(1000);
        //             } catch (InterruptedException e) {
        //                 e.printStackTrace();
        //             }
        //         }
        //     }
        // }).start();

        Hello Hello = new Hello();
        Hello.change(Hello.str,Hello.ch);
        System.out.println(Hello.str + "and");
        System.out.println(Hello.ch);
    }

    public void change(String str,char[] ch) {
        str = "test";
        ch[0] = 'g';
    }
}
