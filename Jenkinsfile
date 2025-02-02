pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t bapu12/my-app:latest .'
            }
        }
        stage('Push Docker Image') {
            steps {
                sh 'docker push bapu12/my-app:latest'
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f k8s/deployment.yaml'
                sh 'kubectl apply -f k8s/service.yaml'
            }
        }
        stage('Test Application') {
            steps {
                sh 'scripts/test_app.sh'
            }
        }
    }
}