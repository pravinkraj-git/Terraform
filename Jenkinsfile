pipeline{
    agent any

        tools{
            terraform 'terraform'
        }
        
        stages{
            stage("AWS Instance"){
                steps{
                    withCredentials([[
                        $class: 'AmazonWebServicesCredentialsBiniding',
                        credentials: 'AWS-Jenkins'
                        accessKeyVariable: 'AWS_ACCESS_KEY_ID',
                        secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']])
                }
            }
            stage("checkout from GIT"){
                steps{
                    git credentialsId: 'db6fd54f-98bc-4899-aba1-ff2bc4bf57c5', url: 'https://github.com/pravinkraj-git/Terraform.git'
                }
            }
            stage("Terraform"){
                steps{
                    sh 'terraform init'
                }
            }
            stage("terraform apply"){
                steps{
                    sh 'terraform apply --auto-approve'
                }
            }
        }
    }