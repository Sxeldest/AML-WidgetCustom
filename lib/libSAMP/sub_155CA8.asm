; =========================================================
; Game Engine Function: sub_155CA8
; Address            : 0x155CA8 - 0x155D22
; =========================================================

155CA8:  PUSH            {R4,R6,R7,LR}
155CAA:  ADD             R7, SP, #8
155CAC:  VPUSH           {D8}
155CB0:  SUB             SP, SP, #0x10
155CB2:  VMOV            S0, R1
155CB6:  VLDR            S2, =100.0
155CBA:  MOV             R4, R0
155CBC:  LDR             R0, [R0,#0x5C]
155CBE:  VCVT.F32.S32    S0, S0
155CC2:  VDIV.F32        S16, S0, S2
155CC6:  CBZ             R0, loc_155CD4
155CC8:  VMOV            R1, S16
155CCC:  LDR             R0, [R0]
155CCE:  LDR             R2, [R0]
155CD0:  LDR             R2, [R2,#0x14]
155CD2:  BLX             R2
155CD4:  VCVT.F64.F32    D16, S16
155CD8:  MOVS            R0, #0
155CDA:  STRD.W          R0, R0, [SP,#0x20+var_18]
155CDE:  STRB.W          R0, [SP,#0x20+var_20]
155CE2:  MOV             R0, SP
155CE4:  VMOV            R2, R3, D16
155CE8:  BL              sub_EA660
155CEC:  LDR             R1, =(aRecordervolume - 0x155CF2); "recorderVolume" ...
155CEE:  ADD             R1, PC; "recorderVolume"
155CF0:  ADD.W           R0, R4, #0x60 ; '`'
155CF4:  BL              sub_E4710
155CF8:  LDRB.W          R1, [SP,#0x20+var_20]
155CFC:  LDRB            R2, [R0]
155CFE:  STRB            R1, [R0]
155D00:  LDRD.W          R1, R4, [SP,#0x20+var_18]
155D04:  LDRD.W          R3, R12, [R0,#8]
155D08:  STRD.W          R1, R4, [R0,#8]
155D0C:  MOV             R0, SP
155D0E:  STRB.W          R2, [SP,#0x20+var_20]
155D12:  STRD.W          R3, R12, [SP,#0x20+var_18]
155D16:  BL              sub_E3F7A
155D1A:  ADD             SP, SP, #0x10
155D1C:  VPOP            {D8}
155D20:  POP             {R4,R6,R7,PC}
