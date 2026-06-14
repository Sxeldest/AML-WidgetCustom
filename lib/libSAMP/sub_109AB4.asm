; =========================================================
; Game Engine Function: sub_109AB4
; Address            : 0x109AB4 - 0x109ACC
; =========================================================

109AB4:  LDR             R0, [R0,#0xC]
109AB6:  CMP             R0, #0
109AB8:  ITTE NE
109ABA:  LDRNE.W         R0, [R0,#0x4CC]
109ABE:  VMOVNE          S0, R0
109AC2:  VLDREQ          S0, =0.0
109AC6:  VMOV            R0, S0
109ACA:  BX              LR
