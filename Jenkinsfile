@Library ("shared-library") _
pipeline {
    agent any

    stages {
        stage('SCM Checkout') {
            steps {
                echo 'Performing SCM Checkout'
                scmCheckout()
            }
        }
    }
}