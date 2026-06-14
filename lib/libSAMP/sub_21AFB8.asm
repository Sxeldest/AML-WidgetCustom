; =========================================================
; Game Engine Function: sub_21AFB8
; Address            : 0x21AFB8 - 0x21B03A
; =========================================================

21AFB8:  PUSH            {R4-R7,LR}
21AFBA:  ADD             R7, SP, #0xC
21AFBC:  PUSH.W          {R7-R11}
21AFC0:  MOV             R10, R0
21AFC2:  MOV.W           R0, #0xFFFFFFFF
21AFC6:  LDRD.W          R9, R8, [R1,#0xC]
21AFCA:  MOV             R4, R1
21AFCC:  STRD.W          R0, R0, [R1,#0xC]
21AFD0:  LDR             R5, [R1,#4]
21AFD2:  LDR.W           R0, [R10,#8]
21AFD6:  BL              sub_2154CC
21AFDA:  LDR.W           R11, [R4,#0x10]
21AFDE:  ADDS.W          R0, R11, #1
21AFE2:  BEQ             loc_21AFEE
21AFE4:  CMP.W           R11, #0
21AFE8:  BNE             loc_21B00E
21AFEA:  STR             R5, [R4,#4]
21AFEC:  B               loc_21B004
21AFEE:  LDR             R5, =(asc_8CB3B - 0x21AFF6); "..." ...
21AFF0:  MOVS            R1, #4; size_t
21AFF2:  ADD             R5, PC; "..."
21AFF4:  MOV             R0, R5; char *
21AFF6:  BLX             __strlen_chk
21AFFA:  ADDS            R2, R5, R0
21AFFC:  MOV             R0, R4
21AFFE:  MOV             R1, R5
21B000:  BL              sub_216F98
21B004:  STRD.W          R9, R8, [R4,#0xC]
21B008:  POP.W           {R3,R8-R11}
21B00C:  POP             {R4-R7,PC}
21B00E:  LDR             R6, =(asc_8F279 - 0x21B016); ", " ...
21B010:  MOVS            R5, #1
21B012:  ADD             R6, PC; ", "
21B014:  CMP             R5, R11
21B016:  BCS             loc_21B004
21B018:  MOV             R0, R6; char *
21B01A:  MOVS            R1, #3; size_t
21B01C:  BLX             __strlen_chk
21B020:  ADDS            R2, R6, R0
21B022:  MOV             R0, R4
21B024:  MOV             R1, R6
21B026:  BL              sub_216F98
21B02A:  LDR.W           R0, [R10,#8]
21B02E:  STR             R5, [R4,#0xC]
21B030:  MOV             R1, R4
21B032:  BL              sub_2154CC
21B036:  ADDS            R5, #1
21B038:  B               loc_21B014
