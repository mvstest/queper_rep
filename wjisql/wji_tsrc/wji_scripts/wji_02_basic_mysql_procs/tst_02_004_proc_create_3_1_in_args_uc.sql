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


/* 
 * Test Stored Procedures and Functions for MySQL.
 *
 * Note that a CREATE PROCEDURE or FUNCTION command should not be in a batch of 
 * commands unless it is the last one in the batch to be executed in wjISQL.
 *
 */

/* Stored Procedures */

/**
 * Procedure # 3_1: A procedure with only input arguments.
 */
CREATE PROCEDURE proc_3_1_in_args(
	IN in_arg INTEGER,
	IN char_arg VARCHAR(100))
    SELECT in_arg, char_arg;

