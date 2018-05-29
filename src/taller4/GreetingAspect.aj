package taller4;

public aspect GreetingAspect {
	long startTime;
	long estimatedTime;
	pointcut callGreeting(): call(* HelloAspectJDemo.greeting());
	before(): callGreeting() {
		startTime = System.nanoTime();
	}
	after(): callGreeting() {
		estimatedTime = System.nanoTime() - startTime;
		System.out.println("El tiempo de ejecucion es: "+estimatedTime);
	}
	
}