# config.py you can put this file anywhere in the project
class Config(object):
    DEBUG = False
    TESTING = False


class DNDConfig(Config):
    """
    Development configurations
    """
    MYSQL_DATABASE_USER = 'root'
    MYSQL_DATABASE_PASSWORD = ''
    MYSQL_DATABASE_HOST = 'localhost'
    MYSQL_DATABASE_DB = 'flask'  # can be any

    DEBUG = True