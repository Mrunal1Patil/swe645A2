pipeline {
    agent any 
    stages {
        stage("Building student survey application image") {
            steps {
                script {
                    checkout scm
                    sh 'rm -rf *.war'
                    sh 'jar -cvf SWE645_hw3-0.0.1-SNAPSHOT.war -C src/main/webapp .'
                    sh 'echo ${BUILD_TIMESTAMP}'
                    sh "docker login -u mrunal1patil -p Romit@101" 
                    def customImage = docker.build("mrunal1patil/studentsurvey645:20240317231047")
                   
                }
            }
        }
        stage("Pushing Image to DockerHub") {
            steps {
                script {
                    sh 'docker push mrunal1patil/studentsurvey645:20240317231047'
                }
            }
        }
        stage("Deploying to Rancher") {
            steps {
                script {
                    sh 'kubectl set image deployment/backend container-0=mrunal1patil/studentsurvey645:20240317231047 -n default'
                }
            }
        }
    }
}
