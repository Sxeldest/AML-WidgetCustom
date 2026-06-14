; =========================================================
; Game Engine Function: sub_FF2B8
; Address            : 0xFF2B8 - 0xFF2FA
; =========================================================

FF2B8:  PUSH            {R4,R5,R7,LR}
FF2BA:  ADD             R7, SP, #8
FF2BC:  LDR             R0, =(off_25B168 - 0xFF2C2)
FF2BE:  ADD             R0, PC; off_25B168
FF2C0:  LDR             R0, [R0]
FF2C2:  BLX             R0
FF2C4:  LDR             R0, =(off_23494C - 0xFF2D2)
FF2C6:  MOV             R5, #0x685FA0
FF2CE:  ADD             R0, PC; off_23494C
FF2D0:  LDR             R4, [R0]; dword_23DF24
FF2D2:  LDR             R0, [R4]
FF2D4:  ADD             R0, R5
FF2D6:  BL              sub_1641C4
FF2DA:  LDR             R0, [R4]
FF2DC:  MOV.W           R1, #0x10000000
FF2E0:  STR             R1, [R0,R5]
FF2E2:  LDR             R0, [R4]
FF2E4:  LDR             R0, [R0,R5]
FF2E6:  LDR             R1, =(aAxl - 0xFF2EE); "AXL" ...
FF2E8:  LDR             R2, =(aUseDmibForStre - 0xFF2F2); "Use %dMiB for streaming" ...
FF2EA:  ADD             R1, PC; "AXL"
FF2EC:  LSRS            R3, R0, #0x14
FF2EE:  ADD             R2, PC; "Use %dMiB for streaming"
FF2F0:  MOVS            R0, #3
FF2F2:  POP.W           {R4,R5,R7,LR}
FF2F6:  B.W             sub_2242C8
