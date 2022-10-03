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
				bat 'docker image rm debangj/test1:lts 2>/dev/null'
				bat 'docker build -t debangj/test1:lts .'
			}
		}
		stage('Docker run') {
			steps {
				bat 'docker run -d -p 9101:9101 -p 50000:50000 --name test1 debangj/test1:lts'
			}
		}
    }
}