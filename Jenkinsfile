pipeline {
    agent any
    stages {
        stage ('Compile') {
            steps {
                echo 'Compile'
            }
        }
        stage ('Test') {
            steps {
                echo 'Test'
            }
        }
    }
    post {
        success { gerritReview score:1 }
        failure { gerritReview score:-1 }
    }
}