#lang racket

(define (is_discount sum)
  (if (> sum 1000)
      (string-append "Вам предоставляется скидка 10%\nСумма покупки с учётом скидки: " (number->string (- sum (exact->inexact (/ sum 10)) )))
      (string-append "Сумма покупки: " (number->string sum))
  )
)

(printf "НИКОЛАЕВ НИКИТА СЕРГЕЕВИЧ - ИКБО-13-17 - ПРАКТИКА 2 - ЗАДАНИЕ 6\n")
(printf "Вычисление стоимости покупки с учётом скидки\n")
(printf "Введите сумму покупки и намите <Enter> = ")
(define sum (read))
(printf "~a\n" (is_discount sum))
