; =========================================================
; Game Engine Function: sub_18AC28
; Address            : 0x18AC28 - 0x18AC96
; =========================================================

18AC28:  PUSH            {R4,R5,R7,LR}
18AC2A:  ADD             R7, SP, #8
18AC2C:  LDR             R0, [R2,#4]
18AC2E:  SUB.W           R12, R0, #1
18AC32:  CMP             R12, R1
18AC34:  BLE             loc_18AC90
18AC36:  MVNS            R3, R1
18AC38:  ADD.W           LR, R3, R0
18AC3C:  ADD.W           R0, R2, R1,LSL#1
18AC40:  ADDS            R0, #8
18AC42:  MOV             R3, LR
18AC44:  MOV             R4, R0
18AC46:  LDRH.W          R5, [R4,#2]!
18AC4A:  SUBS            R3, #1
18AC4C:  STRH            R5, [R0]
18AC4E:  MOV             R0, R4
18AC50:  BNE             loc_18AC46
18AC52:  LDRB            R0, [R2]
18AC54:  CBZ             R0, loc_18AC74
18AC56:  CMP             R12, R1
18AC58:  BLE             loc_18AC90
18AC5A:  ADD.W           R0, R2, R1,LSL#2
18AC5E:  ADD.W           R1, R0, #0x4C ; 'L'
18AC62:  LDR             R0, [R1]
18AC64:  SUBS.W          LR, LR, #1
18AC68:  STR.W           R0, [R1,#-4]
18AC6C:  ADD.W           R1, R1, #4
18AC70:  BNE             loc_18AC62
18AC72:  B               loc_18AC90
18AC74:  CMP             R12, R1
18AC76:  BLE             loc_18AC90
18AC78:  ADD.W           R0, R2, R1,LSL#2
18AC7C:  ADD.W           R1, R0, #0xD4
18AC80:  MOV             R0, R1
18AC82:  LDR.W           R3, [R0,#4]!
18AC86:  SUBS.W          LR, LR, #1
18AC8A:  STR             R3, [R1]
18AC8C:  MOV             R1, R0
18AC8E:  BNE             loc_18AC82
18AC90:  STR.W           R12, [R2,#4]
18AC94:  POP             {R4,R5,R7,PC}
