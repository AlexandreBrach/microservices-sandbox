pipeline {
    agent any

    parameters {
        string(name: 'REPOSITORY_URL', defaultValue: 'env.REPOSITORY_URL', description: 'Docker repository url')

        text(name: 'TAG', defaultValue: 'env.TAG', description: 'The tag of the built Docker image')

    }

    stages {
        stage('Build frontend') {
            steps {
                sh "docker build -t ${REPOSITORY_URL}/microsandbox/frontend:${TAG} frontend"
                sh '$(aws ecr get-login --region eu-west-3 --no-include-email)'
                sh "docker push ${REPOSITORY_URL}/microsandbox/frontend:${TAG}"
            }
        }
        stage('Build backend') {
            steps {
                sh "docker build -t ${REPOSITORY_URL}/microsandbox/backend:${TAG} backend"
                sh '$(aws ecr get-login --region eu-west-3 --no-include-email)'
                sh "docker push ${REPOSITORY_URL}/microsandbox/backend:${TAG}"
            }
        }
        stage('Build gateway') {
            steps {
                sh "docker build -t ${REPOSITORY_URL}/microsandbox/gateway:${TAG} gateway"
                sh '$(aws ecr get-login --region eu-west-3 --no-include-email)'
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
