pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building mtest2 ...'
                sh 'mvn package'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing mtest2 ...'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying mtest2 ....'
            }
        }
    }
}

