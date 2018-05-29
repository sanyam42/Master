pipeline {
    agent any

    stages {
        stage ('Compile Stage') {

            steps {
                echo 'Compiling...'
                powershell returnStatus: true, script: '.\\build.ps1'
                echo 'Powershell Build done...'
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

