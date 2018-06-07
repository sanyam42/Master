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
    
    
    }
