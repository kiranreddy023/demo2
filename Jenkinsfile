pipeline{
    agent {
        label 'slavePASSWD'
    }
    tools{
        maven 'maven-3.6.3'
    }
    stages{
        stage('checkout'){
            steps{
                git branch: 'main', url: 'https://github.com/kiranreddy023/b6-java.git'
            }
        }
        stage('build'){
            steps{
                sh 'mvn clean install -DskipTests=true'
            }
        }
        stage('Test'){
            steps{
                sh 'mvn test'
            }
        }
        stage('deploy'){
            steps{
                sh 'java -jar target/*.jar'
            }
        }
    }
    post{
        always{
                archiveArtifacts artifacts: 'target/*.jar', followSymlinks: false
                junit 'target/**/*.xml'
        }
    }
}
