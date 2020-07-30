pipeline {
  agent any

    stages {

        stage('Dependencies') {
            steps {
                echo 'Installing...'
                sh 'echo $GIT_BRANCH'
                sh 'npm ci'
            }
        }
    }
}
