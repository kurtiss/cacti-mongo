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
      {  name       => 'MongoDB Memory',
         base_value => '1000',
         hash       => 'hash_00_VER_f01951c2799f75c4c1d1bed47eb96e40',
         dt         => {
            hash       => 'hash_01_VER_7e137605a58148cf8a555e6baf20eb65',
            input      => 'Get MongoDB Stats',
            MONGODB_used_virtual_memory => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_f475ce42705736a51c34cb23aacbc59c'
            },
            MONGODB_used_mapped_memory => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_105540d3a0b2664526af482a402879a4'
            },
            MONGODB_used_resident_memory => {
               data_source_type_id => '1',
               hash => 'hash_08_VER_3e96effb78a68f210912bbb4361c387c'
            },
         },
         items => [
            {  item   => 'MONGODB_used_virtual_memory',
               color  => '3B7AD9',
               task   => 'hash_09_VER_936aaccd9fe9a045f9390ad43f39b340',
               type   => 'AREA',
               hashes => [
                  'hash_10_VER_aca5c6394c7044db6e692116d4cf8157',
                  'hash_10_VER_33d353aaa7402585620291409568caff',
                  'hash_10_VER_de9b6cb0db0f43cbdc28f9f8b6a596be',
                  'hash_10_VER_25135544e3d38c248793b353e54faeb8'
               ],
            },
            {  item   => 'MONGODB_used_mapped_memory',
               color  => '6FD1BF',
               task   => 'hash_09_VER_c10f15a6a1883445421af675cca5d42e',
               type   => 'AREA',
               hashes => [
                  'hash_10_VER_44b596605bebc90b45a526331d3391f0',
                  'hash_10_VER_8b83f86611fd0567225bbcd69f649f23',
                  'hash_10_VER_13267cb4cc2f57e42e77afc63f93682a',
                  'hash_10_VER_275260a561c1707ad24ddca5b427adb4'
               ],
            },
            {  item   => 'MONGODB_used_resident_memory',
               color  => '0E6E5C',
               task   => 'hash_09_VER_48aedb0124cacaf12b138ec38a73ca3f',
               type   => 'AREA',
               hashes => [
                  'hash_10_VER_3e7d709085ccdaf9afed9d3a6c98db5a',
                  'hash_10_VER_d79210d1ffb8a132f70b22c75c3c3c52',
                  'hash_10_VER_55396aa89c98397a4cc3f31b52f87990',
                  'hash_10_VER_c1ba73653931511c45060f267fc6cb30'
               ],
            },
         ],
      },
      {  name       => 'MongoDB Commands',
         base_value => '1000',
         hash       => 'hash_00_VER_80a7a84bde78767289d31d1ed655afd5',
         dt         => {
            hash       => 'hash_01_VER_f5edc729abaf7108fdb225dbef0269d2',
            input      => 'Get MongoDB Stats',
            MONGODB_op_inserts => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_99a1475f96923a6424566af7187d8755'
            },
            MONGODB_op_queries => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_cbfaa4bf39e56a544d33f1b3dae25f59'
            },
            MONGODB_op_updates => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_270098586e9ddb730b228db4db35dc83'
            },
            MONGODB_op_deletes => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_a39184cbd72f1710576d2f96cd7c9c01'
            },
            MONGODB_op_getmores => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_b7b44cedfe365a8d1591e7b1cf7974cf'
            },
            MONGODB_op_commands => {
               data_source_type_id => '3',
               hash => 'hash_08_VER_855722b9df77c4a52cdc6dcb5535fdf9'
            },
         },
         items => [
            {  item   => 'MONGODB_op_inserts',
               color  => 'FF7200',
               task   => 'hash_09_VER_51843de5556c83fd6017210bcbe1c8dc',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_25f0c6652a13d2aa625e000b6df313d3',
                  'hash_10_VER_e6e557c4308cef7f185895bcbb4e7d1c',
                  'hash_10_VER_a3b2ad85b70ebbc7d61bb43b81409892',
                  'hash_10_VER_acfc0b6a993edf8d33c9b092f317c9e6'
               ],
            },
            {  item   => 'MONGODB_op_queries',
               color  => '503001',
               task   => 'hash_09_VER_bb359d50779d9fa5a00d76b78b6a4b0c',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_afd2d45192c139095bacb9feee1ffab5',
                  'hash_10_VER_ec73cdf0ae78c03e734d023c14a24a0a',
                  'hash_10_VER_f564cd40dee74afda778005b8b511e63',
                  'hash_10_VER_06f0d7c21e83da219532f68b0176c3f8'
               ],
            },
            {  item   => 'MONGODB_op_updates',
               color  => 'EDAC00',
               task   => 'hash_09_VER_23bd922edc3460e20607d1fc4d49b3a3',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_0de086b64280315bf8b46137882e7913',
                  'hash_10_VER_52347bc4d82487b5c1c964f9cfcf365a',
                  'hash_10_VER_1c40a2119fb0d1744db533e1fe859b4b',
                  'hash_10_VER_76078fc1ad0b4cdc0b3de91e8b0914f8'
               ],
            },
            {  item   => 'MONGODB_op_deletes',
               color  => '506101',
               task   => 'hash_09_VER_a1bdad535e71b4d0586a15bcd95b0db4',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_3e49b88d0953866e87ee17645b394008',
                  'hash_10_VER_2ef0b64c0cedd6cb628a5163f171c25c',
                  'hash_10_VER_199f308f7588dea4b0007e45b1835556',
                  'hash_10_VER_508bff27083eada2973d6cb2176e78e9'
               ],
            },
            {  item   => 'MONGODB_op_getmores',
               color  => '0CCCCC',
               task   => 'hash_09_VER_bd1348bd4e29a59053855d9a5991ad34',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_827895cdb5c458e76b3531ca22b65933',
                  'hash_10_VER_94c1370388158e64b1f14bb0cf972cca',
                  'hash_10_VER_370af505286ec26fe7940b461369e73b',
                  'hash_10_VER_f7eee0432160a69e98746e03793533d5'
               ],
            },
            {  item   => 'MONGODB_op_commands',
               color  => '53CA05',
               task   => 'hash_09_VER_38b38ffc417def78328030363aaec579',
               type   => 'LINE1',
               hashes => [
                  'hash_10_VER_8670a7133b9b8e062018918554234603',
                  'hash_10_VER_e0dd370c9a09110551dcad6958da48a0',
                  'hash_10_VER_7b664bf01401fb6c7f59bd582ab5161b',
                  'hash_10_VER_19ede2025d22ed99b6b4b9795e9c6f7a'
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
