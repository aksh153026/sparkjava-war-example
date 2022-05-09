pipeline 
{
	agent any

	tools 
	{
		git 'Default'
	//	nodejs 'NodeJS'
		maven 'MAVEN_HOME' 
		jdk 'jdk1.8' 
	}
	stages 
	{
		
		stage('Checkout SCM') 
		{
			steps 
			{
  
        sh "mvn install"
      }
    }
  }
  
	
}
