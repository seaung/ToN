##### python Logging模块


##### 日志级别

>
    1. info         20

    2. warnning     30

    3. debug        10

    4. error        40

    5. critical     50

    6. notset       0


##### 常用日志格式

>
    1. asctime         %(asctime)s

    2. filname         %(filename)s

    3. funcName        %(funcName)s

    4. levelname       %(levelname)s

    5. message         %(message)s

    6. name            %(name)s

    7. pathname        %(pathname)s

    8. process         %(process)d

    9. processName     %(processName)s

    10. module          %(module)s

    11. thread         %(thread)d

    12. threadName     %(threadName)s


##### 举个栗子

>
    import logging
    import getpass
    import sys

    filename = sys.argv[0][1:-3] + '.log'

    user = getpass.getuser()

    logger = logging.getLogger(user)

    logger.setLevel(logging.DEBUG)

    log_formatter = '%(asctime)s - %(levelname)s - %(funcName)s - %(filename)s - %(modules)s'

    log_file = logging.FileHandler(filename)

    log_stream = logging.StreamHandler()

    log_stream.setLevel(logging.DEBUG)

    log_file.setFormatter(log_formatter)
    log_file.setFormatter(log_stream)

    logger.addHandler(log_file)
    logger.addHandler(log_stream)

