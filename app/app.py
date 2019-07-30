from dotenv import load_dotenv
load_dotenv()

import os
from sqlalchemy import create_engine

if __name__ == "__main__":
    #print(os.environ)
    connection_string = 'postgresql://{}:{}@{}'.format(
        os.getenv('RDS_USER'),
        os.getenv('RDS_PASSWORD'),
        os.getenv('RDS_HOSTNAME')
    )
    print(connection_string)
    with create_engine(connection_string).connect() as conn:
        print(conn.table_names())

