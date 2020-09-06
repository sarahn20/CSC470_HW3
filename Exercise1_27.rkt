(define flatten-helper
  (lambda (lst)
    (cond
      ((null? lst) '())
      ((symbol? (car lst))(cons (car lst)(flatten-helper (cdr lst))))
      ((list? (car lst))(append (car lst)(flatten-helper (cdr lst))))
      (else (flatten-helper (cdr lst))))))
        


(define flatten
  (lambda (slist)
    (cond
      ((null? slist) '())
      ((null? (car slist))(flatten (cdr slist)))
      ((symbol? (car slist))(cons (car slist)(flatten (cdr slist))))
      (else (flatten-helper(append (car slist)(flatten (cdr slist))))))))
