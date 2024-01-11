pipeline {
    agent //any
    {
        label 'rw_ubuntu'
    }
    stages {
        stage('Build') {
            steps {
                script {
                def builnum = currentBuild.number
                
                echo "Building...${env.Build_ID}"
                echo "Building... ${env.NODE_NAME}"
                echo "Executing the python build"
                // sh 'python3 cli_script.py'

                //def displayname = currentBuild.currentExecutor.displayName
                //def num = currentBuild.currentExecutor.number
                //echo "Excutor information is  ${displayname} and ${num}"
                
                //def name = currentBuild.agent.name
                

                }

                script {
                    // Define the virtual environment directory within the workspace
                    def venvDir = "${WORKSPACE}/test_venv"
                    
                    // Create the virtual environment
                    // sh "python3 -m venv ${venvDir}"
                    // sh "cd ${venvDir}"
                    // Activate the virtual environment

                    sh "bash --version"
                    sh "bash python3 -V"
                    sh "pwd"
                    // sh "bash python3 cli_script.py"

                    // sh "pip3 freeze"
                    // sh "pipenv install"

                    // // sh "source /bin/activate"
                    
                    // // Install dependencies or run Python scripts within the virtual environment
                    // // sh "pip install -r requirements.txt"
                    // sh "pipenv run python3 ../cli_script.py"
                    
                    // // Deactivate the virtual environment
                    // sh "deactivate"
                }
            }
        }
        
        stage('Test') {
            steps {
                echo "Testing..."
                echo "doing test stuff..."
            }
        }
        
    }
    
}
