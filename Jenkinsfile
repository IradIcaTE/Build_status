pipeline {
    agent {label "First"}

    environment {
        BUILD_RESULT = "SUCCESS"
    }

    stages {
        stage("Decide Build Result") {
            steps {
                script {
                    echo "Evaluating build result logic in Groovy"
                    if ( env.BUILD_RESULT == "SUCCESS" ) {
                        echo "Simulating a sucessful build"
                    } else {
                        echo "Simulating a failed build"
                    }
                }
            }
        }
        stage("Run Shell Script") {
            steps {
                sh '''
                #!/bin/bash
                chmod +x build_status.sh
                ./build_status.sh ${env.BUILD_RESULT}
                '''
            }
        }
        stage("Archive SUmmary") {
            steps {
                archiveArtifacts artifacts: 'build_summary.txt', onlyIfSuccessful: true
            }
        }
    }
}