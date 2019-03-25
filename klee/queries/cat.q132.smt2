; QueryHash 5728916455260327675
(set-logic QF_AUFBV )
(declare-fun arg00 () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  arg00 (_ bv5 32) ) ) ) (and  (=  false (=  (_ bv0 8) ?B1 ) ) (=  (_ bv84 8) ((_ extract 7  0)  ((_ sign_extend 24)  ?B1 ) ) ) ) ) )
(check-sat)
(exit)

; Assignments
; { "arg00": [0, 0, 0, 0, 0, 0, 1, 0] }
; { "arg00": [0, 0, 0, 0, 0, 0, 101, 0] }
; { "arg00": [0, 0, 0, 0, 0, 0, 105, 0] }
; { "arg00": [0, 0, 0, 0, 0, 0, 110, 0] }
; { "arg00": [0, 0, 0, 0, 0, 0, 115, 0] }
; { "arg00": [0, 0, 0, 0, 0, 0, 116, 0] }
; { "arg00": [0, 0, 0, 0, 0, 0, 45, 0] }
; { "arg00": [0, 0, 0, 0, 0, 0, 61, 0] }
; { "arg00": [0, 0, 0, 0, 0, 0, 98, 0] }
; { "arg00": [0, 0, 0, 0, 0, 1, 0, 0] }
; { "arg00": [0, 0, 0, 0, 0, 61, 0, 0] }
; { "arg00": [0, 0, 0, 0, 0, 65, 0, 0] }
; { "arg00": [0, 0, 0, 0, 0, 69, 0, 0] }
; { "arg00": [0, 0, 0, 0, 0, 84, 0, 0] }
; { "arg01": [0, 0, 0, 0, 0, 0, 1, 0] }
; { "arg01": [0, 0, 0, 0, 0, 0, 61, 0] }
; { "arg01": [0, 0, 0, 0, 0, 1, 0, 0] }
; { "arg01": [0, 0, 0, 0, 0, 61, 0, 0] }
; { "arg01": [0, 0, 0, 0, 1, 0, 0, 0] }
; { "arg01": [0, 0, 0, 0, 61, 0, 0, 0] }
; { "arg01": [0, 0, 0, 1, 0, 0, 0, 0] }
; { "arg01": [0, 0, 0, 101, 0, 0, 0, 0] }
; { "arg01": [0, 0, 0, 110, 0, 0, 0, 0] }
; { "arg01": [0, 0, 0, 113, 0, 0, 0, 0] }
; { "arg01": [0, 0, 0, 115, 0, 0, 0, 0] }
; { "arg01": [0, 0, 0, 117, 0, 0, 0, 0] }
; { "arg01": [0, 0, 0, 47, 0, 0, 0, 0] }
; { "arg01": [0, 0, 0, 61, 0, 0, 0, 0] }
; { "arg01": [0, 0, 0, 98, 0, 0, 0, 0] }
; { "arg01": [0, 0, 1, 0, 0, 0, 0, 0] }
; { "arg01": [0, 0, 101, 0, 0, 0, 0, 0] }
; { "arg01": [0, 0, 104, 0, 0, 0, 0, 0] }
; { "arg01": [0, 0, 110, 0, 0, 0, 0, 0] }
; { "arg01": [0, 0, 115, 0, 0, 0, 0, 0] }
; { "arg01": [0, 0, 116, 0, 0, 0, 0, 0] }
; { "arg01": [0, 0, 117, 0, 0, 0, 0, 0] }
; { "arg01": [0, 0, 118, 0, 0, 0, 0, 0] }
; { "arg01": [0, 0, 47, 0, 0, 0, 0, 0] }
; { "arg01": [0, 0, 61, 0, 0, 0, 0, 0] }
; { "arg01": [0, 0, 65, 0, 0, 0, 0, 0] }
; { "arg01": [0, 0, 98, 0, 0, 0, 0, 0] }
; { "arg01": [0, 1, 0, 0, 0, 0, 0, 0] }
; { "arg01": [0, 101, 0, 0, 0, 0, 0, 0] }
; { "arg01": [0, 110, 0, 0, 0, 0, 0, 0] }
; { "arg01": [0, 115, 0, 0, 0, 0, 0, 0] }
; { "arg01": [0, 116, 0, 0, 0, 0, 0, 0] }
; { "arg01": [0, 117, 0, 0, 0, 0, 0, 0] }
; { "arg01": [0, 118, 0, 0, 0, 0, 0, 0] }
; { "arg01": [0, 45, 0, 0, 0, 0, 0, 0] }
; { "arg01": [0, 47, 0, 0, 0, 0, 0, 0] }
; { "arg01": [0, 65, 0, 0, 0, 0, 0, 0] }
; { "arg01": [0, 69, 0, 0, 0, 0, 0, 0] }
; { "arg01": [0, 84, 0, 0, 0, 0, 0, 0] }
; { "arg01": [0, 98, 0, 0, 0, 0, 0, 0] }
; { "arg01": [1, 0, 0, 0, 0, 0, 0, 0] }
; { "arg01": [2, 0, 0, 0, 0, 0, 0, 0] }
; { "arg01": [45, 0, 0, 0, 0, 0, 0, 0] }
; { "arg01": [47, 0, 0, 0, 0, 0, 0, 0] }
