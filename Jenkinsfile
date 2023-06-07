pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/pravinkraj-git/Terraform']])
            }
        }
        
        stage('init') {
            steps {
                sh ('terraform init')
            }
        }
        
        stage('plan') {
            steps {
                sh ('terraform plan')
            }
        }
        
        stage('apply') {
            steps {
                sh ('terraform destroy --auto-approve')
            }
        }
    }
}