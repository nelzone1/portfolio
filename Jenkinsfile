@Library ("shared-library") _
pipeline {
    agent any

    tools {
        maven "maven"
    }

    stages {
        stage('SCM Checkout') {
            steps {
                echo 'Performing SCM Checkout'
                scmCheckout()
            }
        }
    }
}