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
	    stage ('Browse Files') {
		                            input {
                                            message "Browse DB Files"
                                            ok "Continue"
                                            parameters {
                                                        file(name: 'PB_FILE', description: 'Browse File');
                                                        file(name: 'DATABASE_FILE', description: 'Browse File');
                                                        file(name: 'RA_CONFIG_DATABASE_FILE', description: 'Browse File');
                                                        file(name: 'POST_CONFIG_DATABASE_FILE', description: 'Browse File');
                                                        file(name: 'CONFIGURATION_FILE', description: 'Browse File');
                                                        file(name: 'SERVICE_FILE', description: 'Browse File');
                                                       }
                                           }
                                    steps {
        									 echo "BROSWE THE FILES"
                                            }
								}
	    
            stage ('Compile Stage') {
		        parallel {   
			                        stage ('Sonar Stage') {
							 input {
                                            message "Browse DB File?"
                                            ok "Yes, we should."
                                            parameters {
                                                        file(name: 'service_File', description: 'Browse File');
						    	file(name: 'serv_File', description: 'Browse File')
                                                       }
                                           }
                                                            

                                        		         steps {
									 echo "Value of check is ${Check} $check"
									 echo "Value of check  $check"
									  echo "Value of multistring  $string"
									 powershell 'echo "1 $string 2 $env:string"'
									 powershell "echo '1 $string 2 $env:string'"
									 
									 powershell '$env:string | Add-Content \'Database_File3.txt\''
									 
									 echo "Value of service_File  $service_File"
									 writeFile file: '\\temp.txt', text: "$service_File"
									 writeFile file: 'YAML.txt', text: params.string
									 /*powershell '''$C = Get-Content $env:service_File
									 		echo " value of service file is $env:service_File" 
											echo " value of c is $c" 
											$C | Add-Content \'Database_File.txt\''''*/
									 powershell '''$C = Get-Content $env:service_File
											If ($c -ne $null) { Copy-Item "$env:service_File" -Destination "$env:Workspace\\" -Recurse -Force -ErrorAction Stop }'''
									 powershell '''$PBFILE = Get-Content $env:PB_FILE
                                                         $DATABASEFILE = Get-Content $env:DATABASE_FILE
                                                         $RA_CONFIG_DATABASEFILE = Get-Content $env:RA_CONFIG_DATABASE_FILE
                                                         $POST_CONFIG_DATABASEFILE = Get-Content $env:POST_CONFIG_DATABASE_FILE
                                                         $CONFIGURATIONFILE = Get-Content $env:CONFIGURATION_FILE
                                                         $SERVICEFILE = Get-Content $env:SERVICE_FILE                 
                                                         If ($PBFILE -ne $null) { Copy-Item "$env:PB_FILE" -Destination "$env:Workspace\\" -Recurse -Force -ErrorAction Stop }
                                                         If ($DATABASEFILE -ne $null) { Copy-Item "$env:DATABASE_FILE" -Destination "$env:Workspace\\" -Recurse -Force -ErrorAction Stop }
                                                         If ($RA_CONFIG_DATABASEFILE -ne $null) { Copy-Item "$env:RA_CONFIG_DATABASE_FILE" -Destination "$env:Workspace\\" -Recurse -Force -ErrorAction Stop }
                                                         If ($POST_CONFIG_DATABASEFILE -ne $null) { Copy-Item "$env:POST_CONFIG_DATABASE_FILE" -Destination "$env:Workspace\\" -Recurse -Force -ErrorAction Stop }
                                                         If ($CONFIGURATIONFILE -ne $null) { Copy-Item "$env:CONFIGURATION_FILE" -Destination "$env:Workspace\\" -Recurse -Force -ErrorAction Stop }
											             If ($SERVICEFILE -ne $null) { Copy-Item "$env:SERVICE_FILE" -Destination "$env:Workspace\\" -Recurse -Force -ErrorAction Stop }'''


									 

									

																	
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
