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
                                                            

                                        		         steps {
									 echo "Value of check is ${Check} $check"
									 echo "Value of check  $check"
									 writeFile encoding: 'UTF-8', file: '\\temp.txt', text: '$string'
									 /*expression { CHECK == 'NULL' }*/
									 script {
										 if (CHECK==""){
										    echo "This is Pull request"
											 env.Check = "NA"
											 echo "Value of check 2 $check"
											 
											 
										} 
										 if (Multiselect=="") {
											echo "Value of Multiselect 1 $Multiselect"
										    echo "This is Push request"
											 env.Multiselect = "NA"
											 echo "Value of Multiselect 2 $Multiselect"
										}
									 }
									 echo "Value of check 3  $check"
									 

									
										
									 
									 
									 echo "Value of check is ${Check} ..."
								            echo 'Compiling...'
								                echo "Worksapce is ${workspace}"
								                echo "Build No. is ${BUILD_NUMBER}"
								                echo "Build result 1 is ${currentBuild.result}"
								                echo "Hello ${userFlag}"
								                echo "1"
								                echo Build_Number
								                powershell script: ".\\build.ps1 $userflag"
								    
								                echo "Build result 2 is "
								                echo 'Powershell Build done...'
								                echo "Build result 3 is ${currentBuild.result}"
																    
                                            			            }
                                   			                }

			    	                                                        stage ('Fortify Stage') { 
                        
                                        		            steps {
								            echo workspace
								                echo "3"
								                echo "$Build_Number"
								               build job: 'GARM_DEPLOY', parameters: [[$class : 'StringParameterValue', name: 'systemname', value: userflag] , [$class : 'ExtendedChoiceParameterValue', name: 'choice', value: choice] , [$class : 'StringParameterValue', name: 'Build_Number', value: BUILD_NUMBER]]
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
					     publishHTML([allowMissing: false, alwaysLinkToLastBuild: false, keepAll: false, reportDir: 'C:\\temp', reportFiles: 'Release.log', reportName: 'RELEASE LOG'])
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
