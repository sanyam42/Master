pipeline {
    agent any
    
   parameters {
        booleanParam(defaultValue: true, description: '', name: 'userFlag')
    }

    stages {
        stage ('Compile Stage') {

            steps {
                echo 'Compiling...'
                powershell returnStatus: true, script: '.\\build.ps1'
                echo 'Powershell Build done...'
                "echo ${params.userFlag}"
                "echo ${params.choice}"
                }
            }
        

        stage ('Testing Stage') {

            steps {
                echo 'Testing...'
                }
            }
        


        stage ('Deployment Stage') {
            steps {
               echo 'Deploying...'
                }
            }
        }
    }

