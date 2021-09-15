node {
    def app

    stage('Clone repository') {
        /* Cloning the Repository to our Workspace */

        checkout scm
    }

    stage('Build image') {
	    
       sh('docker build -t audubilly/node-app1:2.0 .')
    }

    stage('Login into Docker Hub') {
	    
        sh('docker login -u audubilly -p patgold89')
    }

    stage('Push image') {
        /* 
			You would need to first register with DockerHub before you can push images to your account
		*/
//         docker.withRegistry('https://registry.hub.docker.com', 'docker-hub') {
//             app.push("${env.BUILD_NUMBER}")
//             app.push("latest")
//             } 
//                 echo "Trying to Push Docker Build to DockerHub"
	    sh('docker push audubilly/node-app1:2.0')
    }
	
    stage('Deploy Node-app Container ') {
	    
        sh('docker run -d -p 8001:8000 audubilly/node-app1:2.0')
    }

}
