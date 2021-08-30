pipeline {
    agent any
    stages {
        stage('info') {
            environment {
                SECRET_VALUE = credentials('dbdevops')
            }
            steps {
                sh 'bash $JENKINS_HOME/workspace/liquibase-test/liquibase --changeLogFile=$JENKINS_HOME/workspace/liquibase-test/databaseChangeLog.sql --url=jdbc:postgresql://devopstestdb.chzkxi0lcrpk.ap-south-1.rds.amazonaws.com:5432/example --driver=org.postgresql.Driver --classpath=$JENKINS_HOME/workspace/liquibase-test/postgresql-42.2.23.jar  --username=$SECRET_VALUE_USR --password=$SECRET_VALUE_PSW $option'
            }
        }
    }
}

