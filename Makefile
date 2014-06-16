all:
	@test -d deps || rebar get-deps	
	rebar compile
	erl -pa './deps/cowlib/ebin' -pa './deps/cowboy/ebin' -pa './deps/ranch/ebin' -pa './ebin' -s ws start chandler 


