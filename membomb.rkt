#lang racket

(let loop ([x '()])
  (displayln (current-memory-use))
  (loop (cons (list (cons x x) (cons x x) (cons x x) (cons x x))
              (list (cons x x) (cons x x) (cons x x) (cons x x))))
  (displayln x))

