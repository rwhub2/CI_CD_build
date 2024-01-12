pipeline {
    agent //any
    {
        label 'rw_ubuntu'
    }
    stages {
        stage('Clean Workspace') {
            steps {
                script {        
                    sh 'echo this is the workspace'
                    sh 'pwd'        
                    // cleanWs()
                }

            }
        }

        stage('Set up Environment'){    
            steps {
                 script {
                    // Define the virtual environment directory within the workspace
                    def venvDir = "${WORKSPACE}/test_venv"
                    
                    // Create the virtual environment
                    // sh "python3 -m venv ${venvDir}"
                    // sh "cd ${venvDir}"
                    // Activate the virtual environment

                    sh "bash --version"

                    sh "python3 -V"

                    // sh 'python3 -m venv test_venv'

                    dir(${venvDir}) {

                    sh "pwd"
                    sh "touch tt.txt"

                    }

                    sh "pwd"                   

                    // sh "source ${venvDir}/bin/activate"


                    // sh "terraform init"

                    // sh "terraform plan"

                    // sh "terraform apply"

                    // sh 'pwd'

                    // sh 'pip list'


                    // sh 'terraform --version'

                    // sh 'rm -r test_venv'

                    // sh 'python3 cli_script.py' 

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
    }     

        
}
