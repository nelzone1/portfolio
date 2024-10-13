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
                git branch: 'main', credentialsId: 'GH-PAT', url: 'git@github.com:nelzone1/portfolio.git'
            }
        }

        stage('Java Application Build') {
            steps {
                echo 'Perform Java Maven Application Build'
                // Running the Maven build
                sh 'mvn clean package -X'
            }
        }

        // Uncomment the deployment stage when ready
        // stage('Deploy to Tomcat_Server') {
        //     steps {
        //         script {
        //             sshPublisher(publishers: [sshPublisherDesc(configName: 'SA-Tomcat_Server', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '.', remoteDirectorySDF: false, removePrefix: 'target/', sourceFiles: 'target/mvn-hello-world.war')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
        //         }
        //     }
        // }
    }
}
