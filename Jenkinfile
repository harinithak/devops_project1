pipeline {
    agent any 

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/harinithak/devops_project1.git'
            }
        }
        
        stage('Build') {
            steps {
                // Replace with your build commands
                sh 'echo "Building the application..."'
                // For example, if it's a Maven project:
                // sh 'mvn clean install'
            }
        }
        
        stage('Test') {
            steps {
                // Replace with your test commands
                sh 'echo "Running tests..."'
                // For example, if you have unit tests:
                // sh 'mvn test'
            }
        }
        
        stage('Deploy') {
            steps {
                // Replace with your deployment commands
                sh 'echo "Deploying the application..."'
                // For example, if using Docker:
                // sh 'docker build -t your-image-name .'
                // sh 'docker run -d -p 80:80 your-image-name'
            }
        }
    }
    
    post {
        always {
            echo 'Cleaning up...'
            // Cleanup steps if necessary
        }
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed. Please check the logs.'
        }
    }
}
