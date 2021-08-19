from setuptools import setup, find_packages

setup(
    name = 'ds4drv',
    version = '0.0.1',
    keywords = ('ds4', 'egg'),
    description = 'API to drive DS4 controller',
    license = 'MIT License',

    url = 'https://github.com/bishopAL/GeRo_V1',
    author = 'Bingbing',
    author_email = '470797339@qq.com',

    packages = find_packages(),
    include_package_data = True,
    platforms = 'any',
    install_requires = ['pygame'],
)