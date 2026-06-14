; =========================================================
; Game Engine Function: _ZN6CRadar19AddBlipToLegendListEhi
; Address            : 0x441A08 - 0x441B52
; =========================================================

441A08:  PUSH            {R4-R7,LR}
441A0A:  ADD             R7, SP, #0xC
441A0C:  PUSH.W          {R11}
441A10:  SUB             SP, SP, #8
441A12:  LDR             R2, =(gMobileMenu_ptr - 0x441A18)
441A14:  ADD             R2, PC; gMobileMenu_ptr
441A16:  LDR             R2, [R2]; gMobileMenu
441A18:  LDRB.W          R2, [R2,#(byte_6E00D8 - 0x6E006C)]
441A1C:  CMP             R2, #0
441A1E:  BEQ.W           loc_441B4A
441A22:  CBZ             R0, loc_441A4E
441A24:  LDR             R2, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x441A2E)
441A26:  ADD.W           R3, R1, R1,LSL#2
441A2A:  ADD             R2, PC; _ZN6CRadar13ms_RadarTraceE_ptr
441A2C:  LDR             R2, [R2]; CRadar::ms_RadarTrace ...
441A2E:  ADD.W           R2, R2, R3,LSL#3
441A32:  LDRH.W          R3, [R2,#0x25]
441A36:  UBFX.W          R2, R3, #0xA, #4
441A3A:  SUBS            R5, R2, #1
441A3C:  CMP             R5, #2
441A3E:  BCC             loc_441A52
441A40:  CMP             R2, #3
441A42:  BEQ             loc_441A62
441A44:  CMP             R2, #4
441A46:  ITE NE
441A48:  MOVNE           R2, #0xFB
441A4A:  MOVEQ           R2, #0xFF
441A4C:  B               loc_441A64
441A4E:  MOV             R2, R1
441A50:  B               loc_441A64
441A52:  LSRS            R2, R3, #3
441A54:  MOV             R3, #0x7FFFFFFE
441A5C:  BFI.W           R2, R3, #1, #0x1F
441A60:  B               loc_441A64
441A62:  MOVS            R2, #0xFE
441A64:  LDR             R3, =(_ZN6CRadar13MapLegendListE_ptr - 0x441A70)
441A66:  SXTB            R6, R2
441A68:  MOVS            R2, #0
441A6A:  MOVS            R4, #0
441A6C:  ADD             R3, PC; _ZN6CRadar13MapLegendListE_ptr
441A6E:  LDR             R3, [R3]; CRadar::MapLegendList ...
441A70:  LDRSH.W         R5, [R3,R2,LSL#1]
441A74:  ADDS            R2, #1
441A76:  CMP             R6, R5
441A78:  IT EQ
441A7A:  MOVEQ           R4, #1
441A7C:  CMP             R2, #0xFA
441A7E:  BNE             loc_441A70
441A80:  LSLS            R2, R4, #0x18
441A82:  BNE             loc_441B4A
441A84:  LDR             R2, =(_ZN6CRadar16MapLegendCounterE_ptr - 0x441A8E)
441A86:  CMP             R0, #0
441A88:  LDR             R3, =(_ZN6CRadar13MapLegendListE_ptr - 0x441A90)
441A8A:  ADD             R2, PC; _ZN6CRadar16MapLegendCounterE_ptr
441A8C:  ADD             R3, PC; _ZN6CRadar13MapLegendListE_ptr
441A8E:  LDR             R2, [R2]; CRadar::MapLegendCounter ...
441A90:  LDR             R3, [R3]; CRadar::MapLegendList ...
441A92:  LDRH            R5, [R2]; CRadar::MapLegendCounter
441A94:  STRH.W          R6, [R3,R5,LSL#1]
441A98:  ADD.W           R3, R5, #1
441A9C:  STRH            R3, [R2]; CRadar::MapLegendCounter
441A9E:  BEQ             loc_441B4A
441AA0:  LDR             R0, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x441AAA)
441AA2:  ADD.W           R1, R1, R1,LSL#2
441AA6:  ADD             R0, PC; _ZN6CRadar13ms_RadarTraceE_ptr
441AA8:  LDR             R2, [R0]; CRadar::ms_RadarTrace ...
441AAA:  LDR.W           R0, [R2,R1,LSL#3]
441AAE:  CMP             R0, #8; switch 9 cases
441AB0:  BHI             def_441AC0; jumptable 00441AC0 default case
441AB2:  ADD.W           R1, R2, R1,LSL#3
441AB6:  LDRH.W          R3, [R1,#0x25]
441ABA:  MOVS            R1, #0xC
441ABC:  AND.W           R2, R3, #1
441AC0:  TBB.W           [PC,R0]; switch jump
441AC4:  DCB 5; jump table for switch statement
441AC5:  DCB 0xF
441AC6:  DCB 0xA
441AC7:  DCB 0x14
441AC8:  DCB 0x19
441AC9:  DCB 5
441ACA:  DCB 0xA
441ACB:  DCB 0x1E
441ACC:  DCB 0x22
441ACD:  ALIGN 2
441ACE:  MOVS            R1, #0; jumptable 00441AC0 cases 0,5
441AD0:  CMP             R2, #0
441AD2:  IT EQ
441AD4:  MOVEQ           R1, #0xA
441AD6:  B               loc_441B08; jumptable 00441AC0 case 8
441AD8:  MOVS            R1, #3; jumptable 00441AC0 cases 2,6
441ADA:  CMP             R2, #0
441ADC:  IT EQ
441ADE:  MOVEQ           R1, #0xE
441AE0:  B               loc_441B08; jumptable 00441AC0 case 8
441AE2:  MOVS            R1, #1; jumptable 00441AC0 case 1
441AE4:  CMP             R2, #0
441AE6:  IT EQ
441AE8:  MOVEQ           R1, #0xB
441AEA:  B               loc_441B08; jumptable 00441AC0 case 8
441AEC:  MOVS            R0, #4; jumptable 00441AC0 case 3
441AEE:  EOR.W           R0, R0, R2,LSL#2
441AF2:  ADDS            R1, R0, #5
441AF4:  B               loc_441B08; jumptable 00441AC0 case 8
441AF6:  MOVS            R1, #0xC; jumptable 00441AC0 case 4
441AF8:  CMP             R2, #0
441AFA:  IT EQ
441AFC:  MOVEQ           R1, #7
441AFE:  B               loc_441B08; jumptable 00441AC0 case 8
441B00:  LSLS            R0, R3, #0x1C; jumptable 00441AC0 case 7
441B02:  MOVS            R1, #0xE
441B04:  AND.W           R1, R1, R0,ASR#31
441B08:  LDR             R0, =(HudColour_ptr - 0x441B10); jumptable 00441AC0 case 8
441B0A:  UXTB            R1, R1; unsigned __int8
441B0C:  ADD             R0, PC; HudColour_ptr
441B0E:  LDR             R0, [R0]; HudColour ; this
441B10:  BLX             j__ZN11CHudColours12GetIntColourEh; CHudColours::GetIntColour(uchar)
441B14:  MOVS            R1, #0xFF; jumptable 00441AC0 default case
441B16:  STR             R1, [SP,#0x18+var_18]; unsigned __int8
441B18:  UBFX.W          R2, R0, #0x10, #8; unsigned __int8
441B1C:  LSRS            R1, R0, #0x18; unsigned __int8
441B1E:  UBFX.W          R3, R0, #8, #8; unsigned __int8
441B22:  ADD             R0, SP, #0x18+var_14; this
441B24:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
441B28:  LDR             R0, =(_ZN6CRadar15ArrowBlipColourE_ptr - 0x441B32)
441B2A:  LDRB.W          R1, [SP,#0x18+var_14]
441B2E:  ADD             R0, PC; _ZN6CRadar15ArrowBlipColourE_ptr
441B30:  LDR             R0, [R0]; CRadar::ArrowBlipColour ...
441B32:  SUB.W           R0, R0, R6,LSL#2
441B36:  STRB            R1, [R0]
441B38:  LDRB.W          R1, [SP,#0x18+var_13]
441B3C:  STRB            R1, [R0,#1]
441B3E:  LDRB.W          R1, [SP,#0x18+var_12]
441B42:  STRB            R1, [R0,#2]
441B44:  LDRB.W          R1, [SP,#0x18+var_11]
441B48:  STRB            R1, [R0,#3]
441B4A:  ADD             SP, SP, #8
441B4C:  POP.W           {R11}
441B50:  POP             {R4-R7,PC}
