install:
	pip3 install --editable .[dev]

docs:
	pip3 install --editable .[doc]

tests:
	pip3 install --editable .[dev]
	pip3 install coverage
	pip3 install pytest-cov
	py.test ./test -vs

unit-tests:
	py.test ./test/unit -vs

lint:
	flake8 .

coverage-report:
	pytest -s -vv --cov=./wampy

crossbar:
	crossbar start --config ./wampy/testing/configs/crossbar.json
