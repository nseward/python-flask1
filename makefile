venv/bin/activate: requirements.txt
	python3 -m venv venv
	pip install -r requirements.txt

test: venv/bin/activate
	pytest 

run: venv/bin/activate
	python app.py
