; =========================================================
; Game Engine Function: sub_DEF2C
; Address            : 0xDEF2C - 0xDEFC2
; =========================================================

DEF2C:  PUSH            {R4-R7,LR}
DEF2E:  ADD             R7, SP, #0xC
DEF30:  PUSH.W          {R11}
DEF34:  SUB             SP, SP, #0x38
DEF36:  VMOV            D16, R2, R3
DEF3A:  MOVS            R6, #0
DEF3C:  MOV             R4, R0
DEF3E:  CMP.W           R3, #0xFFFFFFFF
DEF42:  STRD.W          R6, R6, [SP,#0x48+var_18]
DEF46:  BGT             loc_DEF56
DEF48:  VNEG.F64        D16, D16
DEF4C:  MOV.W           R6, #0x100
DEF50:  STR             R6, [SP,#0x48+var_14]
DEF52:  VMOV            R0, R3, D16
DEF56:  LDR             R0, =(unk_91DD0 - 0xDEF62)
DEF58:  MOVS            R1, #0x7FF00000
DEF5E:  ADD             R0, PC; unk_91DD0
DEF60:  VLD1.64         {D18-D19}, [R0]
DEF64:  ADD             R0, SP, #0x48+var_28
DEF66:  VST1.64         {D18-D19}, [R0]
DEF6A:  MVNS            R0, R3
DEF6C:  TST             R0, R1
DEF6E:  BNE             loc_DEF9C
DEF70:  VCMP.F64        D16, D16
DEF74:  ADD             R0, SP, #0x48+var_18
DEF76:  MOV.W           R1, #0x1000000
DEF7A:  MOV.W           R2, #0x20000000
DEF7E:  STRD.W          R2, R1, [SP,#0x48+var_48]
DEF82:  MOVS            R1, #0
DEF84:  STR             R0, [SP,#0x48+var_40]
DEF86:  MOV             R0, R4
DEF88:  MOVS            R2, #0
DEF8A:  MOV.W           R3, #0xFFFFFFFF
DEF8E:  VMRS            APSR_nzcv, FPSCR
DEF92:  IT VS
DEF94:  MOVVS           R1, #1
DEF96:  BL              sub_DE2CC
DEF9A:  B               loc_DEFBA
DEF9C:  VMOV            R2, R3, D16
DEFA0:  ADD             R5, SP, #0x48+var_38
DEFA2:  MOV             R0, R5
DEFA4:  BLX             j__ZN3fmt2v86detail9dragonbox10to_decimalIdEENS2_10decimal_fpIT_EES5_; fmt::v8::detail::dragonbox::to_decimal<double>(double)
DEFA8:  MOVS            R0, #0
DEFAA:  ADD             R2, SP, #0x48+var_28; int
DEFAC:  STRD.W          R6, R0, [SP,#0x48+var_48]; int
DEFB0:  MOV             R0, R4; int
DEFB2:  MOV             R1, R5; int
DEFB4:  MOVS            R3, #0; int
DEFB6:  BL              sub_DEFC8
DEFBA:  ADD             SP, SP, #0x38 ; '8'
DEFBC:  POP.W           {R11}
DEFC0:  POP             {R4-R7,PC}
