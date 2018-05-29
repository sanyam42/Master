pipeline {
    agent any
    
   parameters {
        booleanParam(defaultValue: true, description: '', name: 'userFlag')
    }

    stages {
        stage ('Compile Stage') {

            steps {
                echo 'Compiling...'
                echo "Worksapce is ${workspace}"
                
                echo "Build No. is ${BUILD_NUMBER}"
                echo "Build No. is $env:BUILD_NUMBER"
                echo "Hello ${userFlag}"
                powershell returnStatus: true, script: '.\\build.ps1'
                echo 'Powershell Build done...'
                               }
            }
        

        stage ('Testing Stage') {

            steps {
                
                echo "Hello ${params.userFlag}"
                echo "Hello ${params.choice}"
             
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

