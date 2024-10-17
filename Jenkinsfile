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
                    deploy adapters: [tomcat9(credentialsId: 'deployer', path: '', url: 'http://10.0.0.235:8080')], contextPath: '', war: '**/*.war'
                    // Uncomment if you want to use SSH for deployment
                    // sshagent(['tomcat-deployer']) {
                    //     sh 'scp -o StrictHostKeyChecking=no -v target/portfolio.war technel@10.0.0.235:/opt/tomcat/webapps'
                    // }
                }
            }
        }
    }
}
