; =========================================================
; Game Engine Function: silk_encode_frame_FIX
; Address            : 0xCCAD4 - 0xCD63E
; =========================================================

CCAD4:  PUSH            {R4-R7,LR}
CCAD6:  ADD             R7, SP, #0xC
CCAD8:  PUSH.W          {R8-R11}
CCADC:  SUB.W           SP, SP, #0x2500
CCAE0:  SUB             SP, SP, #0x2C
CCAE2:  MOV             R4, R0
CCAE4:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xCCAF2)
CCAE8:  MOV             R6, SP
CCAEA:  ADD.W           R5, R6, #0x154
CCAEE:  ADD             R0, PC; __stack_chk_guard_ptr
CCAF0:  STR.W           R3, [R6,#0x2548+var_24C4]
CCAF4:  STR.W           R2, [R6,#0x2548+var_24B0]
CCAF8:  MOVW            R9, #0x11F0
CCAFC:  LDR             R0, [R0]; __stack_chk_guard
CCAFE:  MOVW            R8, #0x12A2
CCB02:  STR             R1, [R6,#0x2548+var_2524]
CCB04:  MOVW            R10, #0x11E8
CCB08:  LDR             R0, [R0]
CCB0A:  STR.W           R0, [R6,#0x2548+var_247C]
CCB0E:  MOVS            R0, #0
CCB10:  STRD.W          R0, R0, [R5,#-0xC]
CCB14:  STR.W           R0, [R5,#-4]
CCB18:  STR             R0, [R5]
CCB1A:  MOVW            R0, #0x120C
CCB1E:  LDR             R1, [R4,R0]
CCB20:  LDR.W           R11, [R4,R9]
CCB24:  AND.W           R2, R1, #3
CCB28:  STRB.W          R2, [R4,R8]
CCB2C:  ADDS            R1, #1
CCB2E:  LDR.W           R2, [R4,R10]
CCB32:  STR             R1, [R4,R0]
CCB34:  MOVW            R0, #0x13EA
CCB38:  ADDS            R5, R4, R0
CCB3A:  ADD.W           R0, R4, #0x10
CCB3E:  MOV             R1, R5
CCB40:  BLX             j_silk_LP_variable_cutoff
CCB44:  MOVW            R0, #0x1C10
CCB48:  ADD             R0, R4
CCB4A:  STR             R0, [R6,#0x2548+var_2528]
CCB4C:  ADD.W           R1, R0, R11,LSL#1
CCB50:  MOV.W           R0, #0x11E0
CCB54:  LDR             R0, [R4,R0]
CCB56:  STR             R1, [R6,#0x2548+var_24D8]
CCB58:  ADD.W           R0, R0, R0,LSL#2
CCB5C:  ADD.W           R0, R1, R0,LSL#1; dest
CCB60:  LDR.W           R1, [R4,R10]
CCB64:  LSLS            R2, R1, #1; n
CCB66:  MOV             R1, R5; src
CCB68:  BLX             j_memcpy
CCB6C:  MOVW            R0, #0x1248
CCB70:  ADD.W           R2, R4, R10
CCB74:  LDR             R1, [R4,R0]
CCB76:  ADD             R0, R4
CCB78:  STR             R0, [R6,#0x2548+var_252C]
CCB7A:  ADD.W           R0, R4, R9
CCB7E:  CMP             R1, #0
CCB80:  STR             R0, [R6,#0x2548+var_24E8]
CCB82:  ADD.W           R0, R4, #0x11E0
CCB86:  STR.W           R4, [R6,#0x2548+var_24B4]
CCB8A:  STR             R0, [R6,#0x2548+var_2530]
CCB8C:  BEQ             loc_CCC28
CCB8E:  LDR             R1, [R6,#0x18]
CCB90:  LDR             R0, [R2]
CCB92:  LDR             R2, [R1]
CCB94:  LDR             R1, [R6,#0x60]
CCB96:  LDR             R3, [R1]
CCB98:  LDR.W           R1, [R6,#0x94]
CCB9C:  ADD.W           R0, R1, R0,LSL#1
CCBA0:  MOVW            R1, #0x1C10
CCBA4:  ADD             R1, R0; src
CCBA6:  ADD.W           R0, R2, R2,LSL#2
CCBAA:  ADD             R0, R3
CCBAC:  LSLS            R2, R0, #1; n
CCBAE:  LDR             R0, [R6,#0x20]; dest
CCBB0:  BLX             j_memmove
CCBB4:  LDR             R0, [R6,#0x1C]
CCBB6:  LDR             R1, [R0]
CCBB8:  MOVS            R0, #0
CCBBA:  CBNZ            R1, loc_CCBFE
CCBBC:  LDR.W           R5, [R6,#0x94]
CCBC0:  MOVW            R1, #0x11E4
CCBC4:  ADD.W           LR, R6, #0x18
CCBC8:  MOVW            R2, #0x129D
CCBCC:  ADD.W           R3, LR, #0x1240
CCBD0:  LDR             R1, [R5,R1]
CCBD2:  LDRB            R2, [R5,R2]
CCBD4:  ADD.W           R1, R3, R1,LSL#2
CCBD8:  MOVW            R3, #0x1238
CCBDC:  LDR             R1, [R1,#0x78]
CCBDE:  STR             R0, [R5,R3]
CCBE0:  MOVW            R0, #0x11BD
CCBE4:  STRB            R2, [R5,R0]
CCBE6:  MOV.W           R0, #0x11C0
CCBEA:  STR             R1, [R5,R0]
CCBEC:  LDR.W           R1, [R6,#0x98]
CCBF0:  LDR             R0, [R1,#0x1C]
CCBF2:  LDR             R1, [R1,#0x14]
CCBF4:  CLZ.W           R0, R0
CCBF8:  ADD             R0, R1
CCBFA:  SUBS            R0, #0x19
CCBFC:  ASRS            R0, R0, #3
CCBFE:  LDR             R1, [R6,#0x24]
CCC00:  STR             R0, [R1]
CCC02:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xCCC0E)
CCC06:  LDR.W           R1, [R6,#0xCC]
CCC0A:  ADD             R0, PC; __stack_chk_guard_ptr
CCC0C:  LDR             R0, [R0]; __stack_chk_guard
CCC0E:  LDR             R0, [R0]
CCC10:  SUBS            R0, R0, R1
CCC12:  ITTTT EQ
CCC14:  MOVEQ           R0, #0
CCC16:  SUBEQ.W         R4, R7, #-var_1C
CCC1A:  MOVEQ           SP, R4
CCC1C:  POPEQ.W         {R8-R11}
CCC20:  IT EQ
CCC22:  POPEQ           {R4-R7,PC}
CCC24:  BLX             __stack_chk_fail
CCC28:  LDR.W           R5, [R6,#0x94]
CCC2C:  ADD.W           R0, R5, R8
CCC30:  STR             R0, [R6,#0x14]
CCC32:  ADD.W           R0, R5, #0x1280
CCC36:  STR.W           R0, [R6,#0xA4]
CCC3A:  MOVW            R0, #0x11F4
CCC3E:  LDR             R0, [R5,R0]
CCC40:  STR.W           R2, [R6,#0xB4]
CCC44:  LDR             R1, [R2]
CCC46:  LDR             R2, [R6,#0x60]
CCC48:  ADD             R0, R1
CCC4A:  MOVS            R1, #7
CCC4C:  LDR.W           R10, [R2]
CCC50:  ADD             R0, R10
CCC52:  ADD.W           R0, R1, R0,LSL#1
CCC56:  BIC.W           R0, R0, #7
CCC5A:  SUB.W           R4, SP, R0
CCC5E:  MOV             SP, R4
CCC60:  MOVW            R8, #0x13E4
CCC64:  LDR.W           R0, [R5,R8]
CCC68:  SUB             SP, SP, #8
CCC6A:  LDR.W           R9, [R6,#0x70]
CCC6E:  ADD.W           LR, R6, #0x18
CCC72:  ADD.W           R11, LR, #0x1240
CCC76:  STR             R0, [SP,#0x2550+var_2550]
CCC78:  SUB.W           R3, R9, R10,LSL#1
CCC7C:  MOV             R0, R5
CCC7E:  MOV             R1, R11
CCC80:  MOV             R2, R4
CCC82:  BLX             j_silk_find_pitch_lags_FIX
CCC86:  ADD             SP, SP, #8
CCC88:  LDR.W           R0, [R5,R8]
CCC8C:  SUB             SP, SP, #8
CCC8E:  ADD.W           R8, R4, R10,LSL#1
CCC92:  STR             R0, [SP,#0x2550+var_2550]
CCC94:  MOV             R0, R5
CCC96:  MOV             R1, R11
CCC98:  MOV             R2, R8
CCC9A:  MOV             R3, R9
CCC9C:  BLX             j_silk_noise_shape_analysis_FIX
CCCA0:  ADD             SP, SP, #8
CCCA2:  SUB             SP, SP, #8
CCCA4:  LDR.W           R4, [R6,#0x84]
CCCA8:  MOV             R0, R5
CCCAA:  MOV             R1, R11
CCCAC:  MOV             R2, R8
CCCAE:  MOV             R3, R9
CCCB0:  STR             R4, [SP,#0x2550+var_2550]
CCCB2:  BLX             j_silk_find_pred_coefs_FIX
CCCB6:  ADD             SP, SP, #8
CCCB8:  MOV             R0, R5
CCCBA:  MOV             R1, R11
CCCBC:  MOV             R2, R4
CCCBE:  BLX             j_silk_process_gains_FIX
CCCC2:  MOVW            R0, #0x1674
CCCC6:  ADDS            R1, R5, R0
CCCC8:  STR             R1, [R6,#0x6C]
CCCCA:  MOVW            R1, #0x17CC
CCCCE:  LDR             R1, [R5,R1]
CCCD0:  CMP             R1, #0
CCCD2:  BEQ.W           loc_CCE4C
CCCD6:  LDR.W           R2, [R6,#0x94]
CCCDA:  MOVW            R1, #0x11B4
CCCDE:  LDR             R1, [R2,R1]
CCCE0:  CMP             R1, #0x4E ; 'N'
CCCE2:  BLT.W           loc_CCE4C
CCCE6:  LDR.W           R4, [R6,#0x94]
CCCEA:  MOVW            R2, #0x17D4
CCCEE:  LDR             R0, [R4,R0]
CCCF0:  ADD.W           R1, R0, R0,LSL#3
CCCF4:  ADD.W           R0, R4, R0,LSL#2
CCCF8:  ADD.W           R1, R4, R1,LSL#2
CCCFC:  ADD.W           R11, R1, R2
CCD00:  MOVW            R1, #0x1274
CCD04:  MOVS            R2, #1
CCD06:  STR             R2, [R0,R1]
CCD08:  ADD.W           R1, R4, #0x94; src
CCD0C:  ADD.W           R0, R6, #0x1420; dest
CCD10:  MOV.W           R2, #0x1100; n
CCD14:  BLX             j_memcpy
CCD18:  LDR.W           R1, [R6,#0xA4]; src
CCD1C:  MOV             R0, R11; dest
CCD1E:  MOVS            R2, #0x24 ; '$'; n
CCD20:  BLX             j_memcpy
CCD24:  MOVW            R8, #0x11E4
CCD28:  ADD.W           R9, R6, #0x18
CCD2C:  LDR.W           R5, [R4,R8]
CCD30:  ADD.W           R0, R6, #0x158; dest
CCD34:  ADD.W           R1, R9, #0x1240; src
CCD38:  LSLS            R2, R5, #2; n
CCD3A:  BLX             j_memcpy
CCD3E:  LDR             R0, [R6,#0x6C]
CCD40:  ADD             R8, R4
CCD42:  LDR             R0, [R0]
CCD44:  CBZ             R0, loc_CCD62
CCD46:  LDR.W           R1, [R6,#0x94]
CCD4A:  ADD.W           R0, R1, R0,LSL#2
CCD4E:  MOVW            R1, #0x1270
CCD52:  LDR             R0, [R0,R1]
CCD54:  CBZ             R0, loc_CCD62
CCD56:  LDR.W           R1, [R6,#0x94]
CCD5A:  MOVW            R0, #0x11BC
CCD5E:  ADDS            R2, R1, R0
CCD60:  B               loc_CCD90
CCD62:  LDR.W           R3, [R6,#0x94]
CCD66:  MOV.W           R1, #0x1C00
CCD6A:  MOVW            R0, #0x17D0
CCD6E:  MOVW            R2, #0x11BC
CCD72:  LDRB            R1, [R3,R1]
CCD74:  LDR             R0, [R3,R0]
CCD76:  STRB            R1, [R3,R2]
CCD78:  ADD             R2, R3
CCD7A:  LDRB.W          R1, [R11]
CCD7E:  ADD             R0, R1
CCD80:  SXTB            R0, R0
CCD82:  CMP             R0, #0x3F ; '?'
CCD84:  IT GE
CCD86:  MOVGE           R0, #0x3F ; '?'
CCD88:  STRB.W          R0, [R11]
CCD8C:  LDR.W           R5, [R8]
CCD90:  SUB             SP, SP, #8
CCD92:  LDR.W           R0, [R6,#0x84]
CCD96:  ADD.W           R4, R6, #0x18
CCD9A:  STR             R5, [SP,#0x2550+var_2550]
CCD9C:  ADD.W           R5, R4, #0x1240
CCDA0:  CMP             R0, #2
CCDA2:  MOV.W           R3, #0
CCDA6:  IT EQ
CCDA8:  MOVEQ           R3, #1
CCDAA:  MOV             R0, R5
CCDAC:  MOV             R1, R11
CCDAE:  BLX             j_silk_gains_dequant
CCDB2:  ADD             SP, SP, #8
CCDB4:  LDR.W           R1, [R6,#0x94]
CCDB8:  MOVW            R0, #0x1214
CCDBC:  LDR             R0, [R1,R0]
CCDBE:  CMP             R0, #1
CCDC0:  BGT             loc_CCDD2
CCDC2:  LDR.W           R1, [R6,#0x94]
CCDC6:  MOV.W           R0, #0x1240
CCDCA:  LDR             R0, [R1,R0]
CCDCC:  CMP             R0, #1
CCDCE:  BLT.W           loc_CD5D8
CCDD2:  ADD.W           R10, R6, #0x1000
CCDD6:  LDR             R2, [R6,#0x6C]
CCDD8:  LDR.W           R0, [R10,#0x2D0]
CCDDC:  ADD.W           R10, R6, #0x1000
CCDE0:  LDR             R2, [R2]
CCDE2:  LDR.W           R1, [R10,#0x3D4]
CCDE6:  SUB             SP, SP, #0x30 ; '0'
CCDE8:  ADD.W           R3, R5, #0x7C ; '|'
CCDEC:  STRD.W          R3, R1, [SP,#0x2578+var_2558]
CCDF0:  STR             R0, [SP,#0x2578+var_2550]
CCDF2:  ADD.W           R2, R2, R2,LSL#2
CCDF6:  LDR.W           R0, [R6,#0x94]
CCDFA:  ADD.W           R1, R5, #0x10
CCDFE:  ADD.W           LR, R5, #0x15C
CCE02:  ADD.W           R9, R5, #0x16C
CCE06:  ADD.W           R2, R0, R2,LSL#6
CCE0A:  ADD.W           R4, R5, #0x8C
CCE0E:  ADD.W           R2, R2, #0x1840
CCE12:  STRD.W          R2, R1, [SP,#0x2578+var_2578]
CCE16:  ADD.W           R3, R5, #0x50 ; 'P'
CCE1A:  ADD             R1, SP, #0x2578+var_2570
CCE1C:  STM.W           R1, {R3,R4,R9,LR}
CCE20:  ADD.W           R12, R5, #0x14C
CCE24:  ADD.W           R1, R6, #0x1420
CCE28:  STRD.W          R12, R5, [SP,#0x2578+var_2560]
CCE2C:  MOV             R2, R11
CCE2E:  LDR             R3, [R6,#0x70]
CCE30:  BLX             j_silk_NSQ_del_dec_c
CCE34:  ADD             SP, SP, #0x30 ; '0'
CCE36:  LDR.W           R0, [R8]
CCE3A:  ADD.W           R4, R6, #0x18
CCE3E:  ADD.W           R1, R6, #0x158; src
CCE42:  LSLS            R2, R0, #2; n
CCE44:  ADD.W           R0, R4, #0x1240; dest
CCE48:  BLX             j_memcpy
CCE4C:  LDR.W           R10, [R6,#0x94]
CCE50:  MOVW            R8, #0x11E4
CCE54:  LDR.W           R0, [R6,#0xA4]
CCE58:  LDR.W           R1, [R10,R8]
CCE5C:  BLX             j_silk_gains_ID
CCE60:  LDR.W           R9, [R6,#0x98]
CCE64:  MOV             R11, R0
CCE66:  ADD.W           R12, R6, #0x100
CCE6A:  MOV             R1, R9
CCE6C:  LDM.W           R1!, {R0,R2-R5,LR}
CCE70:  STM.W           R12!, {R0,R2-R5,LR}
CCE74:  LDM.W           R1, {R0,R2-R5,LR}
CCE78:  ADD.W           R1, R10, #0x94; src
CCE7C:  STM.W           R12, {R0,R2-R5,LR}
CCE80:  ADD.W           R0, R6, #0x1420; dest
CCE84:  MOV.W           R2, #0x1100; n
CCE88:  STR.W           R1, [R6,#0x80]
CCE8C:  BLX             j_memcpy
CCE90:  LDR.W           R0, [R6,#0x84]
CCE94:  MOV             R3, R11
CCE96:  ADD.W           R4, R6, #0x18
CCE9A:  MOV.W           R2, #0xFFFFFFFF
CCE9E:  CMP             R0, #2
CCEA0:  MOV.W           R0, #0
CCEA4:  IT EQ
CCEA6:  MOVEQ           R0, #1
CCEA8:  ADD.W           LR, R4, #0x1240
CCEAC:  STR.W           R0, [R6,#0x88]
CCEB0:  MOVW            R0, #0x129E
CCEB4:  ADD             R0, R10
CCEB6:  STR             R0, [R6,#0x68]
CCEB8:  MOVW            R0, #0x129D
CCEBC:  ADD             R0, R10
CCEBE:  STR             R0, [R6,#0x64]
CCEC0:  MOVW            R0, #0x12A4
CCEC4:  ADD.W           R11, R10, R0
CCEC8:  MOVW            R0, #0x1214
CCECC:  ADD             R0, R10
CCECE:  STR             R0, [R6,#0x4C]
CCED0:  MOVW            R0, #0x11EC
CCED4:  ADD             R0, R10
CCED6:  STR             R0, [R6,#0x10]
CCED8:  MOVW            R0, #0x1688
CCEDC:  ADD.W           R1, R10, R0
CCEE0:  STR             R1, [R6,#0x5C]
CCEE2:  LDR.W           R0, [R10,R0]
CCEE6:  STR             R0, [R6,#0x58]
CCEE8:  MOVW            R0, #0x168C
CCEEC:  LDRH.W          R1, [R10,R0]
CCEF0:  ADD             R0, R10
CCEF2:  STR             R0, [R6,#0x50]
CCEF4:  ADD.W           R0, R10, R8
CCEF8:  STR.W           R0, [R6,#0xC0]
CCEFC:  ADD.W           R0, LR, #0x7C ; '|'
CCF00:  STR             R0, [R6,#0x48]
CCF02:  ADD.W           R0, LR, #0x14C
CCF06:  STR             R0, [R6,#0x44]
CCF08:  ADD.W           R0, LR, #0x15C
CCF0C:  STR             R0, [R6,#0x40]
CCF0E:  ADD.W           R0, LR, #0x16C
CCF12:  STR             R0, [R6,#0x3C]
CCF14:  ADD.W           R0, LR, #0x8C
CCF18:  STR             R0, [R6,#0x38]
CCF1A:  ADD.W           R0, LR, #0x50 ; 'P'
CCF1E:  STR             R1, [R6,#0x54]
CCF20:  STR             R0, [R6,#0x34]
CCF22:  ADD.W           R0, LR, #0x10
CCF26:  LDR             R1, [R7,#arg_0]
CCF28:  STR             R0, [R6,#0x30]
CCF2A:  ADD.W           R0, R9, #0x1C
CCF2E:  STR             R0, [R6,#0x7C]
CCF30:  SUBS            R0, R1, #5
CCF32:  STR             R0, [R6,#0x74]
CCF34:  MOV.W           R9, #0x100
CCF38:  LDR             R0, [R6,#0x14]
CCF3A:  LDRB            R0, [R0]
CCF3C:  STR             R0, [R6,#0xC]
CCF3E:  ADD.W           R0, R10, #0x1240
CCF42:  STR             R0, [R6,#8]
CCF44:  ADD.W           R0, R10, #0x1C00
CCF48:  STR.W           R0, [R6,#0xA0]
CCF4C:  SUB.W           R0, SP, #0x500
CCF50:  STR.W           R2, [R6,#0xB8]
CCF54:  STR             R0, [R6,#0x2C]
CCF56:  MOV             SP, R0
CCF58:  ADD.W           R0, R6, #0xE8
CCF5C:  STR             R0, [R6]
CCF5E:  ADD.W           R0, R6, #0xD0
CCF62:  STR             R0, [R6,#4]
CCF64:  MOVS            R0, #0
CCF66:  MOVW            R8, #0xFFFF
CCF6A:  STR.W           R0, [R6,#0xB0]
CCF6E:  MOVS            R0, #0
CCF70:  STR.W           R0, [R6,#0x9C]
CCF74:  MOVS            R0, #0
CCF76:  STR.W           R0, [R6,#0x90]
CCF7A:  MOVS            R0, #0
CCF7C:  STR.W           R0, [R6,#0xBC]
CCF80:  MOV.W           R0, #0xFFFFFFFF
CCF84:  STR.W           R0, [R6,#0x8C]
CCF88:  MOVT            R8, #0x7F
CCF8C:  STR             R0, [R6,#0x78]
CCF8E:  MOVS            R0, #0
CCF90:  STR             R0, [R6,#0x28]
CCF92:  MOVS            R0, #0
CCF94:  MOVS            R4, #0
CCF96:  STR.W           R0, [R6,#0xA8]
CCF9A:  MOVS            R0, #0
CCF9C:  STR.W           R0, [R6,#0xC8]
CCFA0:  B               loc_CCFEA
CCFA2:  ADD.W           R5, R6, #0x1000
CCFA6:  LDR.W           R2, [R6,#0xA0]
CCFAA:  LDRB.W          R1, [R5,#0x418]
CCFAE:  STRB            R1, [R2]
CCFB0:  SUB             SP, SP, #8
CCFB2:  LDR.W           R3, [R6,#0x88]
CCFB6:  MOV             R1, LR
CCFB8:  STR.W           R12, [SP,#0x2550+var_2550]
CCFBC:  MOV             R4, R0
CCFBE:  BLX             j_silk_gains_quant
CCFC2:  ADD             SP, SP, #8
CCFC4:  LDR.W           R0, [R6,#0xC0]
CCFC8:  LDR             R1, [R0]
CCFCA:  MOV             R0, R4
CCFCC:  BLX             j_silk_gains_ID
CCFD0:  MOV             R3, R0
CCFD2:  LDR.W           R0, [R6,#0xC8]
CCFD6:  ADD.W           R5, R6, #0x18
CCFDA:  LDR             R1, [R7,#arg_0]
CCFDC:  ADDS            R0, #1
CCFDE:  ADD.W           LR, R5, #0x1240
CCFE2:  STR.W           R0, [R6,#0xC8]
CCFE6:  LDR.W           R4, [R6,#0xC4]
CCFEA:  LDR.W           R0, [R6,#0xB8]
CCFEE:  LDR.W           R2, [R6,#0xB4]
CCFF2:  CMP             R3, R0
CCFF4:  BNE             loc_CCFFE
CCFF6:  LDR.W           R0, [R6,#0xB0]
CCFFA:  MOV             R10, R0
CCFFC:  B               loc_CD254
CCFFE:  LDR.W           R0, [R6,#0x8C]
CD002:  CMP             R3, R0
CD004:  BNE             loc_CD00E
CD006:  LDR.W           R0, [R6,#0x9C]
CD00A:  MOV             R10, R0
CD00C:  B               loc_CD254
CD00E:  LDR.W           R0, [R6,#0xC8]
CD012:  STR.W           R3, [R6,#0xAC]
CD016:  CMP             R0, #1
CD018:  BLT             loc_CD060
CD01A:  ADD.W           R12, R6, #0x100
CD01E:  LDR.W           R1, [R6,#0x98]
CD022:  MOV             R10, R4
CD024:  LDM.W           R12!, {R0,R2-R5,LR}
CD028:  STM.W           R1!, {R0,R2-R5,LR}
CD02C:  LDM.W           R12, {R0,R2-R5,LR}
CD030:  STM.W           R1, {R0,R2-R5,LR}
CD034:  ADD.W           R1, R6, #0x1420; src
CD038:  MOV.W           R2, #0x1100; n
CD03C:  LDR.W           R0, [R6,#0x80]; dest
CD040:  MOV             R4, R10
CD042:  BLX             j_memcpy
CD046:  LDR             R0, [R6,#0x14]
CD048:  ADD.W           R3, R6, #0x18
CD04C:  LDR             R1, [R6,#0xC]
CD04E:  ADD.W           LR, R3, #0x1240
CD052:  STRB            R1, [R0]
CD054:  LDRD.W          R1, R0, [R6,#0x50]
CD058:  STRH            R0, [R1]
CD05A:  LDRD.W          R1, R0, [R6,#0x58]
CD05E:  STR             R1, [R0]
CD060:  LDR             R0, [R6,#0x4C]
CD062:  LDR             R0, [R0]
CD064:  CMP             R0, #1
CD066:  BGT             loc_CD072
CD068:  LDR             R0, [R6,#8]
CD06A:  LDR             R0, [R0]
CD06C:  CMP             R0, #1
CD06E:  BLT.W           loc_CD516
CD072:  ADD.W           R5, R6, #0x1000
CD076:  LDR.W           R0, [R5,#0x2D0]
CD07A:  ADD.W           R5, R6, #0x1000
CD07E:  LDR.W           R1, [R5,#0x3D4]
CD082:  SUB             SP, SP, #0x30 ; '0'
CD084:  LDR             R2, [R6,#0x48]
CD086:  STRD.W          R2, R1, [SP,#0x2578+var_2558]
CD08A:  STR             R0, [SP,#0x2578+var_2550]
CD08C:  LDR             R0, [R6,#0x30]
CD08E:  STR.W           R11, [SP,#0x2578+var_2578]
CD092:  STR             R0, [SP,#0x2578+var_2574]
CD094:  LDR             R0, [R6,#0x34]
CD096:  STR             R0, [SP,#0x2578+var_2570]
CD098:  LDR             R0, [R6,#0x38]
CD09A:  STR             R0, [SP,#0x2578+var_256C]
CD09C:  LDR             R0, [R6,#0x3C]
CD09E:  STR             R0, [SP,#0x2578+var_2568]
CD0A0:  LDR             R0, [R6,#0x40]
CD0A2:  STR             R0, [SP,#0x2578+var_2564]
CD0A4:  LDR             R0, [R6,#0x44]
CD0A6:  STRD.W          R0, LR, [SP,#0x2578+var_2560]
CD0AA:  LDR.W           R0, [R6,#0x94]
CD0AE:  LDR.W           R1, [R6,#0x80]
CD0B2:  LDR.W           R2, [R6,#0xA4]
CD0B6:  LDR             R3, [R6,#0x70]
CD0B8:  BLX             j_silk_NSQ_del_dec_c
CD0BC:  ADD             SP, SP, #0x30 ; '0'
CD0BE:  CMP             R4, #0
CD0C0:  STR.W           R4, [R6,#0xC4]
CD0C4:  ITT EQ
CD0C6:  LDREQ.W         R0, [R6,#0xC8]
CD0CA:  CMPEQ           R0, #6
CD0CC:  BNE             loc_CD0F4
CD0CE:  LDR.W           R10, [R6,#0x98]
CD0D2:  ADD.W           R12, R6, #0xE8
CD0D6:  MOV             R1, R10
CD0D8:  LDM.W           R1, {R0,R2-R5,LR}
CD0DC:  ADD.W           R1, R6, #0xD0
CD0E0:  STM.W           R12, {R0,R2-R5,LR}
CD0E4:  LDR.W           R12, [R6,#0x7C]
CD0E8:  LDR.W           R0, [R10,#0x18]
CD0EC:  STR             R0, [R6,#0x78]
CD0EE:  LDM.W           R12, {R0,R2-R5}
CD0F2:  STM             R1!, {R0,R2-R5}
CD0F4:  LDR             R0, [R6,#0x6C]
CD0F6:  LDR             R2, [R0]
CD0F8:  SUB             SP, SP, #8
CD0FA:  LDR.W           R0, [R6,#0x84]
CD0FE:  MOVS            R3, #0
CD100:  STR             R0, [SP,#0x2550+var_2550]
CD102:  LDRD.W          R0, R4, [R6,#0x94]
CD106:  MOV             R1, R4
CD108:  BLX             j_silk_encode_indices
CD10C:  ADD             SP, SP, #8
CD10E:  LDR             R0, [R6,#0x68]
CD110:  LDRSB.W         R2, [R0]
CD114:  LDR             R0, [R6,#0x64]
CD116:  LDRSB.W         R1, [R0]
CD11A:  LDR.W           R0, [R6,#0xB4]
CD11E:  LDR             R0, [R0]
CD120:  SUB             SP, SP, #8
CD122:  STR             R0, [SP,#0x2550+var_2550]
CD124:  MOV             R0, R4
CD126:  MOV             R3, R11
CD128:  BLX             j_silk_encode_pulses
CD12C:  ADD             SP, SP, #8
CD12E:  LDR             R1, [R4,#0x1C]
CD130:  LDR             R0, [R4,#0x14]
CD132:  CLZ.W           R1, R1
CD136:  ADD             R0, R1
CD138:  LDR             R1, [R7,#arg_0]
CD13A:  SUB.W           R10, R0, #0x20 ; ' '
CD13E:  CMP             R10, R1
CD140:  BLE             loc_CD228
CD142:  LDR.W           R0, [R6,#0xC4]
CD146:  LDR.W           R3, [R6,#0xAC]
CD14A:  CMP             R0, #0
CD14C:  ADD.W           R0, R6, #0x18
CD150:  ADD.W           LR, R0, #0x1240
CD154:  ITT EQ
CD156:  LDREQ.W         R0, [R6,#0xC8]
CD15A:  CMPEQ           R0, #6
CD15C:  BNE             loc_CD234
CD15E:  LDR.W           R10, [R6,#0x98]
CD162:  ADD.W           R12, R6, #0xE8
CD166:  LDM.W           R12, {R0,R2-R5,LR}
CD16A:  MOV             R1, R10
CD16C:  STM.W           R1, {R0,R2-R5,LR}
CD170:  ADD.W           R1, R6, #0xD0
CD174:  ADD.W           LR, R6, #0x1000
CD178:  LDR             R0, [R6,#0x78]
CD17A:  STR.W           R0, [R10,#0x18]
CD17E:  LDR.W           R12, [R6,#0x7C]
CD182:  LDM.W           R1, {R0,R2-R5}
CD186:  STM.W           R12, {R0,R2-R5}
CD18A:  MOVS            R4, #4
CD18C:  LDR.W           R1, [R6,#0xA0]
CD190:  LDRB.W          R0, [LR,#0x418]
CD194:  STRB            R0, [R1]
CD196:  LDR.W           R5, [R6,#0xC0]
CD19A:  LDR.W           R3, [R6,#0xA4]
CD19E:  LDR             R1, [R5]
CD1A0:  CMP             R1, #1
CD1A2:  BLT             loc_CD1B0
CD1A4:  MOVS            R1, #0
CD1A6:  STRB            R4, [R3,R1]
CD1A8:  ADDS            R1, #1
CD1AA:  LDR             R2, [R5]
CD1AC:  CMP             R1, R2
CD1AE:  BLT             loc_CD1A6
CD1B0:  LDR.W           R1, [R6,#0x84]
CD1B4:  MOVS            R5, #0
CD1B6:  CMP             R1, #2
CD1B8:  IT NE
CD1BA:  STRBNE          R0, [R3]
CD1BC:  LDRD.W          R1, R0, [R6,#0x50]
CD1C0:  STRH            R0, [R1]
CD1C2:  LDRD.W          R1, R0, [R6,#0x58]
CD1C6:  STR             R1, [R0]
CD1C8:  LDR.W           R2, [R6,#0xB4]
CD1CC:  LDR             R0, [R2]
CD1CE:  CMP             R0, #1
CD1D0:  BLT             loc_CD1E0
CD1D2:  MOVS            R0, #0
CD1D4:  STRB.W          R5, [R11,R0]
CD1D8:  ADDS            R0, #1
CD1DA:  LDR             R1, [R2]
CD1DC:  CMP             R0, R1
CD1DE:  BLT             loc_CD1D4
CD1E0:  LDR             R0, [R6,#0x6C]
CD1E2:  MOV             R5, R2
CD1E4:  LDR             R2, [R0]
CD1E6:  SUB             SP, SP, #8
CD1E8:  LDR.W           R0, [R6,#0x84]
CD1EC:  MOVS            R3, #0
CD1EE:  STR             R0, [SP,#0x2550+var_2550]
CD1F0:  LDRD.W          R0, R4, [R6,#0x94]
CD1F4:  MOV             R1, R4
CD1F6:  BLX             j_silk_encode_indices
CD1FA:  ADD             SP, SP, #8
CD1FC:  LDR             R0, [R6,#0x68]
CD1FE:  LDRSB.W         R2, [R0]
CD202:  LDR             R0, [R6,#0x64]
CD204:  LDRSB.W         R1, [R0]
CD208:  LDR             R0, [R5]
CD20A:  SUB             SP, SP, #8
CD20C:  STR             R0, [SP,#0x2550+var_2550]
CD20E:  MOV             R0, R4
CD210:  MOV             R3, R11
CD212:  BLX             j_silk_encode_pulses
CD216:  ADD             SP, SP, #8
CD218:  LDR             R1, [R4,#0x1C]
CD21A:  LDR             R0, [R4,#0x14]
CD21C:  CLZ.W           R1, R1
CD220:  ADD             R0, R1
CD222:  LDR             R1, [R7,#arg_0]
CD224:  SUB.W           R10, R0, #0x20 ; ' '
CD228:  ADD.W           R0, R6, #0x18
CD22C:  LDR.W           R3, [R6,#0xAC]
CD230:  ADD.W           LR, R0, #0x1240
CD234:  LDR             R0, [R7,#arg_4]
CD236:  LDR.W           R2, [R6,#0xC8]
CD23A:  ORRS            R0, R2
CD23C:  BNE             loc_CD24C
CD23E:  LDR.W           R2, [R6,#0xB4]
CD242:  CMP             R10, R1
CD244:  LDR.W           R4, [R6,#0xC4]
CD248:  BGT             loc_CD254
CD24A:  B               loc_CCB8E
CD24C:  LDR.W           R2, [R6,#0xB4]
CD250:  LDR.W           R4, [R6,#0xC4]
CD254:  LDR.W           R0, [R6,#0xC8]
CD258:  CMP             R0, #6
CD25A:  BEQ.W           loc_CD562
CD25E:  CMP             R10, R1
CD260:  BLE             loc_CD290
CD262:  CBNZ            R4, loc_CD2B0
CD264:  LDR.W           R0, [R6,#0xC8]
CD268:  CMP             R0, #2
CD26A:  BLT             loc_CD2B0
CD26C:  ADD.W           R4, R6, #0x1000
CD270:  LDR.W           R2, [R6,#0xBC]
CD274:  MOV.W           R3, #0xFFFFFFFF
CD278:  LDR.W           R0, [R4,#0x3D4]
CD27C:  ADD.W           R4, R6, #0x1000
CD280:  ADD.W           R0, R0, R0,ASR#1
CD284:  STR.W           R0, [R4,#0x3D4]
CD288:  MOVS            R0, #0
CD28A:  STR.W           R0, [R6,#0xA8]
CD28E:  B               loc_CD2D0
CD290:  LDR             R0, [R6,#0x74]
CD292:  CMP             R10, R0
CD294:  BGE.W           loc_CCB8E
CD298:  SXTH.W          R0, R9
CD29C:  STR.W           R0, [R6,#0x90]
CD2A0:  LDR.W           R0, [R6,#0xB8]
CD2A4:  CMP             R3, R0
CD2A6:  BNE             loc_CD3A2
CD2A8:  MOVS            R4, #1
CD2AA:  STR.W           R3, [R6,#0xB8]
CD2AE:  B               loc_CD40C
CD2B0:  MOVS            R0, #1
CD2B2:  SXTH.W          R2, R9
CD2B6:  STR.W           R0, [R6,#0xA8]
CD2BA:  CMP             R4, #0
CD2BC:  MOV             R0, R10
CD2BE:  STR.W           R0, [R6,#0x9C]
CD2C2:  BEQ             loc_CD2D0
CD2C4:  MOV             R0, R10
CD2C6:  STR.W           R3, [R6,#0x8C]
CD2CA:  STR.W           R0, [R6,#0x9C]
CD2CE:  B               loc_CD416
CD2D0:  LDR.W           R0, [R6,#0xC0]
CD2D4:  LDR.W           R12, [R0]
CD2D8:  CMP.W           R12, #1
CD2DC:  BLT.W           loc_CD50E
CD2E0:  LDR             R0, [R6,#0x10]
CD2E2:  STR.W           R2, [R6,#0xBC]
CD2E6:  MOVS            R2, #0
CD2E8:  STR.W           R3, [R6,#0xAC]
CD2EC:  LDR.W           LR, [R0]
CD2F0:  LDR.W           R0, [R6,#0xC8]
CD2F4:  CBNZ            R0, loc_CD342
CD2F6:  ADDS            R3, R2, #1
CD2F8:  MUL.W           R4, LR, R2
CD2FC:  MOVS            R5, #0
CD2FE:  MUL.W           R0, LR, R3
CD302:  CMP             R4, R0
CD304:  BGE             loc_CD318
CD306:  LDRSB.W         R1, [R11,R4]
CD30A:  ADDS            R4, #1
CD30C:  CMP             R1, #0
CD30E:  IT MI
CD310:  NEGMI           R1, R1
CD312:  ADD             R5, R1
CD314:  CMP             R4, R0
CD316:  BLT             loc_CD306
CD318:  ADD.W           R0, R6, #0x130
CD31C:  CMP             R3, R12
CD31E:  STR.W           R5, [R0,R2,LSL#2]
CD322:  ADD.W           R0, R6, #0x140
CD326:  STRH.W          R9, [R0,R2,LSL#1]
CD32A:  MOV             R2, R3
CD32C:  BLT             loc_CD2F6
CD32E:  B               loc_CD38C
CD330:  ADD.W           R0, R6, #0x130
CD334:  STR.W           R5, [R0,R2,LSL#2]
CD338:  ADD.W           R0, R6, #0x140
CD33C:  STRH.W          R9, [R0,R2,LSL#1]
CD340:  B               loc_CD386
CD342:  ADDS            R3, R2, #1
CD344:  MUL.W           R4, LR, R2
CD348:  MOVS            R5, #0
CD34A:  MUL.W           R0, LR, R3
CD34E:  CMP             R4, R0
CD350:  BGE             loc_CD364
CD352:  LDRSB.W         R1, [R11,R4]
CD356:  ADDS            R4, #1
CD358:  CMP             R1, #0
CD35A:  IT MI
CD35C:  NEGMI           R1, R1
CD35E:  ADD             R5, R1
CD360:  CMP             R4, R0
CD362:  BLT             loc_CD352
CD364:  ADD.W           R0, R6, #0x130
CD368:  LDR.W           R0, [R0,R2,LSL#2]
CD36C:  CMP             R5, R0
CD36E:  BGE             loc_CD37C
CD370:  ADD.W           R0, R6, #0x148
CD374:  LDR.W           R0, [R0,R2,LSL#2]
CD378:  CMP             R0, #0
CD37A:  BEQ             loc_CD330
CD37C:  ADD.W           R0, R6, #0x148
CD380:  MOVS            R1, #1
CD382:  STR.W           R1, [R0,R2,LSL#2]
CD386:  CMP             R3, R12
CD388:  MOV             R2, R3
CD38A:  BLT             loc_CD342
CD38C:  LDR.W           R0, [R6,#0xAC]
CD390:  MOVS            R4, #0
CD392:  STR.W           R0, [R6,#0x8C]
CD396:  ADD.W           R0, R6, #0x18
CD39A:  LDR             R1, [R7,#arg_0]
CD39C:  ADD.W           LR, R0, #0x1240
CD3A0:  B               loc_CD412
CD3A2:  STR.W           R10, [R6,#0xC4]
CD3A6:  ADD.W           R12, R6, #0xE8
CD3AA:  LDR.W           R10, [R6,#0x98]
CD3AE:  STR.W           R3, [R6,#0xAC]
CD3B2:  MOV             R1, R10
CD3B4:  LDM.W           R1, {R0,R2-R5,LR}
CD3B8:  ADD.W           R1, R6, #0xD0
CD3BC:  STM.W           R12, {R0,R2-R5,LR}
CD3C0:  LDR.W           R12, [R6,#0x7C]
CD3C4:  LDR.W           R2, [R10,#0x18]; n
CD3C8:  LDM.W           R12, {R0,R3-R5,LR}
CD3CC:  STM.W           R1, {R0,R3-R5,LR}
CD3D0:  LDR.W           R1, [R10]; src
CD3D4:  LDR             R0, [R6,#0x2C]; dest
CD3D6:  LDR.W           R10, [R6,#0xC4]
CD3DA:  STR             R2, [R6,#0x78]
CD3DC:  BLX             j_memcpy
CD3E0:  LDR.W           R1, [R6,#0x80]; src
CD3E4:  ADD.W           R0, R6, #0x158; dest
CD3E8:  MOV.W           R2, #0x1100; n
CD3EC:  BLX             j_memcpy
CD3F0:  LDR.W           R0, [R6,#0xA0]
CD3F4:  ADD.W           R3, R6, #0x18
CD3F8:  ADD.W           LR, R3, #0x1240
CD3FC:  LDR             R1, [R7,#arg_0]
CD3FE:  MOVS            R4, #1
CD400:  LDRB            R0, [R0]
CD402:  STR             R0, [R6,#0x28]
CD404:  LDR.W           R0, [R6,#0xAC]
CD408:  STR.W           R0, [R6,#0xB8]
CD40C:  MOV             R0, R10
CD40E:  STR.W           R0, [R6,#0xB0]
CD412:  LDR.W           R2, [R6,#0xBC]
CD416:  LDR.W           R0, [R6,#0xA8]
CD41A:  STR.W           R2, [R6,#0xBC]
CD41E:  TST             R4, R0
CD420:  STR.W           R4, [R6,#0xC4]
CD424:  BEQ             loc_CD468
CD426:  LDR.W           R5, [R6,#0x90]
CD42A:  MOV             R10, R2
CD42C:  LDR.W           R3, [R6,#0xB0]
CD430:  SUBS            R4, R2, R5
CD432:  SUBS            R0, R1, R3
CD434:  LDR.W           R1, [R6,#0x9C]
CD438:  MULS            R0, R4
CD43A:  SUBS            R1, R1, R3
CD43C:  BLX             sub_108848
CD440:  ADD             R0, R5
CD442:  ADD.W           R9, R5, R4,ASR#2
CD446:  SXTH            R1, R0
CD448:  CMP             R1, R9
CD44A:  BGT             loc_CD45A
CD44C:  ASRS            R2, R4, #2
CD44E:  SUB.W           R2, R10, R2
CD452:  CMP             R1, R2
CD454:  IT LT
CD456:  MOVLT           R0, R2
CD458:  MOV             R9, R0
CD45A:  ADD.W           R1, R6, #0x18
CD45E:  LDR.W           R0, [R6,#0xA4]
CD462:  ADD.W           LR, R1, #0x1240
CD466:  B               loc_CD4B2
CD468:  CMP             R10, R1
CD46A:  BLE             loc_CD480
CD46C:  SXTH.W          R0, R9
CD470:  CMP.W           R0, #0x4000
CD474:  ITE LT
CD476:  MOVLT.W         R9, R0,LSL#1
CD47A:  MOVWGE          R9, #0x7FFF
CD47E:  B               loc_CD4AE
CD480:  SUB.W           R0, R10, R1
CD484:  LDR.W           R1, [R6,#0xB4]
CD488:  LSLS            R0, R0, #7
CD48A:  LDR             R1, [R1]
CD48C:  BLX             sub_108848
CD490:  ADD.W           R0, R0, #0x800
CD494:  BLX             j_silk_log2lin
CD498:  UXTH            R1, R0
CD49A:  SXTH.W          R2, R9
CD49E:  MULS            R1, R2
CD4A0:  ADD.W           R3, R6, #0x18
CD4A4:  ADD.W           LR, R3, #0x1240
CD4A8:  LSRS            R1, R1, #0x10
CD4AA:  SMLATB.W        R9, R0, R9, R1
CD4AE:  LDR.W           R0, [R6,#0xA4]
CD4B2:  LDR.W           R1, [R6,#0xC0]
CD4B6:  LDR.W           R12, [R1]
CD4BA:  CMP.W           R12, #1
CD4BE:  BLT.W           loc_CCFA2
CD4C2:  MOVS            R1, #0
CD4C4:  ADD.W           R2, R6, #0x148
CD4C8:  ADD.W           R3, LR, R1,LSL#2
CD4CC:  LDR.W           R2, [R2,R1,LSL#2]
CD4D0:  CMP             R2, #0
CD4D2:  MOV             R2, R9
CD4D4:  ITT NE
CD4D6:  ADDNE.W         R2, R6, #0x140
CD4DA:  LDRHNE.W        R2, [R2,R1,LSL#1]
CD4DE:  LDR.W           R3, [R3,#0x1B0]
CD4E2:  UXTH            R5, R3
CD4E4:  SXTH            R4, R2
CD4E6:  MULS            R5, R4
CD4E8:  ASRS            R5, R5, #0x10
CD4EA:  SMLATB.W        R2, R3, R2, R5
CD4EE:  MOVS            R3, #0xFF800000
CD4F4:  CMP             R2, R3
CD4F6:  IT LE
CD4F8:  MOVLE           R2, R3
CD4FA:  CMP             R2, R8
CD4FC:  IT GE
CD4FE:  MOVGE           R2, R8
CD500:  LSLS            R2, R2, #8
CD502:  STR.W           R2, [LR,R1,LSL#2]
CD506:  ADDS            R1, #1
CD508:  CMP             R1, R12
CD50A:  BLT             loc_CD4C4
CD50C:  B               loc_CCFA2
CD50E:  MOVS            R4, #0
CD510:  STR.W           R3, [R6,#0x8C]
CD514:  B               loc_CD416
CD516:  ADD.W           R5, R6, #0x1000
CD51A:  LDR.W           R0, [R5,#0x2D0]
CD51E:  ADD.W           R5, R6, #0x1000
CD522:  LDR.W           R1, [R5,#0x3D4]
CD526:  SUB             SP, SP, #0x30 ; '0'
CD528:  LDR             R2, [R6,#0x48]
CD52A:  STRD.W          R2, R1, [SP,#0x2578+var_2558]
CD52E:  STR             R0, [SP,#0x2578+var_2550]
CD530:  LDR             R0, [R6,#0x30]
CD532:  STR.W           R11, [SP,#0x2578+var_2578]
CD536:  STR             R0, [SP,#0x2578+var_2574]
CD538:  LDR             R0, [R6,#0x34]
CD53A:  STR             R0, [SP,#0x2578+var_2570]
CD53C:  LDR             R0, [R6,#0x38]
CD53E:  STR             R0, [SP,#0x2578+var_256C]
CD540:  LDR             R0, [R6,#0x3C]
CD542:  STR             R0, [SP,#0x2578+var_2568]
CD544:  LDR             R0, [R6,#0x40]
CD546:  STR             R0, [SP,#0x2578+var_2564]
CD548:  LDR             R0, [R6,#0x44]
CD54A:  STRD.W          R0, LR, [SP,#0x2578+var_2560]
CD54E:  LDR.W           R0, [R6,#0x94]
CD552:  LDR.W           R1, [R6,#0x80]
CD556:  LDR.W           R2, [R6,#0xA4]
CD55A:  LDR             R3, [R6,#0x70]
CD55C:  BLX             j_silk_NSQ_c
CD560:  B               loc_CD0BC
CD562:  CMP             R10, R1
CD564:  MOV.W           R1, #0
CD568:  IT GT
CD56A:  MOVGT           R1, #1
CD56C:  MOV             R5, R3
CD56E:  LDR.W           R3, [R6,#0xB8]
CD572:  MOVS            R0, #0
CD574:  CMP             R5, R3
CD576:  IT EQ
CD578:  MOVEQ           R0, #1
CD57A:  CMP             R4, #0
CD57C:  BEQ.W           loc_CCB8E
CD580:  ORRS            R0, R1
CD582:  CMP             R0, #1
CD584:  BNE.W           loc_CCB8E
CD588:  LDR.W           LR, [R6,#0x98]
CD58C:  LDR.W           R8, [R6]
CD590:  MOV             R0, LR
CD592:  LDM.W           R8, {R1-R5,R12}
CD596:  STM.W           R0, {R1-R5,R12}
CD59A:  LDR             R2, [R6,#0x78]; n
CD59C:  STR.W           R2, [LR,#0x18]
CD5A0:  LDR.W           R12, [R6,#4]
CD5A4:  LDR             R4, [R6,#0x7C]
CD5A6:  LDM.W           R12, {R0,R1,R3,R5,R8}
CD5AA:  STM.W           R4, {R0,R1,R3,R5,R8}
CD5AE:  LDR.W           R0, [LR]; dest
CD5B2:  LDR             R1, [R6,#0x2C]; src
CD5B4:  BLX             j_memcpy
CD5B8:  LDR.W           R0, [R6,#0x80]; dest
CD5BC:  ADD.W           R1, R6, #0x158; src
CD5C0:  MOV.W           R2, #0x1100; n
CD5C4:  BLX             j_memcpy
CD5C8:  LDR.W           R2, [R6,#0xB4]
CD5CC:  LDR.W           R0, [R6,#0xA0]
CD5D0:  LDR             R1, [R6,#0x28]
CD5D2:  STRB            R1, [R0]
CD5D4:  B.W             loc_CCB8E
CD5D8:  ADD.W           R10, R6, #0x1000
CD5DC:  LDR             R2, [R6,#0x6C]
CD5DE:  LDR.W           R0, [R10,#0x2D0]
CD5E2:  ADD.W           R10, R6, #0x1000
CD5E6:  LDR             R2, [R2]
CD5E8:  LDR.W           R1, [R10,#0x3D4]
CD5EC:  SUB             SP, SP, #0x30 ; '0'
CD5EE:  ADD.W           R3, R5, #0x7C ; '|'
CD5F2:  STRD.W          R3, R1, [SP,#0x2578+var_2558]
CD5F6:  STR             R0, [SP,#0x2578+var_2550]
CD5F8:  ADD.W           R2, R2, R2,LSL#2
CD5FC:  LDR.W           R0, [R6,#0x94]
CD600:  ADD.W           R1, R5, #0x10
CD604:  ADD.W           LR, R5, #0x15C
CD608:  ADD.W           R9, R5, #0x16C
CD60C:  ADD.W           R2, R0, R2,LSL#6
CD610:  ADD.W           R4, R5, #0x8C
CD614:  ADD.W           R2, R2, #0x1840
CD618:  STRD.W          R2, R1, [SP,#0x2578+var_2578]
CD61C:  ADD.W           R3, R5, #0x50 ; 'P'
CD620:  ADD             R1, SP, #0x2578+var_2570
CD622:  STM.W           R1, {R3,R4,R9,LR}
CD626:  ADD.W           R12, R5, #0x14C
CD62A:  ADD.W           R1, R6, #0x1420
CD62E:  STRD.W          R12, R5, [SP,#0x2578+var_2560]
CD632:  MOV             R2, R11
CD634:  LDR             R3, [R6,#0x70]
CD636:  BLX             j_silk_NSQ_c
CD63A:  B.W             loc_CCE34
