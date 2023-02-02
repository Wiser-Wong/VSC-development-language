public class MThread extends Thread{
    public static void main(String[] args) {
        new MThread().start();
    }
    @Override
    public void run() {
        super.run();
        for (int i = 0; i < 10; i++) {
            System.out.println("-----");
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
}