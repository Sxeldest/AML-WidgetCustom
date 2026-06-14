; =========================================================
; Game Engine Function: _ZN4CHID12DrawHelpIconEPKc10HIDMappingfffib
; Address            : 0x28C340 - 0x28C386
; =========================================================

28C340:  PUSH            {R4,R5,R7,LR}
28C342:  ADD             R7, SP, #8
28C344:  SUB             SP, SP, #0x10
28C346:  MOV             LR, R1
28C348:  MOV             R1, R0
28C34A:  LDR             R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28C354)
28C34C:  MOV             R12, R2
28C34E:  LDR             R2, =(_ZN4CHID11m_pInstanceE_ptr - 0x28C356)
28C350:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
28C352:  ADD             R2, PC; _ZN4CHID11m_pInstanceE_ptr
28C354:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
28C356:  LDR             R2, [R2]; CHID::m_pInstance ...
28C358:  LDR             R0, [R0]; CHID::currentInstanceIndex
28C35A:  LDR.W           R0, [R2,R0,LSL#2]
28C35E:  CBZ             R0, loc_28C382
28C360:  LDRD.W          R4, R2, [R7,#arg_4]
28C364:  VMOV            S2, R3
28C368:  LDR             R3, [R0]
28C36A:  VLDR            S0, [R7,#arg_0]
28C36E:  LDR             R5, [R3,#0x20]
28C370:  MOV             R3, R12
28C372:  STRD.W          R4, R2, [SP,#0x18+var_10]
28C376:  MOV             R2, LR
28C378:  VSTR            S2, [SP,#0x18+var_18]
28C37C:  VSTR            S0, [SP,#0x18+var_14]
28C380:  BLX             R5
28C382:  ADD             SP, SP, #0x10
28C384:  POP             {R4,R5,R7,PC}
