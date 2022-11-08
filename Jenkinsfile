pipeline {
	agent any
	stages {
		stage ('terraform init') {
			steps {
				sh '''
					ls -l
					terraform init
				'''
			}
		}
		stage ('terraform plan') {
      steps {
      	sh '''
      		terraform plan
      	'''
      }
    }

    stage ('terraform apply -auto-approve') {
      steps {
        sh '''
          terraform apply -auto-approve
        '''
      }
    }
  }
}