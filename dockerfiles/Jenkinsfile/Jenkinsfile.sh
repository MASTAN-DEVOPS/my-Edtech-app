pipeline {
    agent any

    environment {
        BACKEND_IMAGE = 'mdmastan222/genius-backend:latest'
        FRONTEND_IMAGE = 'mdmastan222/genius-frontend:latest'
    }

    stages {
        stage('Clone Code') {
            steps {
                git 'git@github.com:MASTAN-DEVOPS/my-Edtech-app.git'
            }
        }

        stage('Build Backend Docker Image') {
            steps {
                dir('server') {
                    sh 'docker build -t $BACKEND_IMAGE .'
                }
            }
        }

        stage('Build Frontend Docker Image') {
            steps {
                dir('client') {
                    sh 'docker build -t $FRONTEND_IMAGE .'
                }
            }
        }

        stage('Push Images to DockerHub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-creds', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                    sh 'echo $PASSWORD | docker login -u $USERNAME --password-stdin'
                    sh 'docker push $BACKEND_IMAGE'
                    sh 'docker push $FRONTEND_IMAGE'
                }
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f k8s/'
            }
        }
    }
}

