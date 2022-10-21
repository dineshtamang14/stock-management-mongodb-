pipeline {
     agent {label 'master node'}
     stages {
	stage('git checkout'){
	   steps {
	      sh 'git clone https://github.com/dineshtamang14/stock-management-mongodb-project.git && cd stock-management-mongodb-project'
	   }
	}
        stage('Build') {
            steps {
                sh 'docker build -t dineshtamang14/stock:v1 .'
            }
        }
        stage('Deliver') { 
            steps {
                sh 'docker run -itd -p 3000:3000 --name test dineshtamang14/stock:v1' 
            }
        }
    }
}
