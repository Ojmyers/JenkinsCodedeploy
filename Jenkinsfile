pipeline {
  agent any

    stages {

        stage('Dependencies') {
            steps {
                echo 'Installing...'
                sh 'echo $GIT_BRANCH'
                sh 'npm install'
            }
        }
    stage('Setup parameters') {
        steps {
            script { 
                properties([
                    parameters([
                        choice(
                            choices: ['ONE', 'TWO'], 
                            name: 'PARAMETER_01'
                        ),
                        booleanParam(
                            defaultValue: true, 
                            description: '', 
                            name: 'BOOLEAN'
                        ),
                        text(
                            defaultValue: '''
                            this is a multi-line 
                            string parameter example
                            ''', 
                                name: 'MULTI-LINE-STRING'
                        ),
                        string(
                            defaultValue: 'scriptcrunch', 
                            name: 'STRING-PARAMETER', 
                            trim: true
                        )
                    ])
                ])
            }
        }
    }
}
}
