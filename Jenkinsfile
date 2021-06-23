pipeline {
    agent { docker { image 'java:8-jdk-alpine ' } }
    stages {
        stage('Checkout') {
			steps {
			checkout changelog: false, poll: false, scm: [$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/FFrancisFF/dockerwebapp']]]
			}
			
		} 	
        stage('build') {
            steps {
                 
                 def customImage = docker.build("samplejar}")

        /* Push the container to the custom Registry */
        customImage.push()
            }
        }
    }
}