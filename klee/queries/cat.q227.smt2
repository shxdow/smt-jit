; QueryHash 15125197564430006353
(set-logic QF_AUFBV )
(declare-fun arg00 () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  arg00 (_ bv3 32) ) ) ) (let ( (?B2 ((_ extract 7  0)  ((_ sign_extend 24)  ?B1 ) ) ) ) (and  (and  (and  (and  (and  (and  (and  (and  (=  false (=  (_ bv0 8) ?B1 ) ) (=  false (=  (_ bv98 8) ?B2 ) ) ) (=  false (=  (_ bv101 8) ?B2 ) ) ) (=  false (=  (_ bv110 8) ?B2 ) ) ) (=  false (=  (_ bv115 8) ?B2 ) ) ) (=  false (=  (_ bv116 8) ?B2 ) ) ) (=  false (=  (_ bv117 8) ?B2 ) ) ) (=  false (=  (_ bv118 8) ?B2 ) ) ) (=  false (=  (_ bv65 8) ?B2 ) ) ) ) ) )
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
; { "arg00": [0, 0, 0, 0, 0, 101, 0, 0] }
; { "arg00": [0, 0, 0, 0, 0, 110, 0, 0] }
; { "arg00": [0, 0, 0, 0, 0, 112, 0, 0] }
; { "arg00": [0, 0, 0, 0, 0, 115, 0, 0] }
; { "arg00": [0, 0, 0, 0, 0, 116, 0, 0] }
; { "arg00": [0, 0, 0, 0, 0, 117, 0, 0] }
; { "arg00": [0, 0, 0, 0, 0, 118, 0, 0] }
; { "arg00": [0, 0, 0, 0, 0, 119, 0, 0] }
; { "arg00": [0, 0, 0, 0, 0, 61, 0, 0] }
; { "arg00": [0, 0, 0, 0, 0, 65, 0, 0] }
; { "arg00": [0, 0, 0, 0, 0, 69, 0, 0] }
; { "arg00": [0, 0, 0, 0, 0, 84, 0, 0] }
; { "arg00": [0, 0, 0, 0, 0, 98, 0, 0] }
; { "arg00": [0, 0, 0, 0, 1, 0, 0, 0] }
; { "arg00": [0, 0, 0, 0, 101, 0, 0, 0] }
; { "arg00": [0, 0, 0, 0, 108, 0, 0, 0] }
; { "arg00": [0, 0, 0, 0, 109, 0, 0, 0] }
; { "arg00": [0, 0, 0, 0, 110, 0, 0, 0] }
; { "arg00": [0, 0, 0, 0, 111, 0, 0, 0] }
; { "arg00": [0, 0, 0, 0, 114, 0, 0, 0] }
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
