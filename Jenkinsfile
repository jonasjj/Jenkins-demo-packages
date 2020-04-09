pipeline {
   agent any

   stages {
        stage('Create project') {
            steps {
                deleteDir() // clean up workspace
                git 'https://github.com/jonasjj/Jenkins-demo-packages'
                sh 'cd vivado && vivado -mode batch -source create_vivado_proj.tcl'
            }
        }
        stage('Check VHDL syntax') {
            steps {
                sh 'cd vivado && vivado -mode batch -source check_syntax.tcl'
            }
        }
    }
    post {
        failure {
            emailext attachLog: true,
            body: '''Project name: $PROJECT_NAME
Build number: $BUILD_NUMBER
Build Status: $BUILD_STATUS
Build URL: $BUILD_URL''',
            recipientProviders: [culprits()],
            subject: 'Project \'$PROJECT_NAME\' is broken'
        }
    }
}
