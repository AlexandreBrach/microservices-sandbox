pipeline {
    agent any

    stages {
        stage('Build frontend') {
            steps {
                sh "docker build -t ${REPOSITORY_URL}/microsandbox/frontend:${TAG} frontend"
            }
        }
        stage('Build backend') {
            steps {
                sh 'cd backend'
                sh "docker build -t ${REPOSITORY_URL}/microsandbox/backend:${TAG} backend"
            }
        }
        stage('Build gateway') {
            steps {
                sh 'cd gateway'
                sh "docker build -t ${REPOSITORY_URL}/microsandbox/gateway:${TAG} gateway"
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
