try:
    from setuptools import setup
except ImportError:
    from distutils.core import setup

config = {
    'description': 'My Project',
    'author': 'Badhri Sampathkumar',
    'url': 'http://www.badhri.net',
    'download_url': 'http://www.badhri.net/downloads',
    'author_email': 'me@badhri.net',
    'version': '0.1',
    'install_requires': ['nose'],
    'packages': ['NAME'],
    'scripts': [],
    'name': 'pyskeleton'
}

setup(**config)
