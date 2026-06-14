; =========================================================
; Game Engine Function: mpg123_tpf
; Address            : 0x231054 - 0x2310AC
; =========================================================

231054:  CBZ             R0, loc_2310A2
231056:  PUSH            {R7,LR}
231058:  MOV             R7, SP
23105A:  LDR.W           R12, =(unk_5F11C0 - 0x23106C)
23105E:  MOVW            R2, #0x92E8
231062:  LDR             R2, [R0,R2]
231064:  MOVW            R1, #0x92D8
231068:  ADD             R12, PC; unk_5F11C0
23106A:  LDR.W           LR, =(unk_5F58EC - 0x23107E)
23106E:  MOVW            R3, #0x92C8
231072:  LDR             R1, [R0,R1]
231074:  LDR             R0, [R0,R3]
231076:  LDR.W           R2, [R12,R2,LSL#2]
23107A:  ADD             LR, PC; unk_5F58EC
23107C:  ADD.W           R1, LR, R1,LSL#2
231080:  LSL.W           R0, R2, R0
231084:  VMOV            S2, R0
231088:  VLDR            S0, [R1]
23108C:  VCVT.F64.S32    D16, S2
231090:  VCVT.F64.S32    D17, S0
231094:  VDIV.F64        D16, D17, D16
231098:  POP.W           {R7,LR}
23109C:  VMOV            R0, R1, D16
2310A0:  BX              LR
2310A2:  VMOV.F64        D16, #-1.0
2310A6:  VMOV            R0, R1, D16
2310AA:  BX              LR
