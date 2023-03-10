pipeline {
    agent any
    environment {
      PATH = "${PATH}:${getterraformpath()}"
    }
    stages{
      stage("s3 create bucket"){
        steps{
          script{
            invokeansi("s3-bucket.yml")

          }
        }
      }
    
      stage("Terraform init and apply - dev") { 
        steps{

           sh label: "", returnStatus: true, script: 'terraform workspace new dev'

           sh "terraform init"

           script {
             invokeansi("ansixterra.yml") + "--extra-vars app_env=dev"
           } 
        }  
      }
      stage("Terraform init and apply - prod") {
        steps{

          sh label: "", returnStatus: true, script: 'terraform workspace new prod'

          sh "terraform init"

          script{
            invokeansi("ansixterra.yml") + "--extra-vars app_env=prod"
          }
        }
      }  
    } 
}

def getterraformpath(){
  def tfHome = tool name: 'terraform', type: 'terraform'
  return tfHome
}

def invokeansi(playbook){
  ansiblePlaybook become: true, installation: 'ansible', playbook: "${playbook}"
}
