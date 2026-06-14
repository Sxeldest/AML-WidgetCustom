; =========================================================
; Game Engine Function: MixDirect_C
; Address            : 0x260C0C - 0x260CD4
; =========================================================

260C0C:  PUSH            {R4-R7,LR}
260C0E:  ADD             R7, SP, #0xC
260C10:  PUSH.W          {R8-R11}
260C14:  SUB             SP, SP, #4
260C16:  MOV             R12, R1
260C18:  LDRD.W          R1, R6, [R0]
260C1C:  VLDR            S0, =0.00001
260C20:  MOVS            R5, #0
260C22:  STR             R6, [SP,#0x20+var_20]
260C24:  ADD.W           R11, R1, R3,LSL#2
260C28:  LDR.W           LR, [R0,#8]
260C2C:  MOVW            R9, #0x2890
260C30:  LDRD.W          R8, R10, [R7,#arg_0]
260C34:  ADD.W           R1, R2, R2,LSL#3
260C38:  ADD.W           R1, R0, R1,LSL#2
260C3C:  ADD.W           R1, R1, R5,LSL#2
260C40:  ADD             R1, R9
260C42:  VLDR            S2, [R1]
260C46:  VCMPE.F32       S2, S0
260C4A:  VMRS            APSR_nzcv, FPSCR
260C4E:  BLT             loc_260CC2
260C50:  CBZ             R3, loc_260C7E
260C52:  CMP.W           R10, #0
260C56:  BEQ             loc_260C9E
260C58:  MOV             R6, R11
260C5A:  MOV             R4, R10
260C5C:  MOV             R1, R12
260C5E:  VLDR            S4, [R1]
260C62:  SUBS            R4, #1
260C64:  VLDR            S6, [R6]
260C68:  ADD.W           R1, R1, #4
260C6C:  VMUL.F32        S4, S2, S4
260C70:  VADD.F32        S4, S6, S4
260C74:  VSTM            R6!, {S4}
260C78:  BNE             loc_260C5E
260C7A:  MOV             R1, R10
260C7C:  B               loc_260CA0
260C7E:  VLDR            S4, [R12]
260C82:  LDR             R1, [SP,#0x20+var_20]
260C84:  VMUL.F32        S4, S2, S4
260C88:  ADD.W           R1, R1, R5,LSL#2
260C8C:  VLDR            S6, [R1]
260C90:  VSUB.F32        S4, S6, S4
260C94:  VSTR            S4, [R1]
260C98:  CMP.W           R10, #0
260C9C:  BNE             loc_260C58
260C9E:  MOVS            R1, #0
260CA0:  ADDS            R4, R1, R3
260CA2:  CMP             R4, R8
260CA4:  BNE             loc_260CC2
260CA6:  ADD.W           R1, R12, R1,LSL#2
260CAA:  VLDR            S4, [R1]
260CAE:  ADD.W           R1, LR, R5,LSL#2
260CB2:  VMUL.F32        S2, S2, S4
260CB6:  VLDR            S4, [R1]
260CBA:  VADD.F32        S2, S4, S2
260CBE:  VSTR            S2, [R1]
260CC2:  ADDS            R5, #1
260CC4:  ADD.W           R11, R11, #0x2000
260CC8:  CMP             R5, #9
260CCA:  BNE             loc_260C34
260CCC:  ADD             SP, SP, #4
260CCE:  POP.W           {R8-R11}
260CD2:  POP             {R4-R7,PC}
