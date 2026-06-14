; =========================================================
; Game Engine Function: sub_18E69E
; Address            : 0x18E69E - 0x18E6C6
; =========================================================

18E69E:  SUB             SP, SP, #4
18E6A0:  PUSH            {R7,LR}
18E6A2:  MOV             R7, SP
18E6A4:  SUB             SP, SP, #0xC
18E6A6:  MOV             R12, R2
18E6A8:  MOV             R2, R1
18E6AA:  ADD.W           R1, R7, #8
18E6AE:  STR             R3, [R7,#8]
18E6B0:  STR             R1, [SP,#0x18+var_10]
18E6B2:  MOV             R3, R12
18E6B4:  STR             R1, [SP,#0x18+var_18]
18E6B6:  MOVS            R1, #0
18E6B8:  BLX             __vsprintf_chk
18E6BC:  ADD             SP, SP, #0xC
18E6BE:  POP.W           {R7,LR}
18E6C2:  ADD             SP, SP, #4
18E6C4:  BX              LR
