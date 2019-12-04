pipeline{
    agent {
        docker{
            image "python:alpine"
        }
    }
    stages{
        stage("Build"){
            steps{
                sh "chmod +x build/alpine.sh"
                sh "./build/alpine.sh"
                sh "pip install robotframework"
                sh "pip install -U requests"
                sh "pip install -U robotframework-requests"
                sh "pip install --upgrade robotframework-seleniumlibrary"
                sh ""
            }
        }
        stage("Testes"){
            steps{
                sh "robot -d results specs/"
            }
        }
        stage("Relatório"){
            steps{
                robot logFileName: 'log.html', 
                      otherFiles: '*screenshot*.png', 
                      outputFileName: 'output.xml', 
                      outputPath: 'results/', 
                      passThreshold: 100.0, 
                      reportFileName: 'report.html', 
                      unstableThreshold: 50.0
            }
        }
    }
}
