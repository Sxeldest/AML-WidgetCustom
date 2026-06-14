; =========================================================
; Game Engine Function: sub_18CE02
; Address            : 0x18CE02 - 0x18CE2C
; =========================================================

18CE02:  PUSH            {R7,LR}
18CE04:  MOV             R7, SP
18CE06:  SUB             SP, SP, #0x18
18CE08:  MOV             R0, R1; fd
18CE0A:  MOVS            R1, #0x10
18CE0C:  STR             R1, [SP,#0x20+len]
18CE0E:  ADD             R1, SP, #0x20+addr; addr
18CE10:  ADD             R2, SP, #0x20+len; len
18CE12:  BLX             getsockname
18CE16:  LDRH.W          R1, [SP,#0x20+addr.sa_data]
18CE1A:  CMP             R0, #0
18CE1C:  REV             R2, R1
18CE1E:  MOV.W           R1, #0
18CE22:  IT EQ
18CE24:  LSREQ           R1, R2, #0x10
18CE26:  MOV             R0, R1
18CE28:  ADD             SP, SP, #0x18
18CE2A:  POP             {R7,PC}
