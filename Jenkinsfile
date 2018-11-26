pipeline {
                agent {
                                    node {
                                                                                    label 'master'
                                                                                    customWorkspace "D:/WS/${JOB_NAME}$Build_Number"
                                    }
                       }
    
   parameters {
        booleanParam(defaultValue: true, description: '', name: 'userFlag')
       
      

    }
                
                 

    stages {
                    

                    
            stage ('Compile Stage') {
                                        parallel {   
                                                                        stage ('Sonar Stage') {
                                                            agent {
                                                                label "master"
                                                            }

                                                                                                                                steps {
                                                                                                                                            echo 'Compiling...'
                                                                                                                                                echo "Worksapce is ${workspace}"
                                                                                                                                                echo "Build No. is ${BUILD_NUMBER}"
                                                                                                                                                echo "Build result 1 is ${currentBuild.result}"
                                                                                                                                                script { if (fileExists ('D:\\WS\\27PAC_SRA\\*.txt'))
                                                                                                                                                { echo "file exists bro"
                                                                                                                                                    publishHTML([allowMissing: false, alwaysLinkToLastBuild: true, keepAll: true, reportDir: "D:\\WS\\27PAC_SRA", reportFiles: '*.txt', reportName: 'DB LOGS'])} }
                                                                                                                                                powershell script: "D:/SRA.ps1 'ExpertTesting' 'Web,SM,RAMQ' 'Stop'"
                                                                                                                                                
                                                                                                                                                echo "1"
                                                                                                                                                script {
                                                                                                                                                    env.ENVIRONMENT = 'Expert'
                                                                                                                                                }
                                                                                                                                                powershell script: "D:/SRA.ps1 'ExpertTesting' 'Web,SM,RAMQ' 'Stop'"
                                                                                                                                                echo Build_Number
                                                                                                                                                
                                                                                                                                    
                                                                                                                                                echo "Build result 2 is "
                                                                                                                                                echo 'Powershell Build done...'
                                                                                                                                                echo "Build result 3 is ${currentBuild.result}"
                                                                                                                                                                                                                                                                    
                                                                                                       }
                                                                                            }

                                                                                                                        stage ('Fortify Stage') { 
                        agent {
                                                                label "master"
                                                            }
                                                                        steps {
                                                                                                                                            echo workspace
                                                                                                                                            powershell script: "D:/SRA.ps1 'ExpertTesting' 'Web,SM,RAMQ' 'Stop'"
                                                                                                                                                echo "3"
                                                                                                                                                echo "$Build_Number"
                                                                                                                                               /* build job: 'GARM_DEPLOY', parameters: [[$class : 'StringParameterValue', name: 'systemname', value: userflag] , [$class : 'ExtendedChoiceParameterValue', name: 'choice', value: choice] , [$class : 'StringParameterValue', name: 'Build_Number', value: BUILD_NUMBER]]*/
                                                                                                                                                echo "Build result 2 is "
                                                                                                                                                echo 'Powershell Build done...'
                                                                                                                                                echo "Build result 3 is ${currentBuild.result}"
                                                                                                       }
                                                                                        }
                                       
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
                step([$class: 'WsCleanup'])
                if (fileExists ("D:/WS/27PAC_SRA/*.txt"))
                {
                  echo "haan bro"   
                } 
                
               }
        failure { 
                 echo 'Job failed!'
                }
        success { 
                  echo 'Job Succeed!'
                }
        
    }

    }
