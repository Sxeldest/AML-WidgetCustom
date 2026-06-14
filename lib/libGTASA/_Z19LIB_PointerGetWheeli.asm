; =========================================================
; Game Engine Function: _Z19LIB_PointerGetWheeli
; Address            : 0x270198 - 0x2701BE
; =========================================================

270198:  CMP             R0, #3
27019A:  ITTT GT
27019C:  VLDRGT          S0, =0.0
2701A0:  VMOVGT          R0, S0
2701A4:  BXGT            LR
2701A6:  LDR             R1, =(pointers_ptr - 0x2701B0)
2701A8:  RSB.W           R0, R0, R0,LSL#3
2701AC:  ADD             R1, PC; pointers_ptr
2701AE:  LDR             R1, [R1]; pointers
2701B0:  ADD.W           R0, R1, R0,LSL#4
2701B4:  VLDR            S0, [R0,#0x6C]
2701B8:  VMOV            R0, S0
2701BC:  BX              LR
