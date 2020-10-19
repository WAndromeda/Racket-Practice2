#lang racket

(define (square_of_circle rC rH)
  ( * pi ( - (* rC rC) (* rH rH) ) )
 )

(printf "НИКОЛАЕВ НИКИТА СЕРГЕЕВИЧ - ИКБО-13-17 - ПРАКТИКА 2 - ЗАДАНИЕ 1\n")
(printf "Вычисление площади кольца\n")
(printf "Введите исходные данные:\n")
(printf "Введите радиус кольца (см) => ")
(define rC (read))
(printf "Введите радиус отверстия (см) => ")
(define rH (read))
(if ( >= rH rC)
    (error "ОШИБКА! Радиус отверстия не может быть больше или равен радиусу кольца\n")
    (printf "Радиус кольца: ~a\n" (square_of_circle rC rH))
)
