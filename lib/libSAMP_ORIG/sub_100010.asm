; =========================================================
; Game Engine Function: sub_100010
; Address            : 0x100010 - 0x100068
; =========================================================

100010:  CBZ             R1, loc_100048
100012:  PUSH            {R4-R7,LR}
100014:  ADD             R7, SP, #0xC
100016:  PUSH.W          {R11}
10001A:  LDR             R6, [R0]
10001C:  MOV             R4, R0
10001E:  MOV             R5, R1
100020:  LDR             R0, [R6]
100022:  CBZ             R0, loc_10004C
100024:  LDR             R0, [R4,#4]
100026:  MOVS            R1, #0x10
100028:  ADD.W           R0, R0, #0x198
10002C:  BL              sub_FFA98
100030:  LDR             R1, [R6]
100032:  LDR             R3, =(_ZTVN12_GLOBAL__N_116itanium_demangle10NestedNameE - 0x10003A); `vtable for'`anonymous namespace'::itanium_demangle::NestedName ...
100034:  LDR             R2, =0x1010117
100036:  ADD             R3, PC; `vtable for'`anonymous namespace'::itanium_demangle::NestedName
100038:  STRD.W          R1, R5, [R0,#8]
10003C:  ADDS            R3, #8
10003E:  STRD.W          R3, R2, [R0]
100042:  LDR             R1, [R4]
100044:  STR             R0, [R1]
100046:  B               loc_10004E
100048:  MOVS            R0, #0
10004A:  BX              LR
10004C:  STR             R5, [R6]
10004E:  LDR             R0, [R4,#8]
100050:  LDR             R0, [R0]
100052:  CBZ             R0, loc_100058
100054:  MOVS            R1, #0
100056:  STRB            R1, [R0,#1]
100058:  LDR             R0, [R4]
10005A:  LDR             R0, [R0]
10005C:  CMP             R0, #0
10005E:  IT NE
100060:  MOVNE           R0, #1
100062:  POP.W           {R11}
100066:  POP             {R4-R7,PC}
