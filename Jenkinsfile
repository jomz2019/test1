pipeline { 
    agent any
    tools {
        maven 'MAVEN'
    }
    stages { 
        stage('Check out') { 
            steps { 
               checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/jomz2019/test1.git']]])
               bat 'mvn clean install'
            }
        }
        stage('Build') {
			steps {
				bat 'docker build -t debangj/test1:latest .'
			}
		}
    }
}