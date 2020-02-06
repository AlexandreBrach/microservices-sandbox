pipeline {
    agent any

    parameters {
        string(name: 'REPOSITORY_URL', defaultValue: 'env.REPOSITORY_URL', description: 'Docker repository url')

        text(name: 'TAG', defaultValue: 'env.TAG', description: 'The tag of the built Docker image')

    }

    stages {
        stage('Build') {
            steps {
                sh "echo 'docker build'$REPOSITORY_URL $TAG"
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
