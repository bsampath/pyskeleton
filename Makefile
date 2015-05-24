PYTHON_VERSION="python2.7"
DEVELOP="develop"
PROJECT_NAME="projectname"

develop: requirements.txt
	virtualenv --python=${PYTHON_VERSION} ${DEVELOP}
	${DEVELOP}/bin/pip install -Ur requirements.txt
	touch ${DEVELOP}/bin/activate

clean:
	rm -fr ${DEVELOP}
	rm -fr dist
	rm -fr build
	rm -fr ${PROJECT_NAME}.egg-info
	
dev:
	${DEVELOP}/bin/python setup.py install

test: dev
	nosetests

.PHONY: clean develop
