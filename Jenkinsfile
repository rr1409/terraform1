pipeline{
    options{
        buildDiscarder(logRotator(numToKeepStr: '5', artifactNumToKeepStr: '5'))
    }

    agent any

    environment {
        AWS_ACCESS_KEY_ID = credentials('terraform-lab')
        AWS_SECRET_ACCESS_KEY =credentials('terraform-lab')

    }

    /**tools {
        terraform 'terraform'
    }**/

    stages{
        stage('Terraform Virsion Checking'){
            steps{
                echo 'Checking Terraform Version...'
                sh 'terraform --version'
                echo 'Terraform version is ok'
            }
        }

        stage('Terraform Initiallisation'){
            steps{
                echo 'Terraform Initiallisation started...'
                sh 'terraform init'
                echo 'Terraform initiallisation completed!!'
            }
        }

        stage('Terraform Planning'){
            steps{
                echo 'Terraform Planning started...'
                sh 'terraform plan -var-file=terraform.tfvars -out=tfplan.txt'
                echo 'Terraform planning completed!!'
            }
        }

        stage('Terraform Apply'){
            steps{
                echo 'Terraform apply started...'
                sh 'terraform apply --auto-approve'
                echo 'Terraform Auto apply completed!!'
            }
        }

        stage('Terraform Destroy'){
            steps{
                echo 'Terraform Destroy started...'
                sh 'terraform destroy --auto-approve'
                echo 'Terraform auto destroy completed!!'
            }
        }
    }

    
}
