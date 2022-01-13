pipeline {
    agent any

    environment {
        DOCKER_HUB_USER = 'yanvarevalexey'
        DOCKER_HUB_REP = 'spring-petclinic'
        DOCKER_HUB_VERSION = '2.6.0-SNAPSHOT'
        JAR_PROJECT_NAME = 'spring-petclinic'
    }

    stages {
        stage('Build') {
            steps {
                echo 'Docker building'
                script {
                    docker.build("${DOCKER_HUB_USER}/${DOCKER_HUB_REP}:${DOCKER_HUB_VERSION}", "-f Dockerfile .")
                }
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
