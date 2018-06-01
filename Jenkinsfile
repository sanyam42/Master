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
                echo "1"
                echo Build_Number
                   echo "2"
                echo workspace
                echo "3"
                echo "$Build_Number"
                
               
                powershell script: '.\\build.ps1' 
                build job: 'GARM_DEPLOY', parameters: [[$class: 'StringParameterValue', name: 'systemname', value: userflag] , [$class: 'ExtendedChoiceParameterValue', name: 'choice', value: choice] , [$class: 'StringParameterValue', name: 'Build_Number', value: BUILD_NUMBER]]
                
                echo "Build result 2 is "
                echo 'Powershell Build done...'
                echo "Build result 3 is ${currentBuild.result}"
                               }
            }
        

        stage ('Testing Stage') {
                                
            input {
                message "Should we continue?"
                ok "Yes, we should."
                
                parameters {
                    string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')
                }
            }

            steps {
                echo "Hello, ${PERSON}, nice to meet you."
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
    
    post { 
        always { 
            echo 'I will always say Hello again!'
        }
        failure { 
            echo 'Job failed!'
        }
        success { 
            echo 'Job Succeed!'
        }
        
    }

    }

