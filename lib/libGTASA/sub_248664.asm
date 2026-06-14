; =========================================================
; Game Engine Function: sub_248664
; Address            : 0x248664 - 0x248706
; =========================================================

248664:  PUSH            {R4-R7,LR}
248666:  ADD             R7, SP, #0xC
248668:  PUSH.W          {R11}
24866C:  SUB             SP, SP, #8
24866E:  LDR             R5, =(dword_6D6328 - 0x248674)
248670:  ADD             R5, PC; dword_6D6328
248672:  LDR             R0, [R5]; p
248674:  BLX             free
248678:  LDR             R6, =(dword_6D6330 - 0x248682)
24867A:  MOVS            R4, #0
24867C:  LDR             R1, =(dword_6D632C - 0x248686)
24867E:  ADD             R6, PC; dword_6D6330
248680:  STR             R4, [R5]
248682:  ADD             R1, PC; dword_6D632C
248684:  LDR             R0, [R6]; p
248686:  STR             R4, [R1]
248688:  BLX             free
24868C:  LDR             R5, =(dword_6D6340 - 0x248694)
24868E:  LDR             R1, =(dword_6D6334 - 0x248698)
248690:  ADD             R5, PC; dword_6D6340
248692:  STR             R4, [R6]
248694:  ADD             R1, PC; dword_6D6334
248696:  LDR             R0, [R5]; p
248698:  STR             R4, [R1]
24869A:  BLX             free
24869E:  LDR             R6, =(dword_6D6344 - 0x2486A6)
2486A0:  STR             R4, [R5]
2486A2:  ADD             R6, PC; dword_6D6344
2486A4:  LDR             R0, [R6]; p
2486A6:  BLX             free
2486AA:  LDR             R1, =(dword_6D6408 - 0x2486B2)
2486AC:  STR             R4, [R6]
2486AE:  ADD             R1, PC; dword_6D6408
2486B0:  DMB.W           ISH
2486B4:  LDREX.W         R0, [R1]
2486B8:  STREX.W         R2, R4, [R1]
2486BC:  CMP             R2, #0
2486BE:  BNE             loc_2486B4
2486C0:  CMP             R0, #0
2486C2:  DMB.W           ISH
2486C6:  BEQ             loc_2486FE
2486C8:  MOVW            R1, #:lower16:(elf_hash_chain+0x6050)
2486CC:  MOVS            R3, #0
2486CE:  MOVT            R1, #:upper16:(elf_hash_chain+0x6050)
2486D2:  LDR             R0, [R0,R1]
2486D4:  ADDS            R3, #1
2486D6:  CMP             R0, #0
2486D8:  BNE             loc_2486D2
2486DA:  LDR             R0, =(LogLevel_ptr - 0x2486E0)
2486DC:  ADD             R0, PC; LogLevel_ptr
2486DE:  LDR             R0, [R0]; LogLevel
2486E0:  LDR             R0, [R0]
2486E2:  CBZ             R0, loc_2486FE
2486E4:  LDR             R1, =(byte_61CD7E - 0x2486F0)
2486E6:  ADR             R2, dword_248730
2486E8:  LDR             R0, =(aEe - 0x2486F2); "(EE)"
2486EA:  CMP             R3, #1
2486EC:  ADD             R1, PC; byte_61CD7E
2486EE:  ADD             R0, PC; "(EE)"
2486F0:  IT LS
2486F2:  MOVLS           R2, R1
2486F4:  ADR             R1, aAlcCleanup; "alc_cleanup"
2486F6:  STR             R2, [SP,#0x18+var_18]
2486F8:  ADR             R2, aUDeviceSNotClo; "%u device%s not closed\n"
2486FA:  BLX             j_al_print
2486FE:  ADD             SP, SP, #8
248700:  POP.W           {R11}
248704:  POP             {R4-R7,PC}
