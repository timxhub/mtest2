pipeline {
   environment {
      dockerImage = ''
      registry = "$PIPELINE2REGISTRY"
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
               dockerImage = docker.build registry + ":latest"
e           }
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
