; =========================================================
; Game Engine Function: sub_13DF22
; Address            : 0x13DF22 - 0x13DF62
; =========================================================

13DF22:  PUSH            {R4,R5,R7,LR}
13DF24:  ADD             R7, SP, #8
13DF26:  MOV             R4, R0
13DF28:  MOV             R5, R1
13DF2A:  LDR             R0, [R1,#0x30]
13DF2C:  LDR             R1, [R4,#0x30]
13DF2E:  CMP             R1, R0
13DF30:  BNE             loc_13DF4C
13DF32:  MOV             R0, R4; s1
13DF34:  MOV             R1, R5; s2
13DF36:  BLX             strcmp
13DF3A:  CBNZ            R0, loc_13DF4C
13DF3C:  ADD.W           R0, R4, #0x20 ; ' '; s1
13DF40:  ADD.W           R1, R5, #0x20 ; ' '; s2
13DF44:  MOVS            R2, #0xC; n
13DF46:  BLX             memcmp
13DF4A:  CBZ             R0, loc_13DF50
13DF4C:  MOVS            R0, #0
13DF4E:  POP             {R4,R5,R7,PC}
13DF50:  LDRB.W          R0, [R5,#0x2C]
13DF54:  LDRB.W          R1, [R4,#0x2C]
13DF58:  SUBS            R0, R1, R0
13DF5A:  CLZ.W           R0, R0
13DF5E:  LSRS            R0, R0, #5
13DF60:  POP             {R4,R5,R7,PC}
