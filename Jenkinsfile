pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
		sh 'docker build . -t rhoofard/realworld_frontend:test'
            }
        }
        stage('Deploy') {
            steps {
		sh 'docker login --username=$DOCKER_USER --password=$DOCKER_PASS'
		sh 'docker push rhoofard/realworld_frontend:test'
            }
        }
    }
}
