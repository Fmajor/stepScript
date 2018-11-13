from setuptools import setup, find_packages
from distutils.command.install import install
from distutils.command.build import build
from subprocess import call
import importlib
import os
import sys

# setups
name="stepScript"
version="1.0"
packages = []
# for wider usage, remove all requires, you can install them if needed
install_requires=['ipython', 'pyyaml', 'ipdb']
install_requires=[]
author='Fmajor'
author_email='wujinnnnn@.gmail.com'
license='MIT'
description=""
long_description=""
scripts = ['bin/stepScript']

def readme():
    with open('README.md') as f:
        return f.read()

setup(name=name,
      version=version,
      description=description,
      long_description=long_description,
      install_requires=install_requires,
      author=author,
      author_email=author_email,
      license=license,
      packages=packages,
      include_package_data=True,
      zip_safe=False,
      scripts=scripts,
)
