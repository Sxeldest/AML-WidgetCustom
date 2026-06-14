; =========================================================
; Game Engine Function: _Z19NVEventGetNextEventP7NVEventi
; Address            : 0x2696B4 - 0x269790
; =========================================================

2696B4:  PUSH            {R4-R7,LR}
2696B6:  ADD             R7, SP, #0xC
2696B8:  PUSH.W          {R11}
2696BC:  SUB             SP, SP, #8
2696BE:  LDR             R6, =(dword_6D8200 - 0x2696C8)
2696C0:  MOV             R4, R0
2696C2:  MOV             R5, R1
2696C4:  ADD             R6, PC; dword_6D8200
2696C6:  ADD.W           R0, R6, #8; mutex
2696CA:  BLX             pthread_mutex_lock
2696CE:  LDRB.W          R0, [R6,#(byte_6D8224 - 0x6D8200)]
2696D2:  CMP             R0, #0
2696D4:  BEQ             loc_2696E6
2696D6:  LDR             R0, =(dword_6D8200 - 0x2696DE)
2696D8:  MOVS            R1, #0
2696DA:  ADD             R0, PC; dword_6D8200
2696DC:  STRB.W          R1, [R0,#(byte_6D8224 - 0x6D8200)]
2696E0:  ADDS            R0, #0x14; cond
2696E2:  BLX             pthread_cond_signal
2696E6:  LDR             R0, =(dword_6D8200 - 0x2696EC)
2696E8:  ADD             R0, PC; dword_6D8200
2696EA:  LDRD.W          R1, R0, [R0]
2696EE:  CMP             R1, R0
2696F0:  BNE             loc_26973E
2696F2:  CBZ             R5, loc_26973A
2696F4:  LDR             R0, =(dword_6D8200 - 0x2696FA)
2696F6:  ADD             R0, PC; dword_6D8200
2696F8:  LDRB            R0, [R0,#(byte_6D8210 - 0x6D8200)]
2696FA:  CBZ             R0, loc_26972E
2696FC:  CMP.W           R5, #0xFFFFFFFF
269700:  BLE             loc_269720
269702:  MOV.W           R0, #0x3E8
269706:  LDR             R1, =(dword_6D8200 - 0x269710)
269708:  MULS            R0, R5
26970A:  MOVS            R2, #5
26970C:  ADD             R1, PC; dword_6D8200
26970E:  STRD.W          R2, R0, [SP,#0x18+var_18]
269712:  ADD.W           R0, R1, #0xC; cond
269716:  ADDS            R1, #8; mutex
269718:  MOV             R2, SP; abstime
26971A:  BLX             pthread_cond_timedwait
26971E:  B               loc_26972E
269720:  LDR             R1, =(dword_6D8200 - 0x269726)
269722:  ADD             R1, PC; dword_6D8200
269724:  ADD.W           R0, R1, #0xC; cond
269728:  ADDS            R1, #8; mutex
26972A:  BLX             pthread_cond_wait
26972E:  LDR             R0, =(dword_6D8200 - 0x269734)
269730:  ADD             R0, PC; dword_6D8200
269732:  LDRD.W          R1, R0, [R0]
269736:  CMP             R1, R0
269738:  BNE             loc_26973E
26973A:  MOVS            R4, #0
26973C:  B               loc_26977C
26973E:  LDR             R1, =(dword_6D8200 - 0x269748)
269740:  ADD.W           R0, R0, R0,LSL#1
269744:  ADD             R1, PC; dword_6D8200
269746:  ADD.W           R0, R1, R0,LSL#3
26974A:  ADDS            R0, #0x28 ; '('
26974C:  VLD1.32         {D16-D17}, [R0]!
269750:  VLDR            D18, [R0]
269754:  MOV             R0, R4
269756:  VST1.32         {D16-D17}, [R0]!
26975A:  LDR             R1, [R4]
26975C:  VSTR            D18, [R0]
269760:  CMP             R1, #8
269762:  BNE             loc_26976E
269764:  LDR             R0, =(dword_6D8200 - 0x26976C)
269766:  MOVS            R1, #1
269768:  ADD             R0, PC; dword_6D8200
26976A:  STRB.W          R1, [R0,#(byte_6D8224 - 0x6D8200)]
26976E:  LDR             R0, =(dword_6D8200 - 0x269776)
269770:  MOVS            R4, #1
269772:  ADD             R0, PC; dword_6D8200
269774:  LDR             R1, [R0,#(dword_6D8204 - 0x6D8200)]
269776:  ADDS            R1, #1
269778:  UXTB            R1, R1
26977A:  STR             R1, [R0,#(dword_6D8204 - 0x6D8200)]
26977C:  LDR             R0, =(dword_6D8200 - 0x269782)
26977E:  ADD             R0, PC; dword_6D8200
269780:  ADDS            R0, #8; mutex
269782:  BLX             pthread_mutex_unlock
269786:  MOV             R0, R4
269788:  ADD             SP, SP, #8
26978A:  POP.W           {R11}
26978E:  POP             {R4-R7,PC}
