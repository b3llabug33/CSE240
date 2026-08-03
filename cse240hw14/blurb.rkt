;bella sheridan alien language extra credit
;scheme 8.18 R5RS

(define (readl)
  (let ((x (read)))
    (if (eof-object? x)
        x
        (if (string? x) 
            x ;for if it was already typed as a sting (with quotes)
            (symbol->string x))))) ;make it a string if not 

;helper function - skip y for later in whoozit
(define (skipy s k)
  (let ((n (string-length s))) ;n is length of word 
    (if (and (< k n) (char=? (string-ref s k) #\y)) ;if in range and is y keep going
         (skipy s (+ k 1)) k))) ;when not y or out of bounds return k

;x then one or more ys 
 (define (whoozit s i)
   (let ((n (string-length s)))
     (if (>= i n) ;if i is out of range fail
         #f
         (if (not (char=? (string-ref s i) #\x)) ;if not x fail
             #f
             (let ((j (+ i 1))) ;advance because we know we had x
               (if(>= j n) ;fail if not in range 
                  #f
                  (if (not (char=? (string-ref s j) #\y)) ;check for y after x
                      #f
                      (skipy s (+ j 1))))))))) ;if y - keep going until no more y's

(define (whatzit s i)
  (let ((n (string-length s)))
    (if (>= i n) ;check for out of bounds 
        #f
        (if (not (char=? (string-ref s i) #\q)) ;if not q fail
            #f
            (let ((j (+ i 1))) ;if q then advance index 
              (if (>= j n) ;check for our of bounds 
                  #f 
                  (let ((c (string-ref s j))) ;c is the index that needs to be z or d
                    (if (or (char=? c #\z)(char=? c #\d)) ;check if z or d
                        (whoozit s (+ j 1)) #f)))))))) ;check for whoozit at next index or fail

(define (blurb? s)
  (let ((n (string-length s))) ;n is length
    (let ((i1 (whoozit s 0))) ;check for whoozit at index 1
      (if (not i1)
          #f ;fail if none
          (let loop ((i i1)) 
            (let ((next (whatzit s i))) ;try a whatzit at next index 
              (if next
                  (loop next) ;keep looping ;dont fail though because its ok to have no whatzits 
                  (= i n)))))))) ;the index must equal the length of the word 

(define (main)
  (let loop ()
    (display "Enter an alien word:") ;ask user for word
    (newline)
    (let ((word (readl))) ;read as string 
         (if (blurb? word) ;check if blurb
             (begin (display "The word is fine.") ;success
                    (newline))
                    (begin (display "The word is a mess!") ;failure then loop again
                           (newline)
                           (loop)))))) (main) ;run main 

             