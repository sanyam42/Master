pipeline {
    agent any

    stages {
        stage ('Compile Stage') {

            steps {
                echo 'Compiling...'
                powershell returnStatus: true, script: '.\\build.ps1'
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

