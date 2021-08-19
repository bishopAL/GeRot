from setuptools import setup, find_packages

setup(
    name = 'dynamixel',
    version = '0.0.2',
    keywords = ('dynamixel', 'egg'),
    description = 'API to drive Dynamixel Motors',
    license = 'MIT License',

    url = 'https://github.com/bishopAL/GeRot',
    author = 'Bingbing',
    author_email = '470797339@qq.com',

    packages = find_packages(),
    include_package_data = True,
    platforms = 'any',
    install_requires = ['dynamixel_sdk'],
)

