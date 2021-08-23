-module(print_status).
-export([print_status/1]).

print_status(success) -> io:fwrite("Success!\n");
print_status({error, Message}) -> io:fwrite(io_lib:format("error: ~p\n", [Message])).
