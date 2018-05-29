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
                
                echo "EBuild No. is env.BUILD_NUMBER"
                powershell returnStatus: true, script: '.\\build.ps1 ${params.userFlag} ${params.choice}'
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

