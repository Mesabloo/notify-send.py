#!python

from setuptools import setup, find_namespace_packages

setup(
    name="notify-send",
    version="1.2.3",
    packages=find_namespace_packages(where='notify_send_py'),
    install_requires=[
        "dbus-python>=1.2.12",
        "notify2==0.3.1",
        "pygobject==3.34.0"
    ],
    package_dir={'': 'notify_send_py'},
    entry_points={
        'console_scripts': [
            'notify-send = notify_send_py:main'
        ]
    },
    python_requires=">=3.6"
)
