pipeline {
    agent any

    tools {
        maven "maven"
    }

    stages {
        stage('SCM Checkout') {
            steps {
                echo 'Performing SCM Checkout'
                echo 'Cloning Java Maven App Code'
                git branch: 'main', credentialsId: 'gh-token', url: 'https://github.com/nelzone1/portfolio.git'
            }
        }

        stage('Java Application Build') {
            steps {
                echo 'Performing Java Maven Application Build'
                // Running the Maven build
                sh 'mvn clean package -X'
            }
        }

        stage('Deploy to Tomcat Server') {
            steps {
                echo 'Deploying artifact to Tomcat'
                script {
                    deploy adapters: [tomcat9(credentialsId: 'deployer', path: '', url: 'http://10.0.0.235:8080')],
                           contextPath: '/portfolio', // Adjust the context path as needed
                           war: 'target/portfolio.war' // Ensure this matches the output path of your WAR
                }
            }
        }
        stage("SonarQube-SCM") {
        withSonarQubeEnv(credentialsId: 'immutable-sonarQ') {
            sh "${mvn}/bin/mvn clean verify sonar:sonar -Dsonar.projectKey=portfolio -Dsonar.projectName='portfolio'"
        }
    }
}

