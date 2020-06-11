import java.sql.Timestamp;
import java.util.Date;

/**
 * @author : Sangji Lee
 * @see : https://github.com/sangji11
 * @since : 2020-06-12 오전 1:53
 */
public class Test {
    public static void main(String[] args) {
        Timestamp register = new Timestamp(System.currentTimeMillis());
        long stamp = register.getTime();

        System.out.println(encoding(stamp));

    }

    public static String encoding(long chatDate) {
        Date date = new Date();
        date.setTime(chatDate);
        return date.toString();
    }
}
