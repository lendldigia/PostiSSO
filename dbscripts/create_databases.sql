create database apimgtdb;
grant all on apimgtdb.* TO 'apimgr'@'%';

create database userdb;
grant all on userdb.* TO 'usermgr'@'%';

create database regdb;
grant all on regdb.* TO 'regmgr'@'%';

create database statdb;
grant all on statdb.* TO 'statmgr'@'%';

create database mbstoredb;
grant all on mbstoredb.* TO 'storemgr'@'%';

create database analytics_event_Store;
grant all on analytics_event_Store.* TO 'wso2admin'@'%';

create database analytics_processed_data_store;
grant all on analytics_processed_data_store.* TO 'wso2admin'@'%';
