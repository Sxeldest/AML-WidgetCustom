; =========================================================
; Game Engine Function: INT123_synth_2to1_8bit_mono
; Address            : 0x236F70 - 0x23703C
; =========================================================

236F70:  PUSH            {R4-R7,LR}
236F72:  ADD             R7, SP, #0xC
236F74:  PUSH.W          {R8-R10}
236F78:  SUB             SP, SP, #0x28
236F7A:  MOV             R4, R1
236F7C:  LDR             R1, =(__stack_chk_guard_ptr - 0x236F8A)
236F7E:  MOVW            R8, #0xB2A8
236F82:  MOVW            R9, #0xB2A0
236F86:  ADD             R1, PC; __stack_chk_guard_ptr
236F88:  MOV             R2, R4
236F8A:  MOVS            R3, #0
236F8C:  LDR             R1, [R1]; __stack_chk_guard
236F8E:  LDR             R1, [R1]
236F90:  STR             R1, [SP,#0x40+var_1C]
236F92:  MOVW            R1, #0x91A8
236F96:  LDR             R6, [R4,R1]
236F98:  ADD             R1, SP, #0x40+var_3C
236F9A:  LDR.W           R10, [R4,R8]
236F9E:  LDR.W           R5, [R4,R9]
236FA2:  STR.W           R1, [R4,R9]
236FA6:  MOVS            R1, #0
236FA8:  STR.W           R1, [R4,R8]
236FAC:  MOVS            R1, #0
236FAE:  BLX             R6
236FB0:  STR.W           R5, [R4,R9]
236FB4:  ADD.W           R2, R5, R10
236FB8:  LDRB.W          R1, [SP,#0x40+var_3C]
236FBC:  STRB.W          R1, [R5,R10]
236FC0:  LDRB.W          R1, [SP,#0x40+var_3A]
236FC4:  STRB            R1, [R2,#1]
236FC6:  LDRB.W          R1, [SP,#0x40+var_38]
236FCA:  STRB            R1, [R2,#2]
236FCC:  LDRB.W          R1, [SP,#0x40+var_36]
236FD0:  STRB            R1, [R2,#3]
236FD2:  LDRB.W          R1, [SP,#0x40+var_34]
236FD6:  STRB            R1, [R2,#4]
236FD8:  LDRB.W          R1, [SP,#0x40+var_32]
236FDC:  STRB            R1, [R2,#5]
236FDE:  LDRB.W          R1, [SP,#0x40+var_30]
236FE2:  STRB            R1, [R2,#6]
236FE4:  LDRB.W          R1, [SP,#0x40+var_2E]
236FE8:  STRB            R1, [R2,#7]
236FEA:  LDRB.W          R1, [SP,#0x40+var_2C]
236FEE:  STRB            R1, [R2,#8]
236FF0:  LDRB.W          R1, [SP,#0x40+var_2A]
236FF4:  STRB            R1, [R2,#9]
236FF6:  LDRB.W          R1, [SP,#0x40+var_28]
236FFA:  STRB            R1, [R2,#0xA]
236FFC:  LDRB.W          R1, [SP,#0x40+var_26]
237000:  STRB            R1, [R2,#0xB]
237002:  LDRB.W          R1, [SP,#0x40+var_24]
237006:  STRB            R1, [R2,#0xC]
237008:  LDRB.W          R1, [SP,#0x40+var_22]
23700C:  STRB            R1, [R2,#0xD]
23700E:  LDRB.W          R1, [SP,#0x40+var_20]
237012:  STRB            R1, [R2,#0xE]
237014:  LDRB.W          R1, [SP,#0x40+var_1E]
237018:  STRB            R1, [R2,#0xF]
23701A:  ADD.W           R1, R10, #0x10
23701E:  STR.W           R1, [R4,R8]
237022:  LDR             R1, =(__stack_chk_guard_ptr - 0x23702A)
237024:  LDR             R2, [SP,#0x40+var_1C]
237026:  ADD             R1, PC; __stack_chk_guard_ptr
237028:  LDR             R1, [R1]; __stack_chk_guard
23702A:  LDR             R1, [R1]
23702C:  SUBS            R1, R1, R2
23702E:  ITTT EQ
237030:  ADDEQ           SP, SP, #0x28 ; '('
237032:  POPEQ.W         {R8-R10}
237036:  POPEQ           {R4-R7,PC}
237038:  BLX             __stack_chk_fail
