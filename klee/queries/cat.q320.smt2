; QueryHash 1954969939059598144
(set-logic QF_AUFBV )
(declare-fun arg00 () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  arg00 (_ bv5 32) ) ) ) (and  (and  (=  (_ bv58 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  (_ bv115 8) ((_ extract 7  0)  ((_ sign_extend 24)  ?B1 ) ) ) ) ) )
(check-sat)
(exit)

; Assignments
; { "arg00": [0, 0, 0, 0, 0, 0, 1, 0] }
; { "arg00": [0, 0, 0, 0, 0, 0, 101, 0] }
; { "arg00": [0, 0, 0, 0, 0, 0, 45, 0] }
; { "arg00": [0, 0, 0, 0, 0, 0, 61, 0] }
; { "arg00": [0, 0, 0, 0, 0, 1, 0, 0] }
; { "arg00": [0, 0, 0, 0, 0, 101, 0, 0] }
; { "arg00": [0, 0, 0, 0, 0, 110, 0, 0] }
; { "arg00": [0, 0, 0, 0, 0, 115, 0, 0] }
; { "arg00": [0, 0, 0, 0, 0, 116, 0, 0] }
; { "arg00": [0, 0, 0, 0, 0, 119, 0, 0] }
; { "arg00": [0, 0, 0, 0, 0, 61, 0, 0] }
; { "arg00": [0, 0, 0, 0, 0, 98, 0, 0] }
; { "arg00": [0, 0, 0, 0, 1, 0, 0, 0] }
; { "arg00": [0, 0, 0, 0, 101, 0, 0, 0] }
; { "arg00": [0, 0, 0, 0, 108, 0, 0, 0] }
; { "arg00": [0, 0, 0, 0, 109, 0, 0, 0] }
; { "arg00": [0, 0, 0, 0, 110, 0, 0, 0] }
; { "arg00": [0, 0, 0, 0, 111, 0, 0, 0] }
; { "arg00": [0, 0, 0, 0, 115, 0, 0, 0] }
; { "arg00": [0, 0, 0, 0, 116, 0, 0, 0] }
; { "arg00": [0, 0, 0, 0, 117, 0, 0, 0] }
; { "arg00": [0, 0, 0, 0, 118, 0, 0, 0] }
; { "arg00": [0, 0, 0, 0, 61, 0, 0, 0] }
; { "arg00": [0, 0, 0, 0, 65, 0, 0, 0] }
; { "arg00": [0, 0, 0, 0, 69, 0, 0, 0] }
; { "arg00": [0, 0, 0, 0, 84, 0, 0, 0] }
; { "arg00": [0, 0, 0, 0, 98, 0, 0, 0] }
; { "arg00": [0, 0, 0, 1, 0, 0, 0, 0] }
; { "arg00": [0, 0, 0, 101, 0, 0, 0, 0] }
; { "arg00": [0, 0, 0, 104, 0, 0, 0, 0] }
; { "arg00": [0, 0, 0, 110, 0, 0, 0, 0] }
; { "arg00": [0, 0, 0, 113, 0, 0, 0, 0] }
; { "arg00": [0, 0, 0, 115, 0, 0, 0, 0] }
; { "arg00": [0, 0, 0, 116, 0, 0, 0, 0] }
; { "arg00": [0, 0, 0, 117, 0, 0, 0, 0] }
; { "arg00": [0, 0, 0, 118, 0, 0, 0, 0] }
; { "arg00": [0, 0, 0, 47, 0, 0, 0, 0] }
; { "arg00": [0, 0, 0, 61, 0, 0, 0, 0] }
; { "arg00": [0, 0, 0, 65, 0, 0, 0, 0] }
; { "arg00": [0, 0, 0, 69, 0, 0, 0, 0] }
; { "arg00": [0, 0, 0, 84, 0, 0, 0, 0] }
; { "arg00": [0, 0, 0, 98, 0, 0, 0, 0] }
; { "arg00": [0, 0, 1, 0, 0, 0, 0, 0] }
; { "arg00": [0, 0, 101, 0, 0, 0, 0, 0] }
; { "arg00": [0, 0, 104, 0, 0, 0, 0, 0] }
; { "arg00": [0, 0, 110, 0, 0, 0, 0, 0] }
; { "arg00": [0, 0, 115, 0, 0, 0, 0, 0] }
; { "arg00": [0, 0, 116, 0, 0, 0, 0, 0] }
; { "arg00": [0, 0, 117, 0, 0, 0, 0, 0] }
; { "arg00": [0, 0, 118, 0, 0, 0, 0, 0] }
; { "arg00": [0, 0, 47, 0, 0, 0, 0, 0] }
; { "arg00": [0, 0, 61, 0, 0, 0, 0, 0] }
; { "arg00": [0, 0, 65, 0, 0, 0, 0, 0] }
; { "arg00": [0, 0, 69, 0, 0, 0, 0, 0] }
; { "arg00": [0, 0, 84, 0, 0, 0, 0, 0] }
; { "arg00": [0, 0, 98, 0, 0, 0, 0, 0] }
; { "arg00": [0, 1, 0, 0, 0, 0, 0, 0] }
; { "arg00": [0, 101, 0, 0, 0, 0, 0, 0] }
; { "arg00": [0, 110, 0, 0, 0, 0, 0, 0] }
; { "arg00": [0, 115, 0, 0, 0, 0, 0, 0] }
; { "arg00": [0, 116, 0, 0, 0, 0, 0, 0] }
; { "arg00": [0, 117, 0, 0, 0, 0, 0, 0] }
; { "arg00": [0, 118, 0, 0, 0, 0, 0, 0] }
; { "arg00": [0, 45, 0, 0, 0, 0, 0, 0] }
; { "arg00": [0, 47, 0, 0, 0, 0, 0, 0] }
; { "arg00": [0, 65, 0, 0, 0, 0, 0, 0] }
; { "arg00": [0, 69, 0, 0, 0, 0, 0, 0] }
; { "arg00": [0, 84, 0, 0, 0, 0, 0, 0] }
; { "arg00": [0, 98, 0, 0, 0, 0, 0, 0] }
; { "arg00": [1, 0, 0, 0, 0, 0, 0, 0] }
; { "arg00": [2, 0, 0, 0, 0, 0, 0, 0] }
; { "arg00": [45, 0, 0, 0, 0, 0, 0, 0] }
; { "arg00": [47, 0, 0, 0, 0, 0, 0, 0] }
; { "model_version": [1, 0, 0, 0] }
; { "n_args": [1, 0, 0, 0] }
; { "n_args": [2, 0, 0, 0] }
; { "n_args": [255, 255, 255, 127] }
; { "n_args": [3, 0, 0, 0] }
; { "n_args": [4, 0, 0, 0] }
; { "n_args": [5, 0, 0, 0] }
