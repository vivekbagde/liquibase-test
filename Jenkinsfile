pipeline {
    agent any
    stages {
        stage('generateChangelog') {
            environment {
                SECRET_VALUE = credentials('dbdevops')
            }
            steps {
                sh 'bash $JENKINS_HOME/workspace/LiquibaseDeploymentDemo-Pipeline/liquibase generateChangelog --url=jdbc:postgresql://devopstestdb.chzkxi0lcrpk.ap-south-1.rds.amazonaws.com:5432/example --driver=org.postgresql.Driver --classpath=$JENKINS_HOME/workspace/LiquibaseDeploymentDemo-Pipeline/postgresql-42.2.23.jar --changeLogFile=$JENKINS_HOME/workspace/LiquibaseDeploymentDemo-Pipeline/databaseChangeLog.sql --username=$SECRET_VALUE_USR --password=$SECRET_VALUE_PSW'
            }
        }
        stage('Deploy') {
            environment {
                SECRET_VALUE = credentials('dbdevops')
            }
            steps {
                sh 'bash $JENKINS_HOME/workspace/LiquibaseDeploymentDemo-Pipeline/liquibase --changeLogFile=$JENKINS_HOME/workspace/LiquibaseDeploymentDemo-Pipeline/databaseChangeLog.sql --url=jdbc:postgresql://devopstestdb.chzkxi0lcrpk.ap-south-1.rds.amazonaws.com:5432/example --driver=org.postgresql.Driver --classpath=$JENKINS_HOME/workspace/LiquibaseDeploymentDemo-Pipeline/postgresql-42.2.23.jar  --username=$SECRET_VALUE_USR --password=$SECRET_VALUE_PSW $option'
            }
        }
        stage('delete database') {
            steps {
                sh 'rm -rf $JENKINS_HOME/workspace/LiquibaseDeploymentDemo-Pipeline/databaseChangeLog'
            }
        }
    }
}

