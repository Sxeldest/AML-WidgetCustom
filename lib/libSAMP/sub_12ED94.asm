; =========================================================
; Game Engine Function: sub_12ED94
; Address            : 0x12ED94 - 0x12EE2E
; =========================================================

12ED94:  PUSH            {R4-R7,LR}
12ED96:  ADD             R7, SP, #0xC
12ED98:  PUSH.W          {R11}
12ED9C:  SUB             SP, SP, #0x18
12ED9E:  MOVS            R1, #0
12EDA0:  MOV             R4, R0
12EDA2:  BL              sub_13D71C
12EDA6:  LDR             R0, =(_ZTV14ExtButtonPanel - 0x12EDAC); `vtable for'ExtButtonPanel ...
12EDA8:  ADD             R0, PC; `vtable for'ExtButtonPanel
12EDAA:  ADDS            R0, #8
12EDAC:  STR             R0, [R4]
12EDAE:  MOVS            R0, #0x70 ; 'p'; unsigned int
12EDB0:  BLX             j__Znwj; operator new(uint)
12EDB4:  LDR             R1, =(byte_8F794 - 0x12EDBC)
12EDB6:  MOV             R5, R0
12EDB8:  ADD             R1, PC; byte_8F794 ; s
12EDBA:  MOV             R0, SP; int
12EDBC:  BL              sub_DC6DC
12EDC0:  LDR             R0, =(off_234980 - 0x12EDCA)
12EDC2:  VMOV.F32        S0, #0.5
12EDC6:  ADD             R0, PC; off_234980
12EDC8:  LDR             R0, [R0]; dword_238EC0
12EDCA:  VLDR            S2, [R0]
12EDCE:  VMUL.F32        S0, S2, S0
12EDD2:  VMOV            R2, S0
12EDD6:  MOV             R6, SP
12EDD8:  MOV             R0, R5
12EDDA:  MOV             R1, R6
12EDDC:  BL              sub_13CE34
12EDE0:  LDRB.W          R0, [SP,#0x28+var_28]
12EDE4:  STR             R5, [R4,#0x6C]
12EDE6:  LSLS            R0, R0, #0x1F
12EDE8:  BEQ             loc_12EDF2
12EDEA:  LDR             R0, [SP,#0x28+var_20]; void *
12EDEC:  BLX             j__ZdlPv; operator delete(void *)
12EDF0:  LDR             R5, [R4,#0x6C]
12EDF2:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN14ExtButtonPanelC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x12EDFA); `vtable for'std::__function::__func<ExtButtonPanel::ExtButtonPanel(void)::$_0,std::allocator<ExtButtonPanel::ExtButtonPanel(void)::$_0>,void ()(void)> ...
12EDF4:  STR             R6, [SP,#0x28+var_18]
12EDF6:  ADD             R0, PC; `vtable for'std::__function::__func<ExtButtonPanel::ExtButtonPanel(void)::$_0,std::allocator<ExtButtonPanel::ExtButtonPanel(void)::$_0>,void ()(void)>
12EDF8:  ADDS            R0, #8
12EDFA:  STR             R0, [SP,#0x28+var_28]
12EDFC:  ADD.W           R0, R5, #0x58 ; 'X'
12EE00:  MOV             R1, R6
12EE02:  BL              sub_12C504
12EE06:  LDR             R0, [SP,#0x28+var_18]
12EE08:  CMP             R6, R0
12EE0A:  BEQ             loc_12EE12
12EE0C:  CBZ             R0, loc_12EE1C
12EE0E:  MOVS            R1, #5
12EE10:  B               loc_12EE14
12EE12:  MOVS            R1, #4
12EE14:  LDR             R2, [R0]
12EE16:  LDR.W           R1, [R2,R1,LSL#2]
12EE1A:  BLX             R1
12EE1C:  LDR             R1, [R4,#0x6C]
12EE1E:  MOV             R0, R4
12EE20:  BL              sub_12BDF6
12EE24:  MOV             R0, R4
12EE26:  ADD             SP, SP, #0x18
12EE28:  POP.W           {R11}
12EE2C:  POP             {R4-R7,PC}
