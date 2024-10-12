pipeline {
    agent any

    // Uncomment this block if you want to specify the Maven tool version
    /*
    tools {
        maven "maven3"
    }
    */

    stages {
        stage('SCM Checkout') {
            steps {
                echo 'Checking out source code from the GitHub repository'
                git url: 'https://github.com/Nelztacy/Java-mvn-app2.git'
            }
        }

        stage('Maven Build') {
            steps {
                echo 'Performing Maven Build'
                // Run Maven build with clean and package goals
                sh "mvn -Dmaven.test.failure.ignore=true clean package"
            }
        }

        stage('Deploy to QA Server') {
            steps {
                script {
                    // Use SSH to transfer the WAR file to the QA server
                    sshPublisher(
                        publishers: [
                            sshPublisherDesc(
                                configName: 'QA_Server',
                                transfers: [
                                    sshTransfer(
                                        cleanRemote: false,
                                        excludes: '',
                                        execCommand: '',
                                        execTimeout: 120000,
                                        flatten: false,
                                        makeEmptyDirs: false,
                                        noDefaultExcludes: false,
                                        patternSeparator: '[, ]+',
                                        remoteDirectory: '.',
                                        remoteDirectorySDF: false,
                                        removePrefix: 'target/',
                                        sourceFiles: 'target/mvn-hello-world.war'
                                    )
                                ],
                                usePromotionTimestamp: false,
                                useWorkspaceInPromotion: false,
                                verbose: false
                            )
                        ]
                    )
                }
            }
        }
    }
}
