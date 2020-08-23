pipeline {
    agent none
    stages{
        stage('Build for 7'){
            agent { docker 'openjdk:7'}
            steps {
                bat "java -version"
            }
        }
        
    }

}