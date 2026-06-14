; =========================================================
; Game Engine Function: sub_11CE40
; Address            : 0x11CE40 - 0x11CE9C
; =========================================================

11CE40:  PUSH            {R4-R7,LR}
11CE42:  ADD             R7, SP, #0xC
11CE44:  PUSH.W          {R8}
11CE48:  SUB             SP, SP, #0x10
11CE4A:  MOV             R8, R3
11CE4C:  MOV             R5, R2
11CE4E:  MOV             R6, R1
11CE50:  MOV             R4, R0
11CE52:  BL              sub_161028
11CE56:  STRB.W          R0, [SP,#0x20+var_14]
11CE5A:  CBZ             R0, loc_11CE6C
11CE5C:  LDR             R3, [R4]
11CE5E:  MOV             R0, R6
11CE60:  MOV             R1, R5
11CE62:  MOV             R2, R8
11CE64:  BLX             R3
11CE66:  BL              sub_161204
11CE6A:  B               loc_11CE94
11CE6C:  LDRH            R4, [R5,#0x26]
11CE6E:  STRH.W          R4, [R7,#var_16]
11CE72:  BL              sub_163768
11CE76:  LDR.W           R0, [R0,R4,LSL#2]
11CE7A:  BL              sub_1637F4
11CE7E:  LDR             R1, =(aCanTFindDoorIn - 0x11CE86); "Can't find door info in for vehicle mod"... ...
11CE80:  STR             R0, [SP,#0x20+var_1C]
11CE82:  ADD             R1, PC; "Can't find door info in for vehicle mod"...
11CE84:  ADD             R0, SP, #0x20+var_1C
11CE86:  SUB.W           R3, R7, #-var_16
11CE8A:  STR             R0, [SP,#0x20+var_20]
11CE8C:  MOVS            R0, #3
11CE8E:  MOVS            R2, #0x31 ; '1'
11CE90:  BL              sub_11D270
11CE94:  ADD             SP, SP, #0x10
11CE96:  POP.W           {R8}
11CE9A:  POP             {R4-R7,PC}
