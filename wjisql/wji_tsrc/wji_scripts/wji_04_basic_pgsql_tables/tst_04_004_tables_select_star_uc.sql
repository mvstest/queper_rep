/* 
     Copyright  2006-17 QuePer

     Licensed under the Apache License, Version 2.0 (the "License");
     you may not use this file except in compliance with the License.
     You may obtain a copy of the License at

         http://www.apache.org/licenses/LICENSE-2.0

     Unless required by applicable law or agreed to in writing, software
     distributed under the License is distributed on an "AS IS" BASIS,
     WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
     See the License for the specific language governing permissions and
     limitations under the License.
*/

/*** 
 * TABLE# 01. Table containing columns with SQL standard
 * types excluding multi-lingual, long and some advanced
 * data types (XML, ARRAY, etc).
 */
DROP TABLE t1_1_std_data_types_basic;

CREATE TABLE t1_1_std_data_types_basic(
	-- Character columns
	char_col	CHAR(30),
	vchar_col	VARCHAR(50),

	-- Exact numeric colunmns
	sint_col	SMALLINT,
	int_col		INTEGER NOT NULL PRIMARY KEY,
	bint_col	BIGINT,
	dec_col		DECIMAL(10,2),
	num_col		NUMERIC(10, 2),

	-- Approximate numeric columns
	real_col	REAL,
	dbl_col		DOUBLE PRECISION,


	-- Datetime columns
	date_col	DATE,
	time_col	TIME,
	ts_col		TIMESTAMP,

	-- other columns
	bool_col	BOOLEAN
);

-- Mostly positive values
INSERT INTO t1_1_std_data_types_basic VALUES( 
	'Praveen', 'Kumar', 
	12345, 1, 123456789012345, 12345.67, 12345.67,
	123456.78, 1234567890.12345,
	'2014-03-07',
	'10:30:20', 
	'2014-03-07 15:01:30', 
	true 
);

-- Mostly -ve values
INSERT INTO t1_1_std_data_types_basic VALUES( 
	'Shyam', 'Sunder', 
	-12345, 2, -123456789012345, -12345.67, -12345.67,
	-123456.78, -1234567890.12345, 
	'2014-03-07',
	'10:30:20', 
	'2014-03-07 15:01:30', 
	false 
);

-- Mostly data with 0s and blanks
INSERT INTO t1_1_std_data_types_basic VALUES( 
	'', '', 
	0, 3, 0, 0.0,0.0,
	0.0, 0.0,
	'2014-03-07',
	'10:30:20', 
	'2014-03-07 15:01:30', 
	false 
);

-- Null data
INSERT INTO t1_1_std_data_types_basic VALUES( 
	NULL, NULL, 
	NULL, 4, NULl, NULL, NULL,
	NULL, NULL, NULL, NULL, NULL,
	NULL 
);
SELECT * from t1_1_std_data_types_basic;




/***
 * TABLE# 02. Table with columns that can store
 *    multi-lingual data.
 */
DROP TABLE t2_1_multi_lingual_data_types;

CREATE TABLE t2_1_multi_lingual_data_types(
  int_col 	INTEGER,
  char_col 	CHAR(250) ,
  vchar_col 	VARCHAR(250),

  CONSTRAINT mldt_pk PRIMARY KEY(int_col)
);

-- French language data.
INSERT INTO t2_1_multi_lingual_data_types VALUES (
	1,
	'Paris s''ouvre à vos envies. Paris, l''une des plus belles villes au monde, séduit d''abord par son exceptionnel patrimoine architectural et culturel. Un patrimoine vivant, qui se modernise et s''enrichit sans cesse.',
	'Paris s''ouvre à vos envies. Paris, l''une des plus belles villes au monde, séduit d''abord par son exceptionnel patrimoine architectural et culturel. Un patrimoine vivant, qui se modernise et s''enrichit sans cesse.'
);

-- Hindi 
INSERT INTO t2_1_multi_lingual_data_types VALUES (
	2,
	'युवा पत्रकार उमेश चतुर्वेदी की यह पुस्तक मीडिया के बदलते स्वरूप पर जहां एक ओर चिंता जाहिर करती है, वहीं दूसरी ओर सकारात्मक बदलाव के प्रति उम्मीद भी जगाती है।',
	'युवा पत्रकार उमेश चतुर्वेदी की यह पुस्तक मीडिया के बदलते स्वरूप पर जहां एक ओर चिंता जाहिर करती है, वहीं दूसरी ओर सकारात्मक बदलाव के प्रति उम्मीद भी जगाती है।'	
);

-- Telugu
INSERT INTO t2_1_multi_lingual_data_types VALUES (
	3,
	'సాహితీ సమరాంగణ సార్వభౌముడిగా ప్రఖ్యాతి వహించిన విజయనగర చక్రవర్తి శ్రీ కృష్ణదేవరాయలు రచించిన తెలుగు ప్రబంధం ఈ "ఆముక్తమాల్యద" గ్రంథం. దీనికే "విష్ణుచిత్తీయం" అని మరోపేరు.',
	'సాహితీ సమరాంగణ సార్వభౌముడిగా ప్రఖ్యాతి వహించిన విజయనగర చక్రవర్తి శ్రీ కృష్ణదేవరాయలు రచించిన తెలుగు ప్రబంధం ఈ "ఆముక్తమాల్యద" గ్రంథం. దీనికే "విష్ణుచిత్తీయం" అని మరోపేరు.'
);


-- Kannada
INSERT INTO t2_1_multi_lingual_data_types VALUES (
	4,
	'ಕನ್ನಡ ಸಾಹಿತ್ಯ ಪರಂಪರೆಯಲ್ಲಿ ಸಣ್ಣ ಕತೆಗೊಂದು ಮಹತ್ವ ತಂದಕೊಟ್ಟವರಲ್ಲಿ ಆನಂದ ಕೂಡ ಒಬ್ಬರು. ೧೯೩೦ರ ಸಂದರ್ಭದಲ್ಲೇ ಕಥಾಲಹರಿ ಹರಿಸಿದ್ದ ಆನಂದರ ನಿಜ ಹೆಸರು ಅಜ್ಜಂಪುರದ ಸೀತಾರಾಮ. ''ನಾನು ಕೊಂದ ಹುಡುಗಿ'' ಅವರ ಜನಪ್ರಿಯತೆಗೆ ಸಾಕ್ಷಿಯಾದ ಕತೆ.',
	'ಕನ್ನಡ ಸಾಹಿತ್ಯ ಪರಂಪರೆಯಲ್ಲಿ ಸಣ್ಣ ಕತೆಗೊಂದು ಮಹತ್ವ ತಂದಕೊಟ್ಟವರಲ್ಲಿ ಆನಂದ ಕೂಡ ಒಬ್ಬರು. ೧೯೩೦ರ ಸಂದರ್ಭದಲ್ಲೇ ಕಥಾಲಹರಿ ಹರಿಸಿದ್ದ ಆನಂದರ ನಿಜ ಹೆಸರು ಅಜ್ಜಂಪುರದ ಸೀತಾರಾಮ. ''ನಾನು ಕೊಂದ ಹುಡುಗಿ'' ಅವರ ಜನಪ್ರಿಯತೆಗೆ ಸಾಕ್ಷಿಯಾದ ಕತೆ.'
);

-- Blanks
INSERT INTO t2_1_multi_lingual_data_types VALUES (
	5,
	'',
	''
);

-- Nulls
INSERT INTO t2_1_multi_lingual_data_types VALUES (
	6,
	NULL,
	NULL
);
SELECT * FROm t2_1_multi_lingual_data_types;


/***
 * TABLE# 03. Table with long data types.
 *            
 */
DROP TABLE t3_1_long_data_types;
CREATE TABLE t3_1_long_data_types(
	int_col 	INTEGER NOT NULL PRIMARY KEY,

	long_char_col	TEXT,
	long_bin_col	BYTEA
);
INSERT INTO t3_1_long_data_types VALUES(
	1,
	'Use this screen to transfer data from one or more tables from one database (source) to another database (destination).',
	E'\\x0123456789abcdef'	
);
INSERT INTO t3_1_long_data_types VALUES(
	2,
	'First you need to connect to a source database and a destination database.',
	E'\\x0123456789abcdef'	
);
INSERT INTO t3_1_long_data_types VALUES(
	3,
	'Tables in the destination database corresponding to the selected tables for transfer in the source database should already exist for the transfer to take place.',
	E'\\x0123456789abcdef'	
);
INSERT INTO t3_1_long_data_types VALUES(
	4,
	'The tables are not created in the destination database by wjISQL. Data types of columns of each destination table should be compatible with those of the corresponding source table. If a destination table has more columns than those in the source table, then the additional columns should be either nullable or should have a default value defined.',
	E'\\x0123456789abcdef'	
);
INSERT INTO t3_1_long_data_types VALUES(
	5, '', E'\\x01'	
);
INSERT INTO t3_1_long_data_types VALUES(
	6, NULL, NULL
);
SELECT * FROM t3_1_long_data_types; 


/***
 * TABLE# 04. Table with some non-standard data types.
 */
DROP TABLE t4_1_non_std_data_types_1;
CREATE TABLE t4_1_non_std_data_types_1 (
	int_col 	INTEGER NOT NULL PRIMARY KEY,

        -- Integer data types
	small_serial_col	SMALLSERIAL,
	serial_col	SERIAL,
	big_serial_col	BIGSERIAL
);

-- +ve values
INSERT INTO t4_1_non_std_data_types_1 VALUES (
        1, 123, 1234567, 123456789012345 
);
-- -ve  values
INSERT INTO t4_1_non_std_data_types_1 VALUES (
        2, -123, -1234567, -123456789012345 
);
-- 0 values
INSERT INTO t4_1_non_std_data_types_1 VALUES (
        3, 0, 0, 0 
);
-- NULL values. Note that NULLs can not be used for 
-- serial numbers.
INSERT INTO t4_1_non_std_data_types_1 VALUES (
        4, 0, 0, 0 
);
SELECT * FROM t4_1_non_std_data_types_1;
