#lang scheme
;;Banking System Trial (Using cond, define, au operators)
;;by Nihad Jusovic
;;Final Exam Preps

(display "         B A N K I N G            S Y S T E M")

(define id 2222)
(define msg "Wrong ID Number")
(define over-msg "Limit overboard: Error / Limit 10 000")
(define wit-msg "Not enough resources on the debit card")

(define dep-win "Enter the ammount you want to deposit: ")
(define wit-win "Enter the ammount you want to withdraw: ")

(define dep-status 500) ;; current deposit balance
;;Under is the deposit function

(define (insert m)
(cond
  ((> m 10000) (display over-msg) (exit))
  ((< m 10000) (+ m dep-status) (display "Current balance: ") (+ m dep-status) (newline))
  (else (display over-msg) (exit))
  ))

;; Under is the withdraw function
(define (take f)
(cond
  ((> f dep-status) (display wit-msg) (exit))
  ((< f dep-status) (- dep-status f) (display "Current balance: ") (- dep-status f))
  (else (exit))
  ))


 (newline)
 (newline)

(display "Enter your ID number: ")

(define (enter id-trial)
(cond
  ((= id-trial id) "Welcome back Nihad, " (newline) (display "Options: ") (newline) (display "1. Deposit") (newline) (display "2. Withdraw") (newline) (display "3. Show Current Status"))
  (else (display msg) (newline) (exit))
  ))

;;               After getting the granted access, now we continue the upcoming:

(define (opt y)
(cond
  ((= y 1) (display dep-win) (display insert))
  ((= y 2) (display wit-win) (display take))  ;; construct the wit-fun!!!
  ((= y 3) (display dep-status)(display " KM") (exit))
  (else (exit))
  ))



