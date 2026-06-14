; =========================================================
; Game Engine Function: sub_104DD4
; Address            : 0x104DD4 - 0x104EF6
; =========================================================

104DD4:  PUSH            {R4-R7,LR}
104DD6:  ADD             R7, SP, #0xC
104DD8:  PUSH.W          {R8-R11}
104DDC:  SUB             SP, SP, #4
104DDE:  VPUSH           {D8}
104DE2:  SUB             SP, SP, #0x50
104DE4:  MOV             R4, R0
104DE6:  LDR             R0, [R0,#0x5C]
104DE8:  CBZ             R0, loc_104E0A
104DEA:  MOV             R5, R1
104DEC:  LDR             R1, =(off_23494C - 0x104DF8)
104DEE:  MOVW            R3, #0x7D24
104DF2:  LDR             R2, [R0]
104DF4:  ADD             R1, PC; off_23494C
104DF6:  MOVT            R3, #0x66 ; 'f'
104DFA:  LDR             R1, [R1]; dword_23DF24
104DFC:  LDR             R1, [R1]
104DFE:  ADD             R1, R3
104E00:  CMP             R2, R1
104E02:  ITT NE
104E04:  LDRNE           R0, [R0,#0x18]
104E06:  CMPNE           R0, #0
104E08:  BNE             loc_104E18
104E0A:  ADD             SP, SP, #0x50 ; 'P'
104E0C:  VPOP            {D8}
104E10:  ADD             SP, SP, #4
104E12:  POP.W           {R8-R11}
104E16:  POP             {R4-R7,PC}
104E18:  LDRH            R0, [R5]; int
104E1A:  MOVS            R1, #0
104E1C:  STRD.W          R1, R1, [SP,#0x78+var_38]
104E20:  STR             R1, [SP,#0x78+var_30]
104E22:  STRD.W          R1, R1, [SP,#0x78+var_48]
104E26:  STR             R1, [SP,#0x78+var_40]
104E28:  ADD.W           R9, SP, #0x78+var_48
104E2C:  ADD             R1, SP, #0x78+var_38; int
104E2E:  MOV             R2, R9
104E30:  BL              sub_F857C
104E34:  CMP             R0, #0
104E36:  BEQ             loc_104ED8
104E38:  LDRH            R0, [R5,#2]
104E3A:  UXTB            R1, R0
104E3C:  UBFX.W          R5, R0, #8, #1
104E40:  VMOV            S0, R1
104E44:  LDR             R1, =(aAxl - 0x104E54); "AXL" ...
104E46:  LDR             R2, =(aDeltaFLoopDLoc - 0x104E62); "delta: %f loop: %d lockx: %d locky: %d "... ...
104E48:  UBFX.W          R6, R0, #9, #1
104E4C:  VCVT.F64.U32    D8, S0
104E50:  ADD             R1, PC; "AXL"
104E52:  UBFX.W          R10, R0, #0xA, #1
104E56:  UBFX.W          R11, R0, #0xB, #1
104E5A:  MOV.W           R8, R0,LSR#13
104E5E:  ADD             R2, PC; "delta: %f loop: %d lockx: %d locky: %d "...
104E60:  ADD             R0, SP, #0x78+var_70
104E62:  STR.W           R8, [SP,#0x78+var_60]
104E66:  STM.W           R0, {R5,R6,R10,R11}
104E6A:  MOVS            R0, #4; prio
104E6C:  VSTR            D8, [SP,#0x78+var_78]
104E70:  BLX             __android_log_print
104E74:  STRB.W          R6, [R7,#var_52]
104E78:  SUB.W           R6, R8, #2
104E7C:  CLZ.W           R6, R6
104E80:  LDRB.W          R0, [SP,#0x78+var_38]
104E84:  LDR             R1, [SP,#0x78+var_40]
104E86:  LSRS            R6, R6, #5
104E88:  LDR             R2, [SP,#0x78+var_30]
104E8A:  LDRB.W          R3, [SP,#0x78+var_48]
104E8E:  VSTR            D8, [SP,#0x78+var_50]
104E92:  STRB.W          R5, [R7,#var_51]
104E96:  STRB.W          R10, [R7,#var_53]
104E9A:  STRB.W          R11, [SP,#0x78+var_54]
104E9E:  STR             R6, [SP,#0x78+var_58]
104EA0:  ADD.W           LR, SP, #0x78+var_54
104EA4:  SUB.W           R5, R7, #-var_52
104EA8:  LSLS            R3, R3, #0x1F
104EAA:  ADD.W           R12, SP, #0x78+var_58
104EAE:  SUB.W           R8, R7, #-var_53
104EB2:  SUB.W           R6, R7, #-var_51
104EB6:  STRD.W          R6, R5, [SP,#0x78+var_78]
104EBA:  ADD             R3, SP, #0x78+var_50
104EBC:  STRD.W          R8, LR, [SP,#0x78+var_70]
104EC0:  STR.W           R12, [SP,#0x78+var_68]
104EC4:  IT EQ
104EC6:  ADDEQ.W         R1, R9, #1
104ECA:  LSLS            R0, R0, #0x1F
104ECC:  ADD             R0, SP, #0x78+var_38
104ECE:  IT EQ
104ED0:  ADDEQ           R2, R0, #1
104ED2:  MOV             R0, R4
104ED4:  BL              sub_104F28
104ED8:  LDRB.W          R0, [SP,#0x78+var_48]
104EDC:  LSLS            R0, R0, #0x1F
104EDE:  ITT NE
104EE0:  LDRNE           R0, [SP,#0x78+var_40]; void *
104EE2:  BLXNE           j__ZdlPv; operator delete(void *)
104EE6:  LDRB.W          R0, [SP,#0x78+var_38]
104EEA:  LSLS            R0, R0, #0x1F
104EEC:  ITT NE
104EEE:  LDRNE           R0, [SP,#0x78+var_30]; void *
104EF0:  BLXNE           j__ZdlPv; operator delete(void *)
104EF4:  B               loc_104E0A
