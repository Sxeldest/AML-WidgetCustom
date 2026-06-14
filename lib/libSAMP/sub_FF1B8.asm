; =========================================================
; Game Engine Function: sub_FF1B8
; Address            : 0xFF1B8 - 0xFF21A
; =========================================================

FF1B8:  PUSH            {R4,R5,R7,LR}
FF1BA:  ADD             R7, SP, #8
FF1BC:  MOV             R4, R0
FF1BE:  LDR             R0, =(byte_25B15C - 0xFF1C4)
FF1C0:  ADD             R0, PC; byte_25B15C
FF1C2:  LDRB            R0, [R0]
FF1C4:  DMB.W           ISH
FF1C8:  LDR             R5, =(dword_25B158 - 0xFF1CE)
FF1CA:  ADD             R5, PC; dword_25B158
FF1CC:  LSLS            R0, R0, #0x1F
FF1CE:  BEQ             loc_FF1EA
FF1D0:  LDR             R0, [R5]
FF1D2:  CBZ             R0, loc_FF1E2
FF1D4:  LDR             R0, =(off_25B154 - 0xFF1DA)
FF1D6:  ADD             R0, PC; off_25B154
FF1D8:  LDR             R1, [R0]
FF1DA:  MOV             R0, R4
FF1DC:  POP.W           {R4,R5,R7,LR}
FF1E0:  BX              R1
FF1E2:  LDR             R0, [R4]
FF1E4:  ADDS            R0, #8
FF1E6:  STR             R0, [R4]
FF1E8:  POP             {R4,R5,R7,PC}
FF1EA:  LDR             R0, =(byte_25B15C - 0xFF1F0)
FF1EC:  ADD             R0, PC; byte_25B15C ; __guard *
FF1EE:  BLX             j___cxa_guard_acquire
FF1F2:  CMP             R0, #0
FF1F4:  BEQ             loc_FF1D0
FF1F6:  LDR             R0, =(off_23494C - 0xFF1FC)
FF1F8:  ADD             R0, PC; off_23494C
FF1FA:  LDR             R0, [R0]; dword_23DF24
FF1FC:  LDR             R1, [R0]
FF1FE:  LDR             R0, =(aGlalphafuncqco - 0xFF208); "glAlphaFuncQCOM" ...
FF200:  ADD.W           R1, R1, #0x19E000
FF204:  ADD             R0, PC; "glAlphaFuncQCOM"
FF206:  ADD.W           R1, R1, #0x2CC
FF20A:  BLX             R1
FF20C:  LDR             R1, =(byte_25B15C - 0xFF214)
FF20E:  STR             R0, [R5]
FF210:  ADD             R1, PC; byte_25B15C
FF212:  MOV             R0, R1; __guard *
FF214:  BLX             j___cxa_guard_release
FF218:  B               loc_FF1D0
