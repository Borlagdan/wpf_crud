DROP DATABASE IF EXISTS wpf_crud;

CREATE DATABASE wpf_crud;
USE wpf_crud;


DROP TABLE IF EXISTS records;

CREATE TABLE records(
	record_id INTEGER NOT NULL AUTO_INCREMENT,
	last_name VARCHAR(30),
	first_name VARCHAR(30),
	middle_name VARCHAR(30),
	gender VARCHAR(30),
	PRIMARY KEY(record_id)
);