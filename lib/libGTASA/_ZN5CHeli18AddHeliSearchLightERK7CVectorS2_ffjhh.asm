; =========================================================
; Game Engine Function: _ZN5CHeli18AddHeliSearchLightERK7CVectorS2_ffjhh
; Address            : 0x572C50 - 0x572CB2
; =========================================================

572C50:  PUSH            {R4-R7,LR}
572C52:  ADD             R7, SP, #0xC
572C54:  PUSH.W          {R8,R9,R11}
572C58:  LDR.W           R12, =(_ZN5CHeli20NumberOfSearchLightsE_ptr - 0x572C64)
572C5C:  MOVS            R5, #0x4C ; 'L'
572C5E:  LDR             R4, =(_ZN5CHeli16HeliSearchLightsE_ptr - 0x572C66)
572C60:  ADD             R12, PC; _ZN5CHeli20NumberOfSearchLightsE_ptr
572C62:  ADD             R4, PC; _ZN5CHeli16HeliSearchLightsE_ptr
572C64:  LDR.W           R12, [R12]; CHeli::NumberOfSearchLights ...
572C68:  LDR             R4, [R4]; CHeli::HeliSearchLights ...
572C6A:  LDR.W           LR, [R12]; CHeli::NumberOfSearchLights
572C6E:  LDRD.W          R6, R9, [R0]
572C72:  LDR             R0, [R0,#8]
572C74:  MUL.W           R8, LR, R5
572C78:  MLA.W           R5, LR, R5, R4
572C7C:  STR.W           R6, [R4,R8]
572C80:  STRD.W          R9, R0, [R5,#4]
572C84:  LDRD.W          R0, R4, [R1]
572C88:  LDR             R1, [R1,#8]
572C8A:  LDRD.W          R6, R8, [R7,#arg_0]
572C8E:  STR             R1, [R5,#0x14]
572C90:  STRD.W          R0, R4, [R5,#0xC]
572C94:  ADD.W           R0, R5, #0x18
572C98:  LDR             R1, [R7,#arg_8]
572C9A:  STM             R0!, {R2,R3,R6}
572C9C:  ADD.W           R0, LR, #1
572CA0:  STRB.W          R8, [R5,#0x24]
572CA4:  STRB.W          R1, [R5,#0x25]
572CA8:  STR.W           R0, [R12]; CHeli::NumberOfSearchLights
572CAC:  POP.W           {R8,R9,R11}
572CB0:  POP             {R4-R7,PC}
