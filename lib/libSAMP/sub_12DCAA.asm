; =========================================================
; Game Engine Function: sub_12DCAA
; Address            : 0x12DCAA - 0x12DD2A
; =========================================================

12DCAA:  PUSH            {R4-R7,LR}
12DCAC:  ADD             R7, SP, #0xC
12DCAE:  PUSH.W          {R8,R9,R11}
12DCB2:  SUB             SP, SP, #8
12DCB4:  MOV             R6, R0
12DCB6:  LDRB            R0, [R0,#0xC]
12DCB8:  DMB.W           ISH
12DCBC:  LSLS            R0, R0, #0x1F
12DCBE:  BNE             loc_12DD22
12DCC0:  ADD.W           R8, R6, #4
12DCC4:  MOV             R9, R2
12DCC6:  MOV             R5, R1
12DCC8:  MOV             R0, R8; this
12DCCA:  BLX             j__ZNSt6__ndk15mutex4lockEv; std::mutex::lock(void)
12DCCE:  LDR             R0, [R6,#8]
12DCD0:  STR             R0, [SP,#0x20+var_1C]
12DCD2:  DMB.W           ISH
12DCD6:  LDREX.W         R1, [R0]
12DCDA:  ADDS            R1, #1
12DCDC:  STREX.W         R2, R1, [R0]
12DCE0:  CMP             R2, #0
12DCE2:  BNE             loc_12DCD6
12DCE4:  MOV             R0, R8; this
12DCE6:  DMB.W           ISH
12DCEA:  BLX             j__ZNSt6__ndk15mutex6unlockEv; std::mutex::unlock(void)
12DCEE:  LDR             R0, [SP,#0x20+var_1C]
12DCF0:  LDRD.W          R6, R4, [R0,#4]
12DCF4:  CMP             R6, R4
12DCF6:  BEQ             loc_12DD1C
12DCF8:  LDR             R0, [R6]
12DCFA:  LDRB            R1, [R0,#8]
12DCFC:  DMB.W           ISH
12DD00:  LSLS            R1, R1, #0x1F
12DD02:  BEQ             loc_12DD18
12DD04:  LDRB            R1, [R0,#9]
12DD06:  DMB.W           ISH
12DD0A:  LSLS            R1, R1, #0x1F
12DD0C:  BNE             loc_12DD18
12DD0E:  LDR             R1, [R0]
12DD10:  LDR             R3, [R1,#0x10]
12DD12:  MOV             R1, R5
12DD14:  MOV             R2, R9
12DD16:  BLX             R3
12DD18:  ADDS            R6, #8
12DD1A:  B               loc_12DCF4
12DD1C:  ADD             R0, SP, #0x20+var_1C
12DD1E:  BL              sub_12DFE0
12DD22:  ADD             SP, SP, #8
12DD24:  POP.W           {R8,R9,R11}
12DD28:  POP             {R4-R7,PC}
