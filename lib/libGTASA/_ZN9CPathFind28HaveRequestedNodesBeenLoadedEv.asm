; =========================================================
; Game Engine Function: _ZN9CPathFind28HaveRequestedNodesBeenLoadedEv
; Address            : 0x319C18 - 0x319D30
; =========================================================

319C18:  PUSH            {R4-R7,LR}
319C1A:  ADD             R7, SP, #0xC
319C1C:  PUSH.W          {R11}
319C20:  MOVW            R2, #0x3CB0
319C24:  MOVW            R3, #0x3CBC
319C28:  ADD             R2, R0
319C2A:  MOVW            R1, #0x3CB4
319C2E:  VLDR            S0, =3000.0
319C32:  ADD             R1, R0
319C34:  VLDR            S2, [R2]
319C38:  MOVW            R2, #0x3CB8
319C3C:  ADD             R2, R0
319C3E:  VLDR            S8, [R1]
319C42:  VADD.F32        S2, S2, S0
319C46:  VLDR            S10, =750.0
319C4A:  VLDR            S4, [R2]
319C4E:  ADDS            R2, R0, R3
319C50:  MOVS            R3, #0
319C52:  MOVS            R1, #7
319C54:  VLDR            S6, [R2]
319C58:  VADD.F32        S4, S4, S0
319C5C:  MOV.W           R12, #7
319C60:  VADD.F32        S6, S6, S0
319C64:  VADD.F32        S0, S8, S0
319C68:  VDIV.F32        S2, S2, S10
319C6C:  VDIV.F32        S4, S4, S10
319C70:  VDIV.F32        S6, S6, S10
319C74:  VDIV.F32        S0, S0, S10
319C78:  VCVT.S32.F32    S2, S2
319C7C:  VCVT.S32.F32    S4, S4
319C80:  VCVT.S32.F32    S6, S6
319C84:  VCVT.S32.F32    S0, S0
319C88:  VMOV            R5, S2
319C8C:  VMOV            R4, S4
319C90:  VMOV            R2, S6
319C94:  VMOV            LR, S0
319C98:  CMP             R2, #0
319C9A:  IT LE
319C9C:  MOVLE           R2, R3
319C9E:  CMP             R2, #7
319CA0:  IT GE
319CA2:  MOVGE           R2, R1
319CA4:  CMP.W           LR, #0
319CA8:  IT LE
319CAA:  MOVLE           LR, R3
319CAC:  CMP.W           LR, #7
319CB0:  IT GE
319CB2:  MOVGE           LR, R1
319CB4:  CMP             R4, #0
319CB6:  IT LE
319CB8:  MOVLE           R4, R3
319CBA:  CMP             R4, #7
319CBC:  IT LT
319CBE:  MOVLT           R12, R4
319CC0:  CMP             R5, #0
319CC2:  IT GT
319CC4:  MOVGT           R3, R5
319CC6:  CMP             R3, #7
319CC8:  IT LT
319CCA:  MOVLT           R1, R3
319CCC:  CMP             R1, LR
319CCE:  BLE             loc_319CD8
319CD0:  MOVS            R0, #1
319CD2:  POP.W           {R11}
319CD6:  POP             {R4-R7,PC}
319CD8:  MVNS            R4, R4
319CDA:  MOV             R5, #0xFFFFFFF8
319CDE:  CMN.W           R4, #8
319CE2:  MVN.W           R3, R3
319CE6:  IT LE
319CE8:  MOVLE           R4, R5
319CEA:  CMN.W           R3, #8
319CEE:  IT GT
319CF0:  MOVGT           R5, R3
319CF2:  MOVW            R3, #0x1F7
319CF6:  SUBS            R3, R3, R5
319CF8:  SUB.W           R3, R3, R4,LSL#3
319CFC:  ADD.W           R0, R0, R3,LSL#2
319D00:  MOV             R3, #0xFFFFFFFE
319D04:  ADDS            R0, #4
319D06:  SUBS            R3, R3, R4
319D08:  CMP             R12, R2
319D0A:  MOV             R4, R3
319D0C:  MOV             R5, R0
319D0E:  BGT             loc_319D1C
319D10:  LDR             R6, [R5]
319D12:  CBZ             R6, loc_319D28
319D14:  ADDS            R4, #1
319D16:  ADDS            R5, #0x20 ; ' '
319D18:  CMP             R4, R2
319D1A:  BLT             loc_319D10
319D1C:  ADDS            R4, R1, #1
319D1E:  ADDS            R0, #4
319D20:  CMP             R1, LR
319D22:  MOV             R1, R4
319D24:  BLT             loc_319D08
319D26:  B               loc_319CD0
319D28:  MOVS            R0, #0
319D2A:  POP.W           {R11}
319D2E:  POP             {R4-R7,PC}
