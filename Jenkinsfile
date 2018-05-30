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
               echo "Build result 1 is ${currentBuild.result}"
                echo "Hello ${userFlag}"
               powershell (returnStatus: true, script: '.\\build.ps1')
                def lines = readFile('result').split("\r?\n")
                echo "Build result 2 is ${Build_Result}"
                echo 'Powershell Build done...'
                echo "Build result 3 is ${currentBuild.result}"
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

