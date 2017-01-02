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

CALL proc_1_1_no_args_no_results;
CALL proc_2_1_no_args_with_results;
CALL proc_3_1_in_args(1, 'char argument') ;
CALL proc_4_1_in_out_args(1, ?) ;
CALL proc_5_1_multi_stmt(?, ?, ?);
