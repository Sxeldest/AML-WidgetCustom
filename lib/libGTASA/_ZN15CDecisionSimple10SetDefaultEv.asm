; =========================================================
; Game Engine Function: _ZN15CDecisionSimple10SetDefaultEv
; Address            : 0x4BDD42 - 0x4BDDD2
; =========================================================

4BDD42:  PUSH            {R7,LR}
4BDD44:  MOV             R7, SP
4BDD46:  SUB             SP, SP, #0x20
4BDD48:  VMOV.I32        Q8, #0xC8
4BDD4C:  ADD.W           R12, SP, #0x28+var_20
4BDD50:  MOVS            R1, #0
4BDD52:  VMOV.F32        S0, #1.0
4BDD56:  STRB.W          R1, [R7,#-0x19]
4BDD5A:  MOVS            R3, #0xC8
4BDD5C:  STR.W           R1, [R7,#-0x1D]
4BDD60:  MOV             R1, R12
4BDD62:  VST1.32         {D16-D17}, [R1]!
4BDD66:  MOVS            R2, #1
4BDD68:  SUB.W           LR, R7, #0x1E
4BDD6C:  STR             R3, [R1]
4BDD6E:  MOV.W           R1, #0x3F800000
4BDD72:  STR             R3, [SP,#0x28+var_C]
4BDD74:  STRB.W          R2, [R7,#-0x1E]
4BDD78:  STR             R1, [R0,#0x18]
4BDD7A:  MOVS            R1, #6
4BDD7C:  STR             R3, [R0]
4BDD7E:  ADD.W           R3, R0, #0x1C
4BDD82:  STR             R1, [R0,#0x30]
4BDD84:  LDRB.W          R1, [LR,R2]
4BDD88:  VMOV            S2, R1
4BDD8C:  VCVT.F32.U32    S2, S2
4BDD90:  LDR.W           R1, [R12,R2,LSL#2]
4BDD94:  STR.W           R1, [R3,#-0x18]
4BDD98:  ADDS            R2, #1
4BDD9A:  VADD.F32        S0, S0, S2
4BDD9E:  VSTM            R3!, {S0}
4BDDA2:  LDR             R1, [R0,#0x30]
4BDDA4:  CMP             R2, R1
4BDDA6:  BLT             loc_4BDD84
4BDDA8:  CMP             R1, #1
4BDDAA:  BLT             loc_4BDDCE
4BDDAC:  VMOV.F32        S2, #1.0
4BDDB0:  ADD.W           R1, R0, #0x18
4BDDB4:  MOVS            R2, #0
4BDDB6:  VDIV.F32        S0, S2, S0
4BDDBA:  VLDR            S2, [R1]
4BDDBE:  ADDS            R2, #1
4BDDC0:  VMUL.F32        S2, S0, S2
4BDDC4:  VSTM            R1!, {S2}
4BDDC8:  LDR             R3, [R0,#0x30]
4BDDCA:  CMP             R2, R3
4BDDCC:  BLT             loc_4BDDBA
4BDDCE:  ADD             SP, SP, #0x20 ; ' '
4BDDD0:  POP             {R7,PC}
