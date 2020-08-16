node{
    stage('Git Checkout'){
        steps{
            checkout scm
        }
        //git 'https://github.com/jodha33/SeleniumDockerTest'

    }
    stage('Build'){
        try{
        }catch(err){
        }finally{
            publishHTML (target: [
                        reportDir: 'target/surefire-reports',
                        reportFiles: 'index.html',
                        reportName: "UI tests report"
                        ])
        }
    }
}