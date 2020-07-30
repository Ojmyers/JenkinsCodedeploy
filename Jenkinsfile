pipeline {

    environment {
        EMAIL_RECIPIANTS = 'ljolliff@cynerge.com'
        NEXUS_USER = credentials('nexus-user')
        NEXUS_PASS = credentials('nexus-pass')
        NEXUS_REPO = credentials('nexus-raw-repo')
        APP_SOURCE = './src/**/**/**/**.html'
        STATUS_SUCCESS = ''
        JENKINS_URL = "${JENKINS_URL}"
        JOB_NAME = "${JOB_NAME}"
        SONAR_TOKEN = credentials('govcloud-sonarqube')
        SONAR_PROJECT = 'shipyard-project'
        SONAR_SOURCE = 'src'
    }

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
