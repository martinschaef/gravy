package gravy_test;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

@RunWith(Suite.class)
@SuiteClasses({ GardualVerificationTest.class,
		InfeasibleCodeDetectionTest.class })
public class AllTests {

}
