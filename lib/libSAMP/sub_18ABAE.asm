; =========================================================
; Game Engine Function: sub_18ABAE
; Address            : 0x18ABAE - 0x18AC28
; =========================================================

18ABAE:  PUSH            {R4-R7,LR}
18ABB0:  ADD             R7, SP, #0xC
18ABB2:  PUSH.W          {R8,R9,R11}
18ABB6:  ADD.W           R0, R1, R2,LSL#2
18ABBA:  LDRD.W          R12, R8, [R0,#0xD0]
18ABBE:  LDR.W           LR, [R8,#4]
18ABC2:  LDRH.W          R4, [R8,#8]
18ABC6:  CMP.W           LR, #1
18ABCA:  STRH            R4, [R3]
18ABCC:  BLT             loc_18ABE8
18ABCE:  MOV             R4, LR
18ABD0:  ADD.W           R5, R8, R4,LSL#1
18ABD4:  ADD.W           R0, R8, R4,LSL#2
18ABD8:  SUBS            R4, #1
18ABDA:  LDRH.W          R9, [R5,#6]
18ABDE:  LDR             R6, [R0,#0x44]
18ABE0:  STRH.W          R9, [R5,#8]
18ABE4:  STR             R6, [R0,#0x48]
18ABE6:  BHI             loc_18ABD0
18ABE8:  LDR.W           R5, [R12,#4]
18ABEC:  ADD.W           R4, LR, #1
18ABF0:  STR.W           R4, [R8,#4]
18ABF4:  ADD.W           R1, R1, R2,LSL#1
18ABF8:  SUBS            R5, #1
18ABFA:  LDR.W           LR, [R12,#4]
18ABFE:  ADD.W           R4, R12, R5,LSL#1
18AC02:  ADD.W           R5, R12, R5,LSL#2
18AC06:  LDRH            R4, [R4,#8]
18AC08:  STRH.W          R4, [R8,#8]
18AC0C:  STRH            R4, [R1,#8]
18AC0E:  SUB.W           R1, LR, #1
18AC12:  LDR             R5, [R5,#0x48]
18AC14:  LDRH.W          R0, [R8,#8]
18AC18:  STR.W           R1, [R12,#4]
18AC1C:  STR.W           R5, [R8,#0x48]
18AC20:  STRH            R0, [R3,#2]
18AC22:  POP.W           {R8,R9,R11}
18AC26:  POP             {R4-R7,PC}
