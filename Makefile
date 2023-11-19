venv:
	python3 -m venv makefile_venv
	echo "The venv folder is created"
	. makefile_venv/bin/activate && pip3 install -r requirements.txt


clean:
	rm -r makefile_venv
