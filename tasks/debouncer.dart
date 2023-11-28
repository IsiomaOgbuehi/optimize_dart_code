/*
Create a Dart class that implements a debouncer. The debouncer should be able to handle asynchronous functions and ensure that they are not called too frequently.

    The debouncer should take a function and a duration as parameters.
    If the debounced function is called, the debouncer should wait for the specified duration before invoking the original function.
    If the debounced function is called again within the duration, the timer should reset.
    After the duration passes without further invocations, the original function should be invoked.

    Write tests to ensure that the debouncer works correctly, handling edge cases and concurrent invocations.

Bonus:
Implement the debouncer as a generic class that can handle functions with different argument types. 
Additionally, add a feature to cancel a pending invocation if needed.
*/