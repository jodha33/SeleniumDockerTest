pipeline{
    agent{
            docker{
                image 'jodha33/seltest'
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