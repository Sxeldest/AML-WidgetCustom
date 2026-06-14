; =========================================================
; Game Engine Function: sub_21DEEC
; Address            : 0x21DEEC - 0x21DF2E
; =========================================================

21DEEC:  PUSH            {R4,R5,R7,LR}
21DEEE:  ADD             R7, SP, #8
21DEF0:  MOV             R4, R0
21DEF2:  LDR             R0, =(dword_6BD644 - 0x21DEF8)
21DEF4:  ADD             R0, PC; dword_6BD644
21DEF6:  LDR             R0, [R0]
21DEF8:  LDR             R5, [R1,R0]
21DEFA:  CBZ             R5, loc_21DF2A
21DEFC:  STR             R5, [R4,R0]
21DEFE:  LDRSB.W         R0, [R4,#1]
21DF02:  CMP             R0, #0
21DF04:  BLT             loc_21DF0C
21DF06:  ADD.W           R0, R5, #0x3C ; '<'
21DF0A:  B               loc_21DF1A
21DF0C:  LDR             R0, [R4,#4]
21DF0E:  CMP             R0, #0
21DF10:  IT NE
21DF12:  BLXNE           j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
21DF16:  ADD.W           R0, R5, #0x34 ; '4'
21DF1A:  LDR             R1, [R0]
21DF1C:  MOV             R2, R4
21DF1E:  STR.W           R1, [R2,#0x34]!
21DF22:  STR             R0, [R2,#4]
21DF24:  LDR             R1, [R0]
21DF26:  STR             R2, [R1,#4]
21DF28:  STR             R2, [R0]
21DF2A:  MOV             R0, R4
21DF2C:  POP             {R4,R5,R7,PC}
