; =========================================================
; Game Engine Function: _ZN8CVehicle18GetGasTankPositionEv
; Address            : 0x591CA4 - 0x591D2C
; =========================================================

591CA4:  PUSH            {R4,R6,R7,LR}
591CA6:  ADD             R7, SP, #8
591CA8:  SUB             SP, SP, #0x20
591CAA:  MOV             R2, R1
591CAC:  MOV             R4, R0
591CAE:  LDR             R1, [R2,#0x14]
591CB0:  ADD.W           R0, R1, #0x30 ; '0'
591CB4:  CMP             R1, #0
591CB6:  IT EQ
591CB8:  ADDEQ           R0, R2, #4
591CBA:  VLDR            D16, [R0]
591CBE:  LDR             R0, [R0,#8]
591CC0:  STR             R0, [R4,#8]
591CC2:  VSTR            D16, [R4]
591CC6:  LDRB.W          R0, [R2,#0x432]
591CCA:  LSLS            R0, R0, #0x19
591CCC:  BPL             loc_591D28
591CCE:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x591CD8)
591CD0:  LDRSH.W         R2, [R2,#0x26]
591CD4:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
591CD6:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
591CD8:  LDR.W           R0, [R0,R2,LSL#2]
591CDC:  LDR             R0, [R0,#0x74]
591CDE:  VLDR            D16, [R0,#0x60]
591CE2:  LDR             R0, [R0,#0x68]
591CE4:  VSTR            D16, [SP,#0x28+var_18]
591CE8:  VLDR            S0, [SP,#0x28+var_18]
591CEC:  STR             R0, [SP,#0x28+var_10]
591CEE:  VCMP.F32        S0, #0.0
591CF2:  VMRS            APSR_nzcv, FPSCR
591CF6:  ITTT EQ
591CF8:  VLDREQ          S0, [SP,#0x28+var_18+4]
591CFC:  VCMPEQ.F32      S0, #0.0
591D00:  VMRSEQ          APSR_nzcv, FPSCR
591D04:  BNE             loc_591D14
591D06:  VLDR            S0, [SP,#0x28+var_10]
591D0A:  VCMP.F32        S0, #0.0
591D0E:  VMRS            APSR_nzcv, FPSCR
591D12:  BEQ             loc_591D28
591D14:  ADD             R2, SP, #0x28+var_18
591D16:  MOV             R0, SP
591D18:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
591D1C:  VLDR            D16, [SP,#0x28+var_28]
591D20:  LDR             R0, [SP,#0x28+var_20]
591D22:  STR             R0, [R4,#8]
591D24:  VSTR            D16, [R4]
591D28:  ADD             SP, SP, #0x20 ; ' '
591D2A:  POP             {R4,R6,R7,PC}
