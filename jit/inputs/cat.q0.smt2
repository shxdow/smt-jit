; QueryHash 16490974790413370338
(set-logic QF_AUFBV )
(declare-fun n_args () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv4 32) (concat  (select  n_args (_ bv3 32) ) (concat  (select  n_args (_ bv2 32) ) (concat  (select  n_args (_ bv1 32) ) (select  n_args (_ bv0 32) ) ) ) ) ) )
(check-sat)
(exit)

; Assignments 3747 ms
; { "arg00": [0, 0, 0, 0, 0, 1, 0, 0] }
; { "arg00": [0, 0, 0, 0, 1, 0, 0, 0] }
; { "arg00": [0, 0, 0, 0, 61, 0, 0, 0] }
; { "arg00": [0, 0, 0, 1, 0, 0, 0, 0] }
; { "arg00": [0, 0, 0, 61, 0, 0, 0, 0] }
; { "arg00": [0, 0, 1, 0, 0, 0, 0, 0] }
; { "arg00": [0, 0, 110, 0, 0, 0, 0, 0] }
; { "arg00": [0, 0, 61, 0, 0, 0, 0, 0] }
; { "arg00": [0, 1, 0, 0, 0, 0, 0, 0] }
; { "arg00": [0, 101, 0, 0, 0, 0, 0, 0] }
; { "arg00": [0, 110, 0, 0, 0, 0, 0, 0] }
; { "arg00": [0, 115, 0, 0, 0, 0, 0, 0] }
; { "arg00": [0, 116, 0, 0, 0, 0, 0, 0] }
; { "arg00": [0, 117, 0, 0, 0, 0, 0, 0] }
; { "arg00": [0, 45, 0, 0, 0, 0, 0, 0] }
; { "arg00": [0, 98, 0, 0, 0, 0, 0, 0] }
; { "arg00": [45, 0, 0, 0, 0, 0, 0, 0] }
; { "n_args": [1, 0, 0, 0] }
; { "n_args": [2, 0, 0, 0] }
; { "n_args": [3, 0, 0, 0] }
; { "n_args": [4, 0, 0, 0] }
