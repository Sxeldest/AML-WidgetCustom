; =========================================================
; Game Engine Function: sub_FCCC4
; Address            : 0xFCCC4 - 0xFCD24
; =========================================================

FCCC4:  PUSH            {R4-R7,LR}
FCCC6:  ADD             R7, SP, #0xC
FCCC8:  PUSH.W          {R8}
FCCCC:  MOV             R8, R1
FCCCE:  MOV             R5, R0
FCCD0:  BL              sub_FCB8C
FCCD4:  CBZ             R0, loc_FCD1E
FCCD6:  LDR             R0, =(off_23494C - 0xFCCE4)
FCCD8:  MOV             R1, #0x4D6A01
FCCE0:  ADD             R0, PC; off_23494C
FCCE2:  LDR             R4, [R0]; dword_23DF24
FCCE4:  LDR             R0, [R4]
FCCE6:  ADD             R0, R1
FCCE8:  BLX             R0
FCCEA:  MOV             R6, R0
FCCEC:  LDR             R0, [R4]
FCCEE:  MOV             R1, #0x4F6F71
FCCF6:  ADDS            R2, R0, R1
FCCF8:  MOV             R0, R6
FCCFA:  MOV             R1, R5
FCCFC:  BLX             R2
FCCFE:  MOVW            R1, #0x390B
FCD02:  LDR             R0, [R4]
FCD04:  MOVT            R1, #0x53 ; 'S'
FCD08:  MOVS            R2, #3
FCD0A:  ADD.W           R12, R0, R1
FCD0E:  MOV             R0, R8
FCD10:  MOV             R1, R6
FCD12:  MOVS            R3, #0
FCD14:  POP.W           {R8}
FCD18:  POP.W           {R4-R7,LR}
FCD1C:  BX              R12
FCD1E:  POP.W           {R8}
FCD22:  POP             {R4-R7,PC}
