pipeline {
  agent any
  environment {
    SPECTRAL_DSN = credentials('spectral-dsn')
  }
  stages {
    stage('install Spectral') {
      steps {
        sh "curl -L 'https://spectral-us.checkpoint.com/latest/x/sh?dsn=$SPECTRAL_DSN' | sh"
      }
    }
    stage('scan for issues') {
      steps {
        sh "$HOME/.spectral/spectral scan --include-tags base,audit"
      }
    }
    stage('build') {
      steps {
        // your build scripts
        sh "./build.sh"
      }
    }
  }
}
