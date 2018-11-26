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
                
                 

    
       

        stage ('Deployment Stage') {
                                        steps {
                                           echo 'Deploying...'
                                            }
                                   }
        }
