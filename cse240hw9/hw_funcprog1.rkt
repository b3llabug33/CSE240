;;;
; CSE240 Functional Programming 1 Homework
; This assignment involves pracicing various expressions and procedures in Scheme.
; 
; For the first assignment, we are providing the default header so you can see how it
; looks in Scheme. For future assignments, you will need to add it yourself.
;
; Completion time: probably like 2 and a half hours ish
;
; @bella sheridan
; @version 8.18
;;;


; Q1
(+ 5 (- 9 2))
(- (* 5 (+ 6 12 5)) 25)
(+ (* 7 (- 5(* 1 3))) (* 2 4))
(/ (* 3 (+ 4 (+ (* 6 6) (* 6 6)))) (+ 10 2))
(+ (/ (- (/ (/ (* (+ 4 6) (+ 6 4)) 2) 2) 5) 2)(+ (/ (+ (* 4 5) (* 5 4)) 2) (* 4 5)))
; Q2
(define (add a b)
  (+ a b))
; Q3
;adds s to itself (s-1 times) 
(define (square s)
  (let ((x (abs s)))  ; The code for size-n problem ;abs for negatives
    (define (square-helper x)
      (if (= x 0) ; The code for stopping condition and its return value 
          0 ;when x is 0 stop and return 0
          (add (abs s) (square-helper (- x 1))) ; The code for constucting size-n problem ;repeating s (x-1) times
          ))
    (square-helper x))) ; The code for size-m problem
; Q4
(define (read-for-square)
  (let ((r (read))) ;r is user input
    (square r))) ;call square with r
; Q5
(define (diff-squares)
  (let ((a (read-for-square)) ;1st squared number
 (b (read-for-square))) ;second number
    (abs (- a b)))) ;return difference ;abs for negatives
; Q6
(define (sum-odds max)
  (cond
    ((<= max 0) 0) ;stop when max is less than 0
    ((odd? max) (+ max (sum-odds (- max 2)))) ;if max is odd add and sub 2
    (else (sum-odds (- max 1))))) ;if even sub 1
; Q7
(define (fib a)
  (if (<= a 1) ;stop when 0 or 1
      a   
      (+ (fib (- a 1)) ;add last 2 terms 
         (fib (- a 2)))))
