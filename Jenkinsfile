pipeline 
{
	agent any

	
	stages 
	{
	stage('Checkout SCM') 
	{
        steps
        {
		sh "mvn install"
		
		sh " cp  $WORKSPACE/target/sparkjava-hello-world-1.0.war /var/lib/tomcat9/webapps/"
		sh "sudo docker build -t ."
      }
    }
  }
}
