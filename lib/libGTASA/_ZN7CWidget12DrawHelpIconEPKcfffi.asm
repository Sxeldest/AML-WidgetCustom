; =========================================================
; Game Engine Function: _ZN7CWidget12DrawHelpIconEPKcfffi
; Address            : 0x2B3B7C - 0x2B3BBC
; =========================================================

2B3B7C:  PUSH            {R4-R7,LR}
2B3B7E:  ADD             R7, SP, #0xC
2B3B80:  PUSH.W          {R8}
2B3B84:  SUB             SP, SP, #0x10; float
2B3B86:  MOV             R4, R0
2B3B88:  MOV             R8, R3
2B3B8A:  LDR             R0, [R4,#4]
2B3B8C:  MOV             R5, R2
2B3B8E:  MOV             R6, R1
2B3B90:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2B3B94:  CMP             R0, #1
2B3B96:  BNE             loc_2B3BB4
2B3B98:  LDR             R1, [R4,#4]; int
2B3B9A:  MOVS            R2, #0
2B3B9C:  LDR             R0, [R7,#arg_4]
2B3B9E:  MOV             R3, R8; int
2B3BA0:  VLDR            S0, [R7,#arg_0]
2B3BA4:  STRD.W          R0, R2, [SP,#0x20+var_1C]; int
2B3BA8:  MOV             R0, R6; int
2B3BAA:  MOV             R2, R5; int
2B3BAC:  VSTR            S0, [SP,#0x20+var_20]
2B3BB0:  BLX             j__ZN4CHID12DrawHelpIconEPKc10HIDMappingfffib; CHID::DrawHelpIcon(char const*,HIDMapping,float,float,float,int,bool)
2B3BB4:  ADD             SP, SP, #0x10
2B3BB6:  POP.W           {R8}
2B3BBA:  POP             {R4-R7,PC}
