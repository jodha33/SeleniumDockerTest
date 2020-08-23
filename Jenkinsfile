pipeline{

    agent{
            docker-agent{
                image 'jodha33/seltest'
                  label 'dind'
	              args "-v /tmp:/tmp"
            }

    }

    stages{
        stage('Checkout'){
            steps {
                script {
                    checkout scm
                }
            }
        }
        stage('Test Exection'){
            steps{
                script {
                    echo "Executing test"
                    sh 'mvn test'
                }
            }
        }
    }
}