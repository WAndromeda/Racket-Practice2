#lang racket

(define (is_bissextile year)
  (if ( or ( equal? (modulo year 400) 0)
               (and (not(equal? (modulo year 100) 0 )) (equal? (modulo year 4) 0 )  ) )
      (string-append (number->string year) " год - високосный")
      (string-append (number->string year) " год - НЕ високосный")
  )
)

(printf "НИКОЛАЕВ НИКИТА СЕРГЕЕВИЧ - ИКБО-13-17 - ПРАКТИКА 2 - ЗАДАНИЕ 3\n")
(printf "Введите год => ")
(define year (read))
(printf "~a\n"(is_bissextile year))  