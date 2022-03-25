pipeline 
{
	
	
	
    agent any 
    stages {

        stage('Checkout GIT') 
		{ 
            steps 
			{
			    echo 'Pulling...'
				git url : 'https://github.com/saiflabbaoui/QoentumDev.git' ;
            }
        }

		stage("Package") 
		{
            steps
			 {
				sh """mvn clean package""";
				echo'test'
            }
        }
		
		stage("Nexus") 
		{
            steps 
			{
				sh """mvn deploy""";
				echo'nexus'
            }
		}

	    	 stage('SonarQube analysis') 
	    	{
            steps 
			{
                		withSonarQubeEnv('Sonar Server') 
				{
                    		sh """mvn sonar:sonar"""
                		}
            		}
        	}
	    
	    	stage('Docker Build') 
	    {
    
      	   steps
		    {
        			sh 'docker build -t qoentum:latest .'
      		    }
    	    }
	    
	    
    }
	
	post 
	{
    		always {
       			mail to: 'inesboukhris20@gmail.com',
          		subject: "Status of pipeline: ${currentBuild.fullDisplayName}",
         		 body: "${env.BUILD_URL} has result ${currentBuild.result}"
    			}
  	}
}
