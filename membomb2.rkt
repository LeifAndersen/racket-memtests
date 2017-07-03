#lang racket

(require ffi/unsafe)

(let loop ([x '()])
  (displayln (current-memory-use))
  (loop (cons (malloc 1024 _long) x))
  (displayln x))

