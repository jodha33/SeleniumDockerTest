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
                    bat 'docker build -t jodha33/seltest:latest .'
                    bat 'docker run jodha33/seltest:latest'
                }

                publishHTML (target: [
                        allowMissing: false,
                        alwaysLinkToLastBuild: false,
                        keepAll: true,
                        reportDir: './target/surefire-reports',
                        reportFiles: 'index.html',
                        reportName: "RCov Report"
                ])
            }
        }
    }
}