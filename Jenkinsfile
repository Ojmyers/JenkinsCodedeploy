pipeline {
  agent any

    stages {

        stage('Dependencies') {
            agent {
                docker {
                    image 'luther007/cynerge_images'
                    args '-u root'
                    alwaysPull true
                }
            }
            steps {
                echo 'Installing...'
                sh 'echo $GIT_BRANCH'
                sh 'npm ci'
            }
        }
    }
}
