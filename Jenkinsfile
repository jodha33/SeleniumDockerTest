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

                // publishHTML (target: [
                //         allowMissing: false,
                //         alwaysLinkToLastBuild: true,
                //         keepAll: true,
                //         reportDir: 'target/surefire-reports',
                //         reportFiles: 'index.html',
                //         reportName: "Test Execution Report"
                // ])
                  

            }

        }
          post{
                    always {
                    step([$class: 'Publisher', reportFilenamePattern: './target/surefire-reports/testng-results.xml'])
                    }
                    } 

    }
   
}