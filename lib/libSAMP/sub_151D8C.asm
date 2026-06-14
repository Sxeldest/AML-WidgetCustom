; =========================================================
; Game Engine Function: sub_151D8C
; Address            : 0x151D8C - 0x151E08
; =========================================================

151D8C:  PUSH            {R4,R5,R7,LR}
151D8E:  ADD             R7, SP, #8
151D90:  SUB             SP, SP, #8
151D92:  MOV             R4, R0
151D94:  MOV             R5, R0
151D96:  LDR.W           R0, [R4,#0x30]!
151D9A:  MOVS            R1, #0
151D9C:  STRD.W          R1, R1, [SP,#0x10+var_10]
151DA0:  MOV             R1, SP
151DA2:  BL              sub_1521A2
151DA6:  CBZ             R0, loc_151DB0
151DA8:  MOVS            R4, #1
151DAA:  MOV             R0, R4
151DAC:  ADD             SP, SP, #8
151DAE:  POP             {R4,R5,R7,PC}
151DB0:  MOV             R0, SP
151DB2:  MOV             R1, R4
151DB4:  BL              sub_151E12
151DB8:  LDR             R0, [SP,#0x10+var_10]
151DBA:  CBZ             R0, loc_151DD4
151DBC:  LDR             R1, [R0]
151DBE:  MOVS            R4, #0
151DC0:  CBZ             R1, loc_151DD6
151DC2:  STR             R4, [R0]
151DC4:  MOV             R0, R5
151DC6:  BL              sub_151928
151DCA:  MOV             R4, R0
151DCC:  CMP             R0, #0
151DCE:  IT NE
151DD0:  MOVNE           R4, #2
151DD2:  B               loc_151DD6
151DD4:  MOVS            R4, #0
151DD6:  LDR             R5, [SP,#0x10+var_C]
151DD8:  CMP             R5, #0
151DDA:  BEQ             loc_151DAA
151DDC:  ADDS            R0, R5, #4
151DDE:  DMB.W           ISH
151DE2:  LDREX.W         R1, [R0]
151DE6:  SUBS            R2, R1, #1
151DE8:  STREX.W         R3, R2, [R0]
151DEC:  CMP             R3, #0
151DEE:  BNE             loc_151DE2
151DF0:  CMP             R1, #0
151DF2:  DMB.W           ISH
151DF6:  BNE             loc_151DAA
151DF8:  LDR             R0, [R5]
151DFA:  LDR             R1, [R0,#8]
151DFC:  MOV             R0, R5
151DFE:  BLX             R1
151E00:  MOV             R0, R5; this
151E02:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
151E06:  B               loc_151DAA
