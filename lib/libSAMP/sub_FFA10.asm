; =========================================================
; Game Engine Function: sub_FFA10
; Address            : 0xFFA10 - 0xFFA48
; =========================================================

FFA10:  PUSH            {R4-R7,LR}
FFA12:  ADD             R7, SP, #0xC
FFA14:  PUSH.W          {R11}
FFA18:  SUB             SP, SP, #8
FFA1A:  MOV             R4, R0
FFA1C:  LDR             R0, =(off_25B1F4 - 0xFFA24)
FFA1E:  MOV             R6, R1
FFA20:  ADD             R0, PC; off_25B1F4
FFA22:  LDR             R2, [R0]
FFA24:  MOV             R0, R4
FFA26:  BLX             R2
FFA28:  MOV             R5, R0
FFA2A:  CBNZ            R0, loc_FFA3E
FFA2C:  LDR             R1, =(aAxl - 0xFFA38); "AXL" ...
FFA2E:  MOVS            R0, #6; prio
FFA30:  LDR             R2, =(aCanimmanagerGe - 0xFFA3C); "CAnimManager::GetAnimAssociation(groupI"... ...
FFA32:  MOV             R3, R4
FFA34:  ADD             R1, PC; "AXL"
FFA36:  STR             R6, [SP,#0x18+var_18]
FFA38:  ADD             R2, PC; "CAnimManager::GetAnimAssociation(groupI"...
FFA3A:  BLX             __android_log_print
FFA3E:  MOV             R0, R5
FFA40:  ADD             SP, SP, #8
FFA42:  POP.W           {R11}
FFA46:  POP             {R4-R7,PC}
