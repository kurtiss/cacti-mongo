# This is the template definition file.  To use it, see make-template.pl.  This
# one goes with the ss_get_by_ssh.php script.
#
# This program is copyright (c) 2008 Baron Schwartz. Feedback and improvements
# are welcome.
#
# THIS PROGRAM IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF
# MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
#
# This program is free software; you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation, version 2.
#
# You should have received a copy of the GNU General Public License along with
# this program; if not, write to the Free Software Foundation, Inc., 59 Temple
# Place, Suite 330, Boston, MA  02111-1307  USA.

# Autobuild: ss_get_by_ssh.php

{
   name   => 'MongoDB Server',
   hash   => 'hash_02_VER_84ce0c2c9aa026d00b96855bdf871054',
   version => {
      version => '1.1.6',
      hash    => 'hash_06_VER_a6ad1a38080a578e67ad18fa4be4ac9a',
   },
   graphs => [
      {  name       => 'MongoDB Connections',
         base_value => '1000',
         hash       => 'hash_00_VER_dba507645d086014b4ed0b4d44e9387a',
         dt         => {
            hash       => 'hash_01_VER_4f7f138dfa3fb4c33dc1e61119977dbb',
            input      => 'Get MongoDB Stats',
            MONGODB_connected_clients => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_0e74f4236f462a54a211ac1dc60b96a8'
            },
         },
         items => [
            {  item   => 'MONGODB_connected_clients',
               color  => '9B2B1B',
               task   => 'hash_09_VER_21d41d3aa727d4cd070d7e605b2c44f9',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_913a9ed433e4cc74053baf168ce60c81',
                  'hash_10_VER_74602650f3181ba0ee2db63ad6487f17',
                  'hash_10_VER_75a6f840091667dbe70f3e2754f55a2f',
                  'hash_10_VER_a8a38c9a36965cad0439e348e5d1af82'
               ],
            },
         ],
      },
   ],
   inputs => {
      'Get MongoDB Stats' => {
         type_id      => 1,
         hash         => 'hash_03_VER_60ed7b684520464b297f37dc2bd9e8dc',
         input_string => '<path_php_binary> -q <path_cacti>/scripts/ss_get_by_ssh.php '
                       . '--host <hostname> --type mongodb --items <items> ',
         inputs => [
            {  allow_nulls => '',
               hash        => 'hash_07_VER_82825188a4c13b855a5e22957e7f360c',
               name        => 'hostname'
            },
            {  allow_nulls => 'on',
               hash        => 'hash_07_VER_3b6b2abbb52a49d4c36b9d6c5f2ee1f0',
               name        => 'port2',
            },
         ],
         outputs => {
            MONGODB_connected_clients        => 'hash_07_VER_368a909f411926bacf04b0471272addd',
            MONGODB_used_resident_memory     => 'hash_07_VER_26c4dc0fec2e453f4fabc00e7bd04f29',
            MONGODB_used_mapped_memory       => 'hash_07_VER_ef9a8d4ae93bd14f04d051015f0baa68',
            MONGODB_used_virtual_memory      => 'hash_07_VER_7eb45727b3a37545f1a3e886f2d00680',
            MONGODB_index_accesses           => 'hash_07_VER_777d92fd00565f0679fd4990f04f3136',
            MONGODB_index_hits               => 'hash_07_VER_5fd799714e2a28e4e11ac760aa8850a1',
            MONGODB_index_misses             => 'hash_07_VER_b6565823721824dc64bad2edcfb9b09c',
            MONGODB_index_resets             => 'hash_07_VER_e68de5962130d08b205a9488a629bb92',
            MONGODB_background_flushes       => 'hash_07_VER_d2966c4241e730b30cd304879cdb8dc2',
            MONGODB_background_total_ms      => 'hash_07_VER_c0dd19ec1e043b25f35ca0991dc9e595',
            MONGODB_background_average_ms    => 'hash_07_VER_42b62ff37b971947a5cb5efc7f5157ad',
            MONGODB_background_last_ms       => 'hash_07_VER_979d2bfebbb509181e4c4f9b7839ed9e',
            MONGODB_op_inserts               => 'hash_07_VER_064fd5cd30c258b953bc0d16e6df633e',
            MONGODB_op_queries               => 'hash_07_VER_cd45d5d4b38e96f23e6c0e27134ed667',
            MONGODB_op_updates               => 'hash_07_VER_684c71c7d8f1444d061e2c2e7c02b77f',
            MONGODB_op_deletes               => 'hash_07_VER_7a0a1c29c036e456291cff7b5d2550b6',
            MONGODB_op_getmores              => 'hash_07_VER_33ca6d7f73ab40c58d46cdab85070d4c',
            MONGODB_op_commands              => 'hash_07_VER_db34dc36487cb71c5b3364b2b79c6b2b',
         },
      },
   },
};
