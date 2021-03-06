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
  -- Character types
  char_col CHAR(30), 
  vchar_col VARCHAR(50),

  -- Exact numeric types
  sint_col SMALLINT,  
  int_col INTEGER NOT NULL PRIMARY KEY,  
  bint_col BIGINT,
  dec_col DECIMAL(10,2), 
  num_col NUMERIC(10,2),
 
  -- Approximate numeric types
  real_col REAL,
  flt_col FLOAT,
  dbl_col DOUBLE PRECISION,

  -- Datetime types
  date_col DATE,
  time_col TIME,

  -- Binary types
  bin_col BINARY(20),
  vbin_col VARBINARY(50)
);


/***
 * TABLE #-02: Table with columns that can store
 *    multi-lingual data.
 */

-- Table with all (most all) data types!
CREATE TABLE t2_1_multi_lingual_data_types(
  int_col INTEGER NOT NULL PRIMARY KEY,

  nchar_col NCHAR(1000),
  nvchar_col NVARCHAR(1000)
);



/***
 * TABLE #-03. Table with long data types.
 *            
 */

CREATE TABLE t3_1_long_data_types(
	int_col 	INTEGER NOT NULL PRIMARY KEY,

	long_char_col	VARCHAR(MAX),
	long_bin_col	VARBINARY(MAX)
);


/***
 * TABLE #-04. Table with some non-standard data types.
 */

CREATE TABLE t4_1_non_std_data_types_1 (
	int_col 	INTEGER NOT NULL PRIMARY KEY,

	-- Exact numeric colunmns
	tint_col	TINYINT,

	money_col MONEY,
  	smoney_col SMALLMONEY,
  	bit_col BIT,

	-- Datetime columns
  	ts_dt_col DATETIME,
  	ts_dt2_1_col DATETIME2,
  	ts_smalldt_col SMALLDATETIME,
  	ts_dt_offset_col DATETIMEOFFSET,

	-- Long data columns
	text_col	TEXT,
	image_col	IMAGE,
	ntext_col	NTEXT

);


