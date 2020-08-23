pipeline {
    agent{
        label 'docker-agent'
    }
    stages{
        stage('Build for 7'){
            agent { docker 'openjdk:7'}
            steps {
                sh "java -version"
            }
        }
        
    }

}