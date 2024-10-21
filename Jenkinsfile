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
                sh 'mvn clean package -X'
            }
        }

        stage("SonarQube Analysis") {
            steps {
                echo 'Running SonarQube Analysis'
                withSonarQubeEnv(installationName: 'SonarQube-Immutable-Server', credentialsId: 'immutable-sonarQ') {
                sh 'mvn clean verify sonar:sonar -Dsonar.projectKey=portfolio -Dsonar.projectName=portfolio'
                }
            }
        }

        stage("OWASP Dependency Check") {
            steps {
                dependencyCheck additionalArguments: '--scan ./ --format HTML', odcInstallation: 'DP'
                dependencyCheckPublisher pattern: '**/dependency-check-report.xml'
            }
        }
        
stage("Docker Build & Push") {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'dockerloginid') {
                        sh "docker build -t image1 ."
                        sh "docker tag image1 nelzone/portfolio:latest"
                        sh "docker push nelzone/portfolio:latest"
                    }
                }
            }
        }

        stage('Deploy to Tomcat Server') {
            steps {
                echo 'Deploying artifact to Tomcat'
                script {
                    try {
                        deploy adapters: [tomcat9(credentialsId: 'deployer', path: '', url: 'http://10.0.0.235:8080')],
                               contextPath: '/portfolio',
                               war: 'target/portfolio.war'
                    } catch (Exception e) {
                        echo "Deployment failed: ${e.getMessage()}"
                        currentBuild.result = 'FAILURE'
                    }
                }
            }
        }
    }
}
