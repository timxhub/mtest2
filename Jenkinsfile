pipeline {
   environment {
      dockerImage = ''
      registry = "docker_hub_account/repository_name"
      registryCredential = 'dockerhub'
   }
   agent any
   stages {
      stage('Compile the project and build the release package (jar)') {
         steps {
            sh 'mvn package'
         }
      }
      stage('Build the Docker image') {
         steps{
            script {
               dockerImage = docker.build "mtest:latest"
            }
         }
      }
      stage('Push the Docker image') {
         steps{
            script {
               dockerImage = docker.push('latest')
            }
         }
      }
   }
}
