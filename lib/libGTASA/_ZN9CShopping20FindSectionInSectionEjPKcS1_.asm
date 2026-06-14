; =========================================================
; Game Engine Function: _ZN9CShopping20FindSectionInSectionEjPKcS1_
; Address            : 0x360064 - 0x360088
; =========================================================

360064:  PUSH            {R4,R5,R7,LR}
360066:  ADD             R7, SP, #8
360068:  MOV             R4, R2
36006A:  MOV             R5, R0
36006C:  BLX             j__ZN9CShopping11FindSectionEjPKc; CShopping::FindSection(uint,char const*)
360070:  CMP             R0, #1
360072:  BNE             loc_360084
360074:  MOV             R0, R5; this
360076:  MOV             R1, R4; unsigned int
360078:  BLX             j__ZN9CShopping11FindSectionEjPKc; CShopping::FindSection(uint,char const*)
36007C:  CMP             R0, #0
36007E:  ITT NE
360080:  MOVNE           R0, #1
360082:  POPNE           {R4,R5,R7,PC}
360084:  MOVS            R0, #0
360086:  POP             {R4,R5,R7,PC}
