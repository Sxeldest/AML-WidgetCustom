; =========================================================
; Game Engine Function: sub_18B064
; Address            : 0x18B064 - 0x18B0BA
; =========================================================

18B064:  PUSH            {R4,R5,R7,LR}
18B066:  ADD             R7, SP, #8
18B068:  LDR             R5, [R1,#4]
18B06A:  MOV             R4, R1
18B06C:  CMP             R5, #1
18B06E:  BLT             loc_18B092
18B070:  ADD.W           R0, R4, #0xA; dest
18B074:  ADD.W           R1, R4, #8; src
18B078:  LSLS            R2, R5, #1; n
18B07A:  BLX             j_memmove
18B07E:  LDRB            R0, [R4]
18B080:  CBZ             R0, loc_18B09A
18B082:  ADD.W           R0, R4, #0x4C ; 'L'; dest
18B086:  ADD.W           R1, R4, #0x48 ; 'H'; src
18B08A:  LSLS            R2, R5, #2; n
18B08C:  BLX             j_memmove
18B090:  B               loc_18B0B4
18B092:  LDRB            R0, [R4]
18B094:  CBNZ            R0, loc_18B0B4
18B096:  CBZ             R5, loc_18B09E
18B098:  B               loc_18B0B4
18B09A:  CMP             R5, #0
18B09C:  BMI             loc_18B0B4
18B09E:  MOV             R0, R5
18B0A0:  ADD.W           R1, R4, R0,LSL#2
18B0A4:  LDR.W           R2, [R1,#0xD0]
18B0A8:  STR.W           R2, [R1,#0xD4]
18B0AC:  ADDS            R1, R0, #1
18B0AE:  SUBS            R0, #1
18B0B0:  CMP             R1, #1
18B0B2:  BGT             loc_18B0A0
18B0B4:  ADDS            R0, R5, #1
18B0B6:  STR             R0, [R4,#4]
18B0B8:  POP             {R4,R5,R7,PC}
