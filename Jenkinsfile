node{
    stage('Git Checkout'){
        git 'https://github.com/jodha33/SeleniumDockerTest'
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