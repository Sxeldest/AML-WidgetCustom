; =========================================================
; Game Engine Function: sub_DF9F0
; Address            : 0xDF9F0 - 0xDFA86
; =========================================================

DF9F0:  PUSH            {R4-R7,LR}
DF9F2:  ADD             R7, SP, #0xC
DF9F4:  PUSH.W          {R11}
DF9F8:  SUB             SP, SP, #0x38
DF9FA:  VMOV            D16, R2, R3
DF9FE:  MOVS            R6, #0
DFA00:  MOV             R4, R0
DFA02:  CMP.W           R3, #0xFFFFFFFF
DFA06:  STRD.W          R6, R6, [SP,#0x48+var_18]
DFA0A:  BGT             loc_DFA1A
DFA0C:  VNEG.F64        D16, D16
DFA10:  MOV.W           R6, #0x100
DFA14:  STR             R6, [SP,#0x48+var_14]
DFA16:  VMOV            R0, R3, D16
DFA1A:  LDR             R0, =(unk_91DD0 - 0xDFA26)
DFA1C:  MOVS            R1, #0x7FF00000
DFA22:  ADD             R0, PC; unk_91DD0
DFA24:  VLD1.64         {D18-D19}, [R0]
DFA28:  ADD             R0, SP, #0x48+var_28
DFA2A:  VST1.64         {D18-D19}, [R0]
DFA2E:  MVNS            R0, R3
DFA30:  TST             R0, R1
DFA32:  BNE             loc_DFA60
DFA34:  VCMP.F64        D16, D16
DFA38:  ADD             R0, SP, #0x48+var_18
DFA3A:  MOV.W           R1, #0x1000000
DFA3E:  MOV.W           R2, #0x20000000
DFA42:  STRD.W          R2, R1, [SP,#0x48+var_48]
DFA46:  MOVS            R1, #0
DFA48:  STR             R0, [SP,#0x48+var_40]
DFA4A:  MOV             R0, R4
DFA4C:  MOVS            R2, #0
DFA4E:  MOV.W           R3, #0xFFFFFFFF
DFA52:  VMRS            APSR_nzcv, FPSCR
DFA56:  IT VS
DFA58:  MOVVS           R1, #1
DFA5A:  BL              sub_DE2CC
DFA5E:  B               loc_DFA7E
DFA60:  VMOV            R2, R3, D16
DFA64:  ADD             R5, SP, #0x48+var_38
DFA66:  MOV             R0, R5
DFA68:  BLX             j__ZN3fmt2v86detail9dragonbox10to_decimalIdEENS2_10decimal_fpIT_EES5_; fmt::v8::detail::dragonbox::to_decimal<double>(double)
DFA6C:  MOVS            R0, #0
DFA6E:  ADD             R2, SP, #0x48+var_28; int
DFA70:  STRD.W          R6, R0, [SP,#0x48+var_48]; int
DFA74:  MOV             R0, R4; int
DFA76:  MOV             R1, R5; int
DFA78:  MOVS            R3, #0; int
DFA7A:  BL              sub_DEFC8
DFA7E:  ADD             SP, SP, #0x38 ; '8'
DFA80:  POP.W           {R11}
DFA84:  POP             {R4-R7,PC}
