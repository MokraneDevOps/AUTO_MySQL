pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'dotnet build eShopOnWeb.sln'
      }
    }

    stage('Testes') {
      parallel {
        stage('Testes') {
          steps {
            sh 'dotnet test testes/UnitTests'
          }
        }

        stage('Integration ') {
          steps {
            sh 'dotnet test testes/UnitTests'
          }
        }

        stage('Functional') {
          steps {
            sh 'dotnet test testes/UnitTests'
          }
        }

      }
    }

    stage('deployement') {
      steps {
        sh 'dotnet gublish eShopOn.sln -o /var/aspnet'
      }
    }

  }
}