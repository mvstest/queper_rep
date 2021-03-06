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

/***
 * TABLE# 02. Table with columns that can store
 *    multi-lingual data.
 */
CREATE TABLE t2_1_multi_lingual_data_types(
  int_col 	INTEGER,
  char_col 	CHAR(250) ,
  vchar_col 	VARCHAR(250),

  CONSTRAINT mldt_pk PRIMARY KEY(int_col)
);


/***
 * TABLE# 03. Table with long data types.
 *            
 */
CREATE TABLE t3_1_long_data_types(
	int_col 	INTEGER NOT NULL PRIMARY KEY,

	long_char_col	TEXT,
	long_bin_col	BYTEA
);

/***
 * TABLE# 04. Table with some non-standard data types.
 */
CREATE TABLE t4_1_non_std_data_types_1 (
	int_col 	INTEGER NOT NULL PRIMARY KEY,

        -- Integer data types
	small_serial_col	SMALLSERIAL,
	serial_col	SERIAL,
	big_serial_col	BIGSERIAL
);
