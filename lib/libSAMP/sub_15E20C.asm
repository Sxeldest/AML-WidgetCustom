; =========================================================
; Game Engine Function: sub_15E20C
; Address            : 0x15E20C - 0x15E236
; =========================================================

15E20C:  SUB             SP, SP, #4
15E20E:  PUSH            {R7,LR}
15E210:  MOV             R7, SP
15E212:  SUB             SP, SP, #0xC
15E214:  ADD.W           R1, R7, #8
15E218:  MOV             R12, R2
15E21A:  STR             R3, [R7,#8]
15E21C:  MOVW            R2, #0x7FF
15E220:  STR             R1, [SP,#0x18+var_10]
15E222:  MOV             R3, R12
15E224:  STR             R1, [SP,#0x18+var_18]
15E226:  MOVS            R1, #0
15E228:  BLX             __vsprintf_chk
15E22C:  ADD             SP, SP, #0xC
15E22E:  POP.W           {R7,LR}
15E232:  ADD             SP, SP, #4
15E234:  BX              LR
