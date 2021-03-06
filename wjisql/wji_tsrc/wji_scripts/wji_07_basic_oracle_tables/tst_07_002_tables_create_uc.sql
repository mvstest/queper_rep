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
 * Table #-01: Table with basic data types
 */
CREATE TABLE t1_1_std_data_types_basic(
	-- Character columns
	char_col	CHAR(30),
	vchar_col	VARCHAR(50),

	-- Exact numeric colunmns
	sint_col	SMALLINT,
	int_col		INTEGER NOT NULL PRIMARY KEY,
	dec_col		DECIMAL,
	num_col		NUMERIC(10,2),

	-- Approximate numeric columns
	flt_col		FLOAT,
	real_col	REAL,
	dbl_col		DOUBLE PRECISION,


	-- Datetime columns
	date_col	DATE,
	ts_col		TIMESTAMP
);

/***
 * TABLE# 02. Table with SQL standard data types  that are not
 * commonly used.
 */

CREATE TABLE t1_2_std_data_types_adv (
	int_col		INTEGER NOT NULL PRIMARY KEY,

	interval_1_col	INTERVAL YEAR TO MONTH,
	interval_2_col	INTERVAL DAY TO SECOND
);

/***
 * TABLE# 03. Table with columns having character set to store 
 *    multi-lingual data.
 */

CREATE TABLE t2_1_multi_lingual_data_types(
  int_col 	INTEGER,
  nchar_col 	NCHAR(1000) ,
  nvchar_col 	NVARCHAR2(1000),

  CONSTRAINT mldt_pk PRIMARY KEY(int_col)
);


/***
 * TABLE# 04. Table with long data types.
 */

CREATE TABLE t3_1_long_data_types(
	int_col 	INTEGER NOT NULL PRIMARY KEY,

	long_char_col	CLOB,
	long_nclob_col	NCLOB,
	long_bin_col	BLOB
);
 


/***
 * TABLE# 05. Table with non-SQL standard data types-1.
 */

CREATE TABLE t4_1_non_std_data_types_1 (
	int_col 	INTEGER NOT NULL PRIMARY KEY,

        -- Integer data types
	num_1_col	NUMBER(2),
	num_2_col	NUMBER,

	-- Character data types
	vchar2_col	VARCHAR2(1000),
	nvchar2_col	NVARCHAR2(1000)

);


