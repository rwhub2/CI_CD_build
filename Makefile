# App Defaults
venv_folder ?= makefile_venv


venv:
	python3 -m venv $(venv_folder)
	echo "The venv folder is created"
	. $(venv_folder)/bin/activate && pip3 install -r requirements.txt


clean:
	rm -r $(venv_folder)
