node("docker") {
    stage("Checkout") {
        checkout scm
    }
    
    stage("Build Dockerfile") {
        docker.withRegistry("https://docker.dragon.zone:10081/", "jenkins-nexus") {
            docker.build("baharclerode/maven-build").push("3.3.9-jdk-8-${env.BUILD_NUMBER}")
        }
    }
}
