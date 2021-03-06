/* 
     Copyright 2014 M. Vidyasagar

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


/* 
 * Test Stored Procedures and Functions for Microsoft SQL Server.
 *
 * Note that a CREATE PROCEDURE or FUNCTION command should not be in a batch of 
 * commands unless it is the last one in the batch to be executed in wjISQL.
 *
 */


/**
 * Procedure # 5_1: A procedure with multiple stmts in its body.
 */
CREATE PROCEDURE proc_5_1_multi_stmt
	@count_arg INTEGER OUTPUT,
   	@max_arg INTEGER OUTPUT,
   	@min_arg INTEGER OUTPUT	 
AS 
BEGIN
SET @count_arg = (SELECT COUNT(*) FROM t1_1_std_data_types_basic);
SET @max_arg = (SELECT MAX(int_col) FROM t1_1_std_data_types_basic);
SET @min_arg = (SELECT MIN(int_col) FROM t1_1_std_data_types_basic);
SELECT COUNT(*), MAX(int_col), MIN(int_col) FROM t1_1_std_data_types_basic;
END;
