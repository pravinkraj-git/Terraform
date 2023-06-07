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
                   checkout scm 
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