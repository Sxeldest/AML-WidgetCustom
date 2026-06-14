; =========================================================
; Game Engine Function: sub_FDFF0
; Address            : 0xFDFF0 - 0xFE032
; =========================================================

FDFF0:  PUSH            {R4-R7,LR}
FDFF2:  ADD             R7, SP, #0xC
FDFF4:  PUSH.W          {R11}
FDFF8:  MOV             R4, R2
FDFFA:  MOV             R5, R1
FDFFC:  MOV             R6, R0
FDFFE:  BL              sub_1082E4
FE002:  CBZ             R0, loc_FE01C
FE004:  LDR             R0, [R0,#0x18]
FE006:  CMP             R0, R6
FE008:  BNE             loc_FE01C
FE00A:  CBNZ            R5, loc_FE010
FE00C:  CMP             R4, #0xA0
FE00E:  BEQ             loc_FE01C
FE010:  LDR             R0, =(dword_24757C - 0xFE018)
FE012:  LDR             R1, =(dword_247578 - 0xFE01A)
FE014:  ADD             R0, PC; dword_24757C
FE016:  ADD             R1, PC; dword_247578
FE018:  STR             R4, [R0]
FE01A:  STR             R5, [R1]
FE01C:  LDR             R0, =(off_247584 - 0xFE026)
FE01E:  MOV             R1, R5
FE020:  MOV             R2, R4
FE022:  ADD             R0, PC; off_247584
FE024:  LDR             R3, [R0]
FE026:  MOV             R0, R6
FE028:  POP.W           {R11}
FE02C:  POP.W           {R4-R7,LR}
FE030:  BX              R3
