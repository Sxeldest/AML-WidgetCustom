; =========================================================
; Game Engine Function: silk_HP_variable_cutoff
; Address            : 0xCBA68 - 0xCBB7A
; =========================================================

CBA68:  PUSH            {R4-R7,LR}
CBA6A:  ADD             R7, SP, #0xC
CBA6C:  PUSH.W          {R8}
CBA70:  MOV             R4, R0
CBA72:  MOVW            R0, #0x11BD
CBA76:  LDRB            R0, [R4,R0]
CBA78:  CMP             R0, #2
CBA7A:  BNE             loc_CBB74
CBA7C:  MOV.W           R0, #0x11E0
CBA80:  MOV.W           R1, #0x3E80000
CBA84:  LDR             R0, [R4,R0]
CBA86:  MULS            R0, R1
CBA88:  MOV.W           R1, #0x11C0
CBA8C:  LDR             R1, [R4,R1]
CBA8E:  BLX             sub_108848
CBA92:  BLX             j_silk_lin2log
CBA96:  MOV             R5, R0
CBA98:  MOVW            R0, #0x1258
CBA9C:  LDR             R0, [R4,R0]
CBA9E:  NEGS            R2, R0
CBAA0:  SXTH            R1, R0
CBAA2:  LSLS            R2, R2, #2
CBAA4:  UXTH            R3, R2
CBAA6:  MULS            R1, R3
CBAA8:  ASRS            R1, R1, #0x10
CBAAA:  SMLATB.W        R6, R2, R0, R1
CBAAE:  MOV.W           R0, #0x3C0000
CBAB2:  BLX             j_silk_lin2log
CBAB6:  SUB.W           R8, R5, R0
CBABA:  MOV.W           R0, #0x3C0000
CBABE:  BLX             j_silk_lin2log
CBAC2:  SUBS            R1, R5, R0
CBAC4:  LDR             R0, [R4,#8]
CBAC6:  UXTH            R2, R6
CBAC8:  SXTH            R1, R1
CBACA:  MULS            R1, R2
CBACC:  SUB.W           R2, R5, #0x800
CBAD0:  SUB.W           R2, R2, R0,ASR#8
CBAD4:  SMLATB.W        R2, R6, R8, R2
CBAD8:  ADD.W           R1, R2, R1,ASR#16
CBADC:  CMP             R1, #0
CBADE:  IT LT
CBAE0:  ADDLT.W         R1, R1, R1,LSL#1
CBAE4:  CMP             R1, #0x33 ; '3'
CBAE6:  BLE             loc_CBAEC
CBAE8:  MOVS            R1, #0x33 ; '3'
CBAEA:  B               loc_CBAF8
CBAEC:  CMN.W           R1, #0x33 ; '3'
CBAF0:  IT LE
CBAF2:  MOVLE           R1, #0xFFFFFFCD
CBAF6:  SXTH            R1, R1
CBAF8:  MOVW            R2, #0x11B4
CBAFC:  MOVW            R3, #0x199A
CBB00:  LDRSH           R2, [R4,R2]
CBB02:  SMULBB.W        R1, R2, R1
CBB06:  UXTH            R2, R1
CBB08:  SMLABT.W        R0, R3, R1, R0
CBB0C:  MULS            R2, R3
CBB0E:  ADD.W           R0, R0, R2,LSR#16
CBB12:  STR             R0, [R4,#8]
CBB14:  MOVS            R0, #0x3C ; '<'
CBB16:  BLX             j_silk_lin2log
CBB1A:  MOV             R5, R0
CBB1C:  MOVS            R0, #0x64 ; 'd'
CBB1E:  BLX             j_silk_lin2log
CBB22:  LDR             R6, [R4,#8]
CBB24:  LSLS            R1, R5, #8
CBB26:  CMP.W           R1, R0,LSL#8
CBB2A:  BLE             loc_CBB48
CBB2C:  MOVS            R0, #0x3C ; '<'
CBB2E:  BLX             j_silk_lin2log
CBB32:  CMP.W           R6, R0,LSL#8
CBB36:  BGT             loc_CBB66
CBB38:  MOVS            R0, #0x64 ; 'd'
CBB3A:  LDR             R5, [R4,#8]
CBB3C:  BLX             j_silk_lin2log
CBB40:  CMP.W           R5, R0,LSL#8
CBB44:  BLT             loc_CBB54
CBB46:  B               loc_CBB70
CBB48:  MOVS            R0, #0x64 ; 'd'
CBB4A:  BLX             j_silk_lin2log
CBB4E:  CMP.W           R6, R0,LSL#8
CBB52:  BLE             loc_CBB58
CBB54:  MOVS            R0, #0x64 ; 'd'
CBB56:  B               loc_CBB68
CBB58:  MOVS            R0, #0x3C ; '<'
CBB5A:  LDR             R5, [R4,#8]
CBB5C:  BLX             j_silk_lin2log
CBB60:  CMP.W           R5, R0,LSL#8
CBB64:  BGE             loc_CBB70
CBB66:  MOVS            R0, #0x3C ; '<'
CBB68:  BLX             j_silk_lin2log
CBB6C:  LSLS            R0, R0, #8
CBB6E:  B               loc_CBB72
CBB70:  LDR             R0, [R4,#8]
CBB72:  STR             R0, [R4,#8]
CBB74:  POP.W           {R8}
CBB78:  POP             {R4-R7,PC}
