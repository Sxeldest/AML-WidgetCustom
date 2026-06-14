; =========================================================
; Game Engine Function: sub_FCB8C
; Address            : 0xFCB8C - 0xFCCB2
; =========================================================

FCB8C:  PUSH            {R4-R7,LR}
FCB8E:  ADD             R7, SP, #0xC
FCB90:  PUSH.W          {R8,R9,R11}
FCB94:  SUB             SP, SP, #8
FCB96:  MOV             R6, R0
FCB98:  LDR             R0, =(off_23496C - 0xFCB9E)
FCB9A:  ADD             R0, PC; off_23496C
FCB9C:  LDR             R5, [R0]; dword_23DEF4
FCB9E:  LDR             R0, [R5]
FCBA0:  CBZ             R0, loc_FCBE2
FCBA2:  CBZ             R6, loc_FCBE2
FCBA4:  LDR.W           R0, [R0,#0x3B0]
FCBA8:  LDRD.W          R8, R4, [R0]
FCBAC:  MOVW            R0, #0xEA60
FCBB0:  ADDS            R1, R4, R0
FCBB2:  LDRD.W          R0, R1, [R1]
FCBB6:  CMP             R0, R1
FCBB8:  BEQ             loc_FCBD2
FCBBA:  MOV.W           R2, #0x1F40
FCBBE:  LDR             R3, [R0]
FCBC0:  ADD.W           R3, R4, R3,LSL#2
FCBC4:  LDR             R3, [R3,R2]
FCBC6:  CMP             R3, R6
FCBC8:  BEQ             loc_FCBD2
FCBCA:  ADDS            R0, #4
FCBCC:  CMP             R0, R1
FCBCE:  BNE             loc_FCBBE
FCBD0:  B               loc_FCBE2
FCBD2:  CMP             R0, R1
FCBD4:  ITTT NE
FCBD6:  LDRHNE.W        R9, [R0]
FCBDA:  MOVWNE          R0, #0xFFFF
FCBDE:  CMPNE           R9, R0
FCBE0:  BNE             loc_FCBEC
FCBE2:  MOVS            R0, #0
FCBE4:  ADD             SP, SP, #8
FCBE6:  POP.W           {R8,R9,R11}
FCBEA:  POP             {R4-R7,PC}
FCBEC:  MOV.W           R0, R9,LSR#4
FCBF0:  CMP             R0, #0x7C ; '|'
FCBF2:  BHI             loc_FCBE2
FCBF4:  MOV             R0, R4
FCBF6:  MOV             R1, R9
FCBF8:  BL              sub_F2396
FCBFC:  CMP             R0, #0
FCBFE:  BEQ             loc_FCBE2
FCC00:  LDR.W           R0, [R4,R9,LSL#2]
FCC04:  CMP             R0, #0
FCC06:  BEQ             loc_FCBE2
FCC08:  LDR             R4, [R0,#4]
FCC0A:  CMP             R4, R6
FCC0C:  BEQ             loc_FCC26
FCC0E:  LDR             R1, =(aAxl - 0xFCC1A); "AXL" ...
FCC10:  MOVS            R0, #6; prio
FCC12:  LDR             R2, =(aSFindInvalidVe - 0xFCC1C); "%s: find invalid vehicle. Search id for"... ...
FCC14:  LDR             R3, =(aNotifyenterveh - 0xFCC22); "NotifyEnterVehicle" ...
FCC16:  ADD             R1, PC; "AXL"
FCC18:  ADD             R2, PC; "%s: find invalid vehicle. Search id for"...
FCC1A:  STRD.W          R6, R4, [SP,#0x20+var_20]
FCC1E:  ADD             R3, PC; "NotifyEnterVehicle"
FCC20:  BLX             __android_log_print
FCC24:  B               loc_FCBE2
FCC26:  LDRB.W          R1, [R0,#0x22]
FCC2A:  CMP             R1, #0
FCC2C:  BNE             loc_FCBE2
FCC2E:  LDR             R0, [R0,#0xC]
FCC30:  MOVW            R2, #0x23A
FCC34:  LDRH            R1, [R0,#0x26]
FCC36:  CMP             R1, R2
FCC38:  BEQ             loc_FCBE2
FCC3A:  LDR             R1, [R5]
FCC3C:  MOVW            R2, #0x13BC
FCC40:  LDR.W           R1, [R1,#0x3B0]
FCC44:  LDR             R1, [R1]
FCC46:  LDR             R6, [R1,R2]
FCC48:  CBZ             R6, loc_FCC5E
FCC4A:  LDR             R1, [R6,#0x1C]
FCC4C:  CBZ             R1, loc_FCC5E
FCC4E:  LDRB.W          R2, [R1,#0x42]
FCC52:  CMP             R2, #0
FCC54:  BNE             loc_FCBE2
FCC56:  LDRB.W          R1, [R1,#0x43]
FCC5A:  CMP             R1, #0
FCC5C:  BNE             loc_FCBE2
FCC5E:  LDR.W           R1, [R0,#0x464]
FCC62:  CBZ             R1, loc_FCC8E
FCC64:  LDR.W           R0, [R1,#0x59C]
FCC68:  CMP             R0, #0
FCC6A:  BNE             loc_FCBE2
FCC6C:  MOV             R0, R8
FCC6E:  MOVS            R2, #0
FCC70:  BL              sub_148F74
FCC74:  CMP.W           R0, #0x3EC
FCC78:  BHI             loc_FCC8E
FCC7A:  MOV             R1, R0
FCC7C:  ADD             R0, R8
FCC7E:  LDRB.W          R0, [R0,#0xFB4]
FCC82:  CBZ             R0, loc_FCC8E
FCC84:  MOV             R0, R8
FCC86:  BL              sub_148EBA
FCC8A:  CMP             R0, #0
FCC8C:  BNE             loc_FCBE2
FCC8E:  LDR             R0, [R6,#0x1C]
FCC90:  CBZ             R0, loc_FCCA4
FCC92:  BL              sub_104648
FCC96:  CMP             R0, #0x2E ; '.'
FCC98:  BNE             loc_FCCA4
FCC9A:  LDR             R0, [R6,#0x1C]
FCC9C:  MOVS            R1, #0
FCC9E:  MOVS            R2, #0
FCCA0:  BL              sub_10479C
FCCA4:  MOV             R0, R6
FCCA6:  MOV             R1, R9
FCCA8:  MOVS            R2, #0
FCCAA:  BL              sub_141154
FCCAE:  MOVS            R0, #1
FCCB0:  B               loc_FCBE4
