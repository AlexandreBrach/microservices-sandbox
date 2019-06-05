pipeline {
    agent any

    stages {
        stage('Build frontend') {
            steps {
                sh "docker build -t ${REPOSITORY_URL}/microsandbox/frontend:${TAG} frontend"
                sh "docker push ${REPOSITORY_URL}/microsandbox/frontend:${TAG}"
            }
        }
        stage('Build backend') {
            steps {
                sh "docker build -t ${REPOSITORY_URL}/microsandbox/backend:${TAG} backend"
                sh "docker push ${REPOSITORY_URL}/microsandbox/backend:${TAG}"
            }
        }
        stage('Build gateway') {
            steps {
                sh "docker build -t ${REPOSITORY_URL}/microsandbox/gateway:${TAG} gateway"
                sh "docker push ${REPOSITORY_URL}/microsandbox/gateway:${TAG}"
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
