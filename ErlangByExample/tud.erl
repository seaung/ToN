%% erlang tud module
%% author seaung
%% date  2017-12-23
%% Sat 00:20
%% ------------------

-module(tud).

-export([add/2, sub/2, divs/2, multi/2, sybm/2]).


add(Anumber, Bnumber) ->
	Anumber + Bnumber,
	ok.

sub(Cnumber, Dnumber) ->
	Cnumber - Dnumber,
	ok

divs(Enumber, Fnumber) ->
	Enumber div Fnumber,
	ok.

multi(Gnumber, Hnumber) ->
	Gnumber * Hnumber,
	ok.

sybm(Inumber, Jnumber) ->
	Inumber / Jnumber,
	ok.


