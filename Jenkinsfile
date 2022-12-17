pipeline {
    agent {
    node {
        label 'Java-Agent'
    }
}

    stages {
        stage('cloning') {
            steps {
                echo 'Start clonning remote repository . . . '
                git branch: 'main', credentialsId: 'github-ssh-key', url: 'git@github.com:mirexcool/devops_final_project.git'
                echo 'Finished clonning remote repository . . . '
            }
        }
        
        stage('build-artifact') {
            steps {
                sh 'mvn clean package'
                archiveArtifacts artifacts: 'target/*.war', followSymlinks: false
            }
        }
        
        stage('artifact-to-s3') {
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'deploy-to-s3', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
                        sh 'aws s3 ls'
                        sh 'aws s3 cp target/blog-app.war s3://epam-final-project' 
                    }
            }
        }
    }
}
