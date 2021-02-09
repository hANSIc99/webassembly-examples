;; https://developer.mozilla.org/en-US/docs/WebAssembly/Understanding_the_text_format
(module
    (import "console" "log" (func $log (param i32 i32))) 
    (import "js" "mem" (memory 1)) ;; Import 1 page of memory (54kb)
    (data (i32.const 0) "Hello World from WebAssembly!")
    (func (export "helloWorld")
        i32.const 0 ;; pass offset 0 to log
        i32.const 29 ;; pass length 2 to log
        call $log
        )
)