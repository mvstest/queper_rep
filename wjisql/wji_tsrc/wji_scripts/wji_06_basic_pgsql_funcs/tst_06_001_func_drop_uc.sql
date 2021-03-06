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


/* *************************************************** */

/* 
 * Drop Stored Functions.
 */

DROP FUNCTION func_1_1_no_args();
DROP FUNCTION func_2_1_no_args_with_results();
DROP FUNCTION func_3_1_in_args(in_arg IN INTEGER,
	char_arg IN CHAR);
DROP FUNCTION func_4_1_in_out_args(in_arg IN INTEGER,
   	out_arg OUT CHAR);
DROP FUNCTION func_4_2_in_out_inout_args(in_arg IN INTEGER,
   	out_arg OUT SMALLINT,
        inout_arg IN OUT INTEGER);
DROP FUNCTION func_5_1_multi_stmt(in_int_arg IN INTEGER,
   	out_char_arg OUT CHAR(30), 
   	out_dec_arg OUT DECIMAL(10,2),
   	out_sint_arg OUT SMALLINT
);
