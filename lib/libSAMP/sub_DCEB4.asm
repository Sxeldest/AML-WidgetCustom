; =========================================================
; Game Engine Function: sub_DCEB4
; Address            : 0xDCEB4 - 0xDCF18
; =========================================================

DCEB4:  PUSH            {R4-R7,LR}
DCEB6:  ADD             R7, SP, #0xC
DCEB8:  PUSH.W          {R8}
DCEBC:  LDR             R4, =(a00010203040506 - 0xDCEC8); "000102030405060708091011121314151617181"... ...
DCEBE:  ADD.W           R12, R1, R3
DCEC2:  CMP             R2, #0x64 ; 'd'
DCEC4:  ADD             R4, PC; "000102030405060708091011121314151617181"...
DCEC6:  BCC             loc_DCEF6
DCEC8:  MOVW            LR, #0x851F
DCECC:  MOV.W           R8, #0x64 ; 'd'
DCED0:  MOVT            LR, #0x51EB
DCED4:  MOVW            R6, #0x270F
DCED8:  MOV             R3, R12
DCEDA:  UMULL.W         R1, R5, R2, LR
DCEDE:  CMP             R2, R6
DCEE0:  MOV.W           R1, R5,LSR#5
DCEE4:  MLS.W           R5, R1, R8, R2
DCEE8:  MOV             R2, R1
DCEEA:  LDRH.W          R5, [R4,R5,LSL#1]
DCEEE:  STRH.W          R5, [R3,#-2]!
DCEF2:  BHI             loc_DCEDA
DCEF4:  B               loc_DCEFA
DCEF6:  MOV             R1, R2
DCEF8:  MOV             R3, R12
DCEFA:  CMP             R1, #9
DCEFC:  BHI             loc_DCF06
DCEFE:  ADDS            R1, #0x30 ; '0'
DCF00:  STRB.W          R1, [R3,#-1]!
DCF04:  B               loc_DCF0E
DCF06:  LDRH.W          R1, [R4,R1,LSL#1]
DCF0A:  STRH.W          R1, [R3,#-2]!
DCF0E:  STRD.W          R3, R12, [R0]
DCF12:  POP.W           {R8}
DCF16:  POP             {R4-R7,PC}
