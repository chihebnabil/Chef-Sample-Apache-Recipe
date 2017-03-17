name 'apache_server'
maintainer 'Nabil Chiheb'
maintainer_email 'chiheb.design@gmail.com'
license 'Apache 2.0'
description 'Provides Apache and mysql_service, mysql_config, and mysql_client resources'
version '1.0'

supports 'debian'
supports 'ubuntu'


depends 'mysql', '~> 8.0'
