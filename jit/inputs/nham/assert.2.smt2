(declare-fun main@%sm1153_0 () (Array (_ BitVec 32) (_ BitVec 32)))
(declare-fun sea.sp0_0 () (_ BitVec 32))
(declare-fun main@%_25_0 () (_ BitVec 32))
(declare-fun main@%_320_0 () (_ BitVec 32))
(declare-fun main@%_169_0 () (_ BitVec 32))

(assert (let ((a!1 (ite (bvsle #x00000006 main@%_25_0)
                (ite (bvsle #x00000007 main@%_25_0)
                     #x00000000
                     (ite (= main@%_25_0 #x00000006) #x00000001 #x00000000))
                #x00000000))
      (a!2 (ite (bvsle #x00000002 main@%_25_0)
                (ite (= main@%_25_0 #x00000002) #x00000002 #x00000000)
                (ite (= main@%_25_0 #x00000001) #x00000002 #x00000000)))
      (a!5 (ite (and (bvule (bvadd #xfffffff0 sea.sp0_0)
                            (bvadd #xffffffec sea.sp0_0))
                     (bvule (bvadd #xffffffec sea.sp0_0)
                            (bvadd #xfffffffc sea.sp0_0)))
                #x00000000
                #x00000002))
      (a!9 (ite (and (bvule (bvadd #xfffffff0 sea.sp0_0)
                            (bvadd #xfffffff8 sea.sp0_0))
                     (bvule (bvadd #xfffffff8 sea.sp0_0)
                            (bvadd #xfffffffc sea.sp0_0)))
                #x00000000
                (select main@%sm1153_0 (bvadd #xfffffff8 sea.sp0_0))))
      (a!12 (ite (and (bvule (bvadd #xfffffff0 sea.sp0_0)
                             (bvadd #xffffffe8 sea.sp0_0))
                      (bvule (bvadd #xffffffe8 sea.sp0_0)
                             (bvadd #xfffffffc sea.sp0_0)))
                 #x00000000
                 #x00000002))
      (a!20 (ite (bvule (bvadd #xfffffff0 sea.sp0_0)
                        (bvadd #xfffffffc sea.sp0_0))
                 #x00000000
                 (select main@%sm1153_0 (bvadd #xfffffff0 sea.sp0_0)))))
(let ((a!3 (ite (= main@%_169_0 #x00000006)
                (bvadd #x00000001 (ite (bvsle #x00000004 main@%_25_0) a!1 a!2))
                (ite (bvsle #x00000004 main@%_25_0) a!1 a!2)))
      (a!6 (ite (bvsle #x00000004 main@%_25_0)
                a!5
                (ite (bvsle #x00000002 main@%_25_0)
                     (ite (= main@%_25_0 #x00000002) #x00000002 a!5)
                     (ite (= main@%_25_0 #x00000001) #x00000002 a!5))))
      (a!7 (= (bvmul #x00000004 (ite (bvsle #x00000004 main@%_25_0) a!1 a!2))
              #x0000001c))
      (a!8 (ite (bvsle #x00000004 main@%_25_0)
                (ite (bvsle #x00000006 main@%_25_0)
                     #x00000000
                     (ite (= main@%_25_0 #x00000005) #x00000000 #x00000001))
                a!2))
      (a!10 (ite (bvsle #x00000006 main@%_25_0)
                 (ite (bvsle #x00000007 main@%_25_0)
                      a!9
                      (ite (= main@%_25_0 #x00000006) #x00000001 a!9))
                 a!9))
      (a!16 (= (bvmul #x00000004 (ite (bvsle #x00000004 main@%_25_0) a!1 a!2))
               #x00000010))
      (a!19 (= (bvmul #x00000004 (ite (bvsle #x00000004 main@%_25_0) a!1 a!2))
               #x00000014))
      (a!21 (ite (bvsle #x00000004 main@%_25_0)
                 (ite (bvsle #x00000006 main@%_25_0)
                      a!20
                      (ite (= main@%_25_0 #x00000005) a!20 #x00000001))
                 (ite (bvsle #x00000002 main@%_25_0)
                      (ite (= main@%_25_0 #x00000002) #x00000002 a!20)
                      (ite (= main@%_25_0 #x00000001) #x00000002 a!20))))
      (a!25 (= (bvmul #x00000004 (ite (bvsle #x00000004 main@%_25_0) a!1 a!2))
               #x0000000c)))
(let ((a!4 (ite (bvsle #x00000006 main@%_169_0)
                (ite (bvsle #x00000007 main@%_169_0)
                     (ite (bvsle #x00000004 main@%_25_0) a!1 a!2)
                     a!3)
                (ite (bvsle #x00000004 main@%_25_0) a!1 a!2)))
      (a!11 (ite (bvsle #x00000004 main@%_25_0)
                 a!10
                 (ite (bvsle #x00000002 main@%_25_0)
                      (ite (= main@%_25_0 #x00000002) #x00000002 a!9)
                      (ite (= main@%_25_0 #x00000001) #x00000002 a!9))))
      (a!17 (ite (bvsle #x00000004 main@%_169_0)
                 a!6
                 (ite (bvsle #x00000002 main@%_169_0)
                      (ite (= main@%_169_0 #x00000002) a!12 (ite a!16 a!8 a!6))
                      (ite (= main@%_169_0 #x00000001) a!12 a!6))))
      (a!22 (ite (bvsle #x00000004 main@%_169_0)
                 (ite (bvsle #x00000006 main@%_169_0)
                      a!8
                      (ite (= main@%_169_0 #x00000005)
                           a!8
                           (bvadd #x00000001 a!8)))
                 (ite (bvsle #x00000002 main@%_169_0)
                      (ite (= main@%_169_0 #x00000002) a!12 (ite a!19 a!8 a!21))
                      (ite (= main@%_169_0 #x00000001) a!6 a!8))))
      (a!26 (ite (bvsle #x00000004 main@%_169_0)
                 a!12
                 (ite (bvsle #x00000002 main@%_169_0)
                      (ite (= main@%_169_0 #x00000002) a!12 (ite a!25 a!8 a!12))
                      a!12))))
(let ((a!13 (ite (bvsle #x00000002 main@%_169_0)
                 (ite (= main@%_169_0 #x00000002) a!6 (ite a!7 a!8 a!11))
                 (ite (= main@%_169_0 #x00000001)
                      a!12
                      (ite (bvsle #x00000004 main@%_25_0) a!1 a!2))))
      (a!23 (ite (= main@%_169_0 #x00000006)
                 (bvadd #x00000001 (ite (bvsle #x00000004 main@%_25_0) a!1 a!2))
                 a!11)))
(let ((a!14 (ite (= main@%_320_0 #x00000006)
                 (bvadd #x00000001
                        (ite (bvsle #x00000004 main@%_169_0) a!4 a!13))
                 (ite (bvsle #x00000004 main@%_169_0) a!4 a!13)))
      (a!18 (= (bvmul #x00000004 (ite (bvsle #x00000004 main@%_169_0) a!4 a!13))
               #x0000001c))
      (a!24 (ite (bvsle #x00000004 main@%_169_0)
                 (ite (bvsle #x00000006 main@%_169_0)
                      (ite (bvsle #x00000007 main@%_169_0) a!11 a!23)
                      a!11)
                 (ite (bvsle #x00000002 main@%_169_0)
                      (ite (= main@%_169_0 #x00000002) a!6 (ite a!7 a!8 a!11))
                      (ite (= main@%_169_0 #x00000001) a!12 a!11)))))
(let ((a!15 (ite (bvsle #x00000006 main@%_320_0)
                 (ite (bvsle #x00000007 main@%_320_0)
                      (ite (bvsle #x00000004 main@%_169_0) a!4 a!13)
                      a!14)
                 (ite (bvsle #x00000004 main@%_169_0) a!4 a!13)))
      (a!27 (ite (bvsle #x00000002 main@%_320_0)
                 (ite (= main@%_320_0 #x00000002) a!17 (ite a!18 a!22 a!24))
                 (ite (= main@%_320_0 #x00000001)
                      a!26
                      (ite (bvsle #x00000004 main@%_169_0) a!4 a!13)))))
  (not (bvule #x00000005 (ite (bvsle #x00000004 main@%_320_0) a!15 a!27))))))))))
