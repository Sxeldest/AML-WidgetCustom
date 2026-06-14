; =========================================================
; Game Engine Function: sub_1299C8
; Address            : 0x1299C8 - 0x129A08
; =========================================================

1299C8:  PUSH            {R7,LR}
1299CA:  MOV             R7, SP
1299CC:  LDR             R0, =(byte_314180 - 0x1299D2)
1299CE:  ADD             R0, PC; byte_314180
1299D0:  LDRB            R0, [R0]
1299D2:  DMB.W           ISH
1299D6:  LSLS            R0, R0, #0x1F
1299D8:  IT NE
1299DA:  POPNE           {R7,PC}
1299DC:  LDR             R0, =(byte_314180 - 0x1299E2)
1299DE:  ADD             R0, PC; byte_314180 ; __guard *
1299E0:  BLX             j___cxa_guard_acquire
1299E4:  CBZ             R0, locret_129A06
1299E6:  LDR             R1, =(unk_314168 - 0x1299F2)
1299E8:  MOVS            R3, #0
1299EA:  LDR             R0, =(sub_10CC6C+1 - 0x1299F4)
1299EC:  LDR             R2, =(off_22A540 - 0x1299F6)
1299EE:  ADD             R1, PC; unk_314168 ; obj
1299F0:  ADD             R0, PC; sub_10CC6C ; lpfunc
1299F2:  ADD             R2, PC; off_22A540 ; lpdso_handle
1299F4:  STR             R3, [R1,#(dword_314178 - 0x314168)]
1299F6:  BLX             __cxa_atexit
1299FA:  LDR             R0, =(byte_314180 - 0x129A00)
1299FC:  ADD             R0, PC; byte_314180
1299FE:  POP.W           {R7,LR}
129A02:  B.W             sub_2242B0
129A06:  POP             {R7,PC}
