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
				sh "pwd"
      }
    }
  }
  
	
}
