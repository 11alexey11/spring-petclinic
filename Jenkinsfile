pipeline {
    agent any

    environment {
        DOCKER_HUB_USER = 'yanvarevalexey'
        DOCKER_HUB_REP = 'spring-petclinic'
        DOCKER_HUB_VERSION = '2.6.0-SNAPSHOT'
        JAR_PROJECT_NAME = 'spring-petclinic'
        //NETWORK_PETCLINIC = UUID.randomUUID().toString()
    }

    stages {
        /*stage('Network to Docker') {
            steps {
                sh "docker network create ${NETWORK_PETCLINIC}"
            }
        }
        */

        stage('Build') {
            steps {
                echo 'Docker building'
                script {
                    docker.build("${DOCKER_HUB_USER.toLowerCase()}/${DOCKER_HUB_REP.toLowerCase()}:${DOCKER_HUB_VERSION.toLowerCase()}", "--build-arg JAR_VERSION=${DOCKER_HUB_VERSION} --build-arg JAR_ARTIFACT_ID=${JAR_PROJECT_NAME} -f Dockerfile .")
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
