pipeline {
    agent {
        node {
            label 'ubuntu-slave'
        }
    }

    environment {
        EMAIL_RECIPIANTS = 'ljolliff@cynerge.com'
        NEXUS_USER = credentials('nexus-user')
        NEXUS_PASS = credentials('nexus-pass')
        NEXUS_REPO = credentials('nexus-repo')
        APP_SOURCE = './src/**/**/**/**.html'
        STATUS_SUCCESS = ''
        JENKINS_URL = "${JENKINS_URL}"
        JOB_NAME = "${JOB_NAME}"
      //  SONAR_TOKEN = credentials('govcloud-sonarqube')
      //  SONAR_PROJECT = 'shipyard-project'
      //  SONAR_SOURCE = 'src'
    }

    stages {

        stage('Joey') {
            agent {
                docker {
                    image 'luther007/cynerge_images'
                    args '-u root'
                    alwaysPull true
                }
            }

            steps {
                sh 'printenv'
                sh 'touch joey.html'
                sh 'chmod +w joey.html'
                sh "echo 'Hello world!' >> joey.html"
                sh "curl -v --user '${NEXUS_USER}:${NEXUS_PASS}' --upload-file \"{\$(echo *.html | tr ' ' ',')}\" ${NEXUS_REPO}Pa11y/${JOB_NAME}/${env.BRANCH_NAME}/${BUILD_NUMBER}/"
                
            }
        }
    }
}
