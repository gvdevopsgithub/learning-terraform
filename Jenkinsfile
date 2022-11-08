pipeline {
	agent any
	stages {
		stage ('terraform init') {
			steps {
				sh '''
					cd s3
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