u:Gem::Specification�[I"
2.7.8:ETi	I"pg; TU:Gem::Version[I"
1.1.4; TIu:	Time ��    :	zoneI"UTC; FI"SPg is the Ruby interface to the {PostgreSQL RDBMS}[http://www.postgresql.org/]; TU:Gem::Requirement[[[I">=; TU;[I"
2.0.0; TU;	[[[I">=; TU;[I"0; TI"	ruby; T[o:Gem::Dependency
:
@nameI"hoe-mercurial; T:@requirementU;	[[[I"~>; TU;[I"1.4; T:
@type:development:@prereleaseF:@version_requirementsU;	[[[I"~>; TU;[I"1.4; To;

;I"hoe-deveiate; T;U;	[[[I"~>; TU;[I"	0.10; T;;;F;U;	[[[I"~>; TU;[I"	0.10; To;

;I"hoe-highline; T;U;	[[[I"~>; TU;[I"0.2; T;;;F;U;	[[[I"~>; TU;[I"0.2; To;

;I"rake-compiler; T;U;	[[[I"~>; TU;[I"1.0; T;;;F;U;	[[[I"~>; TU;[I"1.0; To;

;I"rake-compiler-dock; T;U;	[[[I"~>; TU;[I"
0.7.0; T;;;F;U;	[[[I"~>; TU;[I"
0.7.0; To;

;I"hoe-bundler; T;U;	[[[I"~>; TU;[I"1.0; T;;;F;U;	[[[I"~>; TU;[I"1.0; To;

;I"
rspec; T;U;	[[[I"~>; TU;[I"3.5; T;;;F;U;	[[[I"~>; TU;[I"3.5; To;

;I"	rdoc; T;U;	[[[I"~>; TU;[I"5.1; T;;;F;U;	[[[I"~>; TU;[I"5.1; To;

;I"hoe; T;U;	[[[I"~>; TU;[I"	3.16; T;;;F;U;	[[[I"~>; TU;[I"	3.16; TI" ; T[I"ged@FaerieMUD.org; TI"lars@greiz-reinsdorf.de; T[I"Michael Granger; TI"Lars Kanis; TI"5Pg is the Ruby interface to the {PostgreSQL RDBMS}[http://www.postgresql.org/].

It works with {PostgreSQL 9.2 and later}[http://www.postgresql.org/support/versioning/].

A small example usage:

  #!/usr/bin/env ruby

  require 'pg'

  # Output a table of current connections to the DB
  conn = PG.connect( dbname: 'sales' )
  conn.exec( "SELECT * FROM pg_stat_activity" ) do |result|
    puts "     PID | User             | Query"
    result.each do |row|
      puts " %7d | %-16s | %s " %
        row.values_at('procpid', 'usename', 'current_query')
    end
  end; TI"&https://bitbucket.org/ged/ruby-pg; TT@[I"BSD-3-Clause; T{ 