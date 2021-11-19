import com.intuit.karate.junit5.Karate;

public class TestRunner {

        @Karate.Test
        Karate testFullPath() {
            return Karate.run("src/test/java/couk/ii/features").tags("@Smoke");
        }
    }

