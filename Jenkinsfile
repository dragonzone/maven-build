node("docker") {
    stage("Build Dockerfile") {
        docker.build("baharclerode/maven-build").push("3.3.9-jdk-8-${env.BUILD_NUMBER}")
    }
}
