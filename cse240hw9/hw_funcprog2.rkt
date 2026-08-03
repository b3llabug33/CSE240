;;;
; CSE240 Functional Programming 2 Homework
; 
;
; Completion time: 1-2 hours ish
;
; @bella sheridan
; @version 8.18
;;;


; Q1
;named prodedure sumEven;
(define (sumEven lst)
  (if (null? lst) ;if list is empty return 0
      0
  (if (even? (car lst)) ;if first number is even 
      (+ (car lst)(sumEven (cdr lst))) ;add it to the rest of the list 
      (sumEven (cdr lst))))) ;move to rest of the list 
;unnamed procedure;
((lambda (sumEven lst)            ;lamda so we dont need to define
   (sumEven lst))   ; call recursive function on the list
 (lambda (lst)                     
   (if (null? lst)                ;same code as named 
       0
       (if (even? (car lst))     
           (+ (car lst) (sumEven (cdr lst))) 
           (sumEven (cdr lst))))) 
 '(1 3 -4 5 6 -7))                  ; the list argument
; Q2
;append combines 2 lists so its simple;
(define (list-push-back lst new-list)
  (append lst new-list))

; Q3
;same thing reversed;
(define (list-push-front lst new-list)
  (append new-list lst))
 
; Q4
(define (list-draw-front n lst)
  (if (or (null? lst) (zero? n)) ;if the list is null or n is 0
      '() ;return empty list
      (cons (car lst) ;otherwise constuct a new list starting with the first element
            (list-draw-front (- n 1) (cdr lst))))) ; then keep adding next element until stopping condition

; Q5
(define (list-draw-back n lst)
  (if (<= (length lst) n) ;if list is n or shorter
      lst ;return list
      (list-draw-back n (cdr lst)))) ;otherwise drop element and resurse threw the rest until n is the correct size

; Q6
(define (list-shuffle lst1 lst2)
  (if (or (null? lst1) (null? lst2)) ;if lst1 or lst2 is empty 
      '() ;return empty list (or stop)
      (cons (car lst1) ;take the first element of lst1
      (cons (car lst2) ;take the first element of lst2
            (list-shuffle (cdr lst1) (cdr lst2)))))) ;recurse through the remaining parts of each list until the lists are empty 
                                                     ;using cdr takes away the og car and make the next element the new car repeatedly 
