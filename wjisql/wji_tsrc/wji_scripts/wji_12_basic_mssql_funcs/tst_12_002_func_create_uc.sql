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
 * Test with Stored Functions of Microsoft SQL Server.
 *
 * Note that a CREATE PROCEDURE or FUNCTION command should not be in a batch of 
 * commands unless it is the last one in the batch to be executed in wjISQL.
 *
 */

/**
 * Function # 1_1: A function which returns a value.
 */
CREATE FUNCTION func_1_1_compute_tax (@in_arg INTEGER)
	RETURNS INTEGER
AS 
BEGIN
    DECLARE @amount DECIMAL(10,2);
    DECLARE @edu_cess DECIMAL(10,2);
    DECLARE @basic_tax DECIMAL(10,2);

    SET @amount = (SELECT dec_col FROM t1_1_std_data_types_basic
			WHERE int_col = @in_arg);
    SET @edu_cess = @amount * 0.03;
    SET @basic_tax = @amount * 0.3;
    RETURN @basic_tax + @edu_cess;
END;
