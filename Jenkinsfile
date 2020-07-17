pipeline {
   environment {
      dockerImage = ''
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
   }
}
