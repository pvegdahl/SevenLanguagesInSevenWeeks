odd := Object clone
odd numbers := method(for(i, 1, 10, 2, i println; yield))

even := Object clone
even numbers := method(for(i, 2, 10, 2, yield; i println))

odd @@numbers
even @@numbers

Coroutine currentCoroutine pause
