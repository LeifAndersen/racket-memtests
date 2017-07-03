#lang racket

(require ffi/unsafe
         video/private/ffmpeg)

(define LEN 1024)

(let loop ([x '()])
  (displayln (current-memory-use))
  (define y (av-malloc LEN _long))
  (memset y #x0f LEN _long)
  (loop (cons y x))
  (displayln x))

