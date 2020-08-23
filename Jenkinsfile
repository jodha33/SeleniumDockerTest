pipeline{
    agent any
    // agent{
    //         // docker{
    //         //     image 'jodha33/seltest'
    //         // }

    // }

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
                    bat 'docker build .'
                }
            }
        }
    }
}