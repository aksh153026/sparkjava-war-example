pipeline 
{
	agent any

	tools 
	{
		git 'Default'
	//	nodejs 'NodeJS'
		maven 'MAVEN_HOME' 
		jdk 'java' 
	}
	stages 
	{
	stage('Checkout SCM') 
	{
        steps
        {
        sh "mvn install"
		sh "cp -p $(pwd)/target/sparkjava-hello-world-1.0.war /var/lib/tomcat9/webapps/"
      }
    }
  }
}
