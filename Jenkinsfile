pipeline {
    agent any
    tools {
        maven 'my-maven'
        jdk 'my-java'
    }
    stages {
        stage('Clone') {
            steps {
                git url: 'https://github.com/ManoejKr-03/Service-register-Microservice.git', branch: 'main'
            }
        }
        stage('Build') {
            steps {
                bat "mvn clean install -DskipTests"
            }
        }
        stage('Test') {
            steps {
                bat "mvn test"
            }
        }
        stage('Deploy') {
            steps {
                bat "docker build -t serviceregister-image ."
                bat "docker run -p 8761:8761 -d --name serviceregister-container serviceregister-image"
            }
        }
    }
}
