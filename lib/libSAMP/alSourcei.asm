; =========================================================
; Game Engine Function: alSourcei
; Address            : 0x1CBC10 - 0x1CC11C
; =========================================================

1CBC10:  PUSH            {R4-R9,R11,LR}
1CBC14:  ADD             R11, SP, #0x18
1CBC18:  MOV             R5, R0
1CBC1C:  MOVW            R0, #0x1020
1CBC20:  MOV             R7, R1
1CBC24:  SUB             R0, R7, R0
1CBC28:  MOV             R6, R2
1CBC2C:  CMP             R0, #3
1CBC30:  BHI             loc_1CBC3C
1CBC34:  CMP             R0, #2
1CBC38:  BNE             loc_1CBC4C
1CBC3C:  MOVW            R0, #0x1001
1CBC40:  SUB             R0, R7, R0
1CBC44:  CMP             R0, #2
1CBC48:  BCS             loc_1CBC68
1CBC4C:  VMOV            S0, R6
1CBC50:  MOV             R0, R5
1CBC54:  MOV             R1, R7
1CBC58:  VCVT.F32.S32    S0, S0
1CBC5C:  VMOV            R2, S0
1CBC60:  POP             {R4-R9,R11,LR}
1CBC64:  B               j_alSourcef
1CBC68:  BL              j_GetContextRef
1CBC6C:  MOV             R4, R0
1CBC70:  CMP             R4, #0
1CBC74:  BEQ             locret_1CBDD8
1CBC78:  ADD             R0, R4, #0x7C ; '|'
1CBC7C:  MOV             R1, R5
1CBC80:  BL              j_LookupUIntMapKey
1CBC84:  MOV             R9, R0
1CBC88:  CMP             R9, #0
1CBC8C:  BEQ             loc_1CBDDC
1CBC90:  LDR             R5, [R4,#0xFC]
1CBC94:  CMP             R7, #0xD000
1CBC98:  BGE             loc_1CBDE8
1CBC9C:  MOVW            R0, #0x1007
1CBCA0:  SUB             R0, R7, R0
1CBCA4:  CMP             R0, #0x2C; switch 45 cases
1CBCA8:  BHI             def_1CBCB8; jumptable 001CBCB8 default case
1CBCAC:  ADR             R1, jpt_1CBCB8
1CBCB0:  MOV             R0, R0,LSL#2
1CBCB4:  LDR             R0, [R0,R1]
1CBCB8:  ADD             PC, R0, R1; switch jump
1CBCBC:  DCD loc_1CBEE8 - 0x1CBCBC; jump table for switch statement
1CBCC0:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBCC4:  DCD loc_1CBEF8 - 0x1CBCBC; jumptable 001CBCB8 case 2
1CBCC8:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBCCC:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBCD0:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBCD4:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBCD8:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBCDC:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBCE0:  DCD loc_1CC008 - 0x1CBCBC; jumptable 001CBCB8 case 9
1CBCE4:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBCE8:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBCEC:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBCF0:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBCF4:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBCF8:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBCFC:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBD00:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBD04:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBD08:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBD0C:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBD10:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBD14:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBD18:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBD1C:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBD20:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBD24:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBD28:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBD2C:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBD30:  DCD loc_1CBD70 - 0x1CBCBC; jumptable 001CBCB8 cases 29-31
1CBD34:  DCD loc_1CBD70 - 0x1CBCBC; jumptable 001CBCB8 cases 29-31
1CBD38:  DCD loc_1CBD70 - 0x1CBCBC; jumptable 001CBCB8 cases 29-31
1CBD3C:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBD40:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBD44:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBD48:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBD4C:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBD50:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBD54:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBD58:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBD5C:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBD60:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBD64:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBD68:  DCD loc_1CBEAC - 0x1CBCBC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBD6C:  DCD loc_1CC014 - 0x1CBCBC; jumptable 001CBCB8 case 44
1CBD70:  CMP             R6, #0; jumptable 001CBCB8 cases 29-31
1CBD74:  BLT             loc_1CC104
1CBD78:  ADD             R0, R5, #8; mutex
1CBD7C:  BL              j_EnterCriticalSection
1CBD80:  MOVW            R0, #0x1024
1CBD84:  CMP             R7, R0
1CBD88:  MOV             R1, #0x3E8
1CBD8C:  LDR             R2, [R9,#0x5C]
1CBD90:  MULEQ           R6, R6, R1
1CBD94:  MOVW            R0, #0x1012
1CBD98:  CMP             R2, R0
1CBD9C:  STR             R6, [R9,#0xC4]
1CBDA0:  STR             R7, [R9,#0xC8]
1CBDA4:  BEQ             loc_1CBDB8
1CBDA8:  LDR             R0, [R9,#0x5C]
1CBDAC:  MOVW            R1, #0x1013
1CBDB0:  CMP             R0, R1
1CBDB4:  BNE             loc_1CC0EC
1CBDB8:  LDR             R0, [R4,#0xE0]
1CBDBC:  CMP             R0, #0
1CBDC0:  BNE             loc_1CC0EC
1CBDC4:  MOV             R0, R9
1CBDC8:  BL              j_ApplyOffset
1CBDCC:  CMP             R0, #0
1CBDD0:  BNE             loc_1CC0EC
1CBDD4:  B               loc_1CC058
1CBDD8:  POP             {R4-R9,R11,PC}
1CBDDC:  MOV             R0, R4
1CBDE0:  MOVW            R1, #0xA001
1CBDE4:  B               loc_1CC10C
1CBDE8:  SUB             R0, R7, #5
1CBDEC:  SUB             R0, R0, #0x20000; switch 8 cases
1CBDF0:  CMP             R0, #7
1CBDF4:  BHI             def_1CBE04; jumptable 001CBE04 default case
1CBDF8:  ADR             R1, jpt_1CBE04
1CBDFC:  MOV             R0, R0,LSL#2
1CBE00:  LDR             R0, [R0,R1]
1CBE04:  ADD             PC, R0, R1; switch jump
1CBE08:  DCD loc_1CBE28 - 0x1CBE08; jump table for switch statement
1CBE0C:  DCD loc_1CBEAC - 0x1CBE08; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBE10:  DCD loc_1CBEAC - 0x1CBE08; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBE14:  DCD loc_1CBEAC - 0x1CBE08; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBE18:  DCD loc_1CBEAC - 0x1CBE08; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBE1C:  DCD loc_1CBEB8 - 0x1CBE08; jumptable 001CBE04 case 131077
1CBE20:  DCD loc_1CBEC8 - 0x1CBE08; jumptable 001CBE04 case 131078
1CBE24:  DCD loc_1CBED8 - 0x1CBE08; jumptable 001CBE04 case 131079
1CBE28:  CMP             R6, #0; jumptable 001CBE04 case 131072
1CBE2C:  BEQ             loc_1CC024
1CBE30:  ADD             R0, R5, #0x84
1CBE34:  MOV             R1, R6
1CBE38:  BL              j_LookupUIntMapKey
1CBE3C:  MOV             R6, R0
1CBE40:  CMP             R6, #0
1CBE44:  BEQ             loc_1CC104
1CBE48:  LDR             R0, [R4,#0xFC]
1CBE4C:  ADD             R0, R0, #8; mutex
1CBE50:  BL              j_EnterCriticalSection
1CBE54:  LDR             R0, [R6,#4]
1CBE58:  STR             R0, [R9,#0x78]
1CBE5C:  VLDR            S0, [R6,#8]
1CBE60:  B               loc_1CC038
1CBE64:  MOVW            R0, #0x202; jumptable 001CBCB8 default case
1CBE68:  CMP             R7, R0
1CBE6C:  BNE             loc_1CBEAC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBE70:  CMP             R6, #1
1CBE74:  BHI             loc_1CC104
1CBE78:  STRB            R6, [R9,#0x4C]
1CBE7C:  B               loc_1CC048
1CBE80:  CMP             R7, #0xD000; jumptable 001CBE04 default case
1CBE84:  BNE             loc_1CBEAC; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBE88:  MOVW            R0, #0xD001
1CBE8C:  SUB             R0, R6, R0
1CBE90:  CMP             R0, #6
1CBE94:  BCS             loc_1CC0FC
1CBE98:  STR             R6, [R9,#0x50]
1CBE9C:  LDRB            R0, [R4,#0xD0]
1CBEA0:  CMP             R0, #0
1CBEA4:  BNE             loc_1CC048
1CBEA8:  B               loc_1CC110
1CBEAC:  MOV             R0, R4; jumptable 001CBCB8 cases 1,3-8,10-28,32-43
1CBEB0:  MOVW            R1, #0xA002
1CBEB4:  B               loc_1CC10C
1CBEB8:  CMP             R6, #1; jumptable 001CBE04 case 131077
1CBEBC:  BHI             loc_1CC104
1CBEC0:  STRB            R6, [R9,#0xB0]
1CBEC4:  B               loc_1CC048
1CBEC8:  CMP             R6, #1; jumptable 001CBE04 case 131078
1CBECC:  BHI             loc_1CC104
1CBED0:  STRB            R6, [R9,#0xB1]
1CBED4:  B               loc_1CC048
1CBED8:  CMP             R6, #1; jumptable 001CBE04 case 131079
1CBEDC:  BHI             loc_1CC104
1CBEE0:  STRB            R6, [R9,#0xB2]
1CBEE4:  B               loc_1CC048
1CBEE8:  CMP             R6, #1; jumptable 001CBCB8 case 0
1CBEEC:  BHI             loc_1CC104
1CBEF0:  STRB            R6, [R9,#0x4D]
1CBEF4:  B               loc_1CC110
1CBEF8:  ADD             R0, R5, #8; jumptable 001CBCB8 case 2
1CBEFC:  BL              j_EnterCriticalSection
1CBF00:  LDR             R0, [R9,#0x5C]
1CBF04:  MOVW            R1, #0x1014
1CBF08:  CMP             R0, R1
1CBF0C:  BEQ             loc_1CBF20
1CBF10:  LDR             R0, [R9,#0x5C]
1CBF14:  MOVW            R1, #0x1011
1CBF18:  CMP             R0, R1
1CBF1C:  BNE             loc_1CC0E0
1CBF20:  CMP             R6, #0
1CBF24:  BEQ             loc_1CC064
1CBF28:  ADD             R0, R5, #0x3C ; '<'
1CBF2C:  MOV             R1, R6
1CBF30:  BL              j_LookupUIntMapKey
1CBF34:  MOV             R6, R0
1CBF38:  CMP             R6, #0
1CBF3C:  BEQ             loc_1CC058
1CBF40:  MOV             R5, #0
1CBF44:  MOVW            R0, #0x1028
1CBF48:  STR             R5, [R9,#0x70]
1CBF4C:  STR             R5, [R9,#0x74]
1CBF50:  STR             R0, [R9,#0xCC]
1CBF54:  MOV             R0, #0xC; size
1CBF58:  BL              malloc
1CBF5C:  ADD             R1, R6, #0x2C ; ','
1CBF60:  STR             R6, [R0]
1CBF64:  STR             R5, [R0,#4]
1CBF68:  STR             R5, [R0,#8]
1CBF6C:  DMB             ISH
1CBF70:  LDREX           R2, [R1]
1CBF74:  ADD             R2, R2, #1
1CBF78:  STREX           R3, R2, [R1]
1CBF7C:  CMP             R3, #0
1CBF80:  BNE             loc_1CBF70
1CBF84:  ADD             R1, R9, #0x6C ; 'l'
1CBF88:  DMB             ISH
1CBF8C:  LDREX           R7, [R1]
1CBF90:  STREX           R2, R0, [R1]
1CBF94:  CMP             R2, #0
1CBF98:  BNE             loc_1CBF8C
1CBF9C:  ADD             R8, R6, #0x30 ; '0'
1CBFA0:  MOV             R5, #1
1CBFA4:  DMB             ISH
1CBFA8:  STR             R5, [R9,#0x70]
1CBFAC:  MOV             R0, R8
1CBFB0:  BL              j_ReadLock
1CBFB4:  LDR             R0, [R6,#0x10]
1CBFB8:  BL              j_ChannelsFromFmt
1CBFBC:  STR             R0, [R9,#0xD0]
1CBFC0:  LDR             R0, [R6,#0x14]
1CBFC4:  BL              j_BytesFromFmt
1CBFC8:  STR             R0, [R9,#0xD4]
1CBFCC:  MOV             R0, R8
1CBFD0:  BL              j_ReadUnlock
1CBFD4:  LDR             R1, =(CalcNonAttnSourceParams_ptr - 0x1CBFEC)
1CBFD8:  MOVW            R3, #0x1F9C
1CBFDC:  LDR             R2, [R6,#0x10]
1CBFE0:  LDR             R0, =(CalcSourceParams_ptr - 0x1CBFF8)
1CBFE4:  LDR             R1, [PC,R1]; CalcNonAttnSourceParams
1CBFE8:  CMP             R2, #0x1500
1CBFEC:  STR             R5, [R9,R3]
1CBFF0:  LDREQ           R1, [PC,R0]; CalcSourceParams
1CBFF4:  MOVW            R0, #0x1FA0
1CBFF8:  STR             R1, [R9,R0]
1CBFFC:  CMP             R7, #0
1CC000:  BNE             loc_1CC09C
1CC004:  B               loc_1CC0EC
1CC008:  MOV             R0, R4; jumptable 001CBCB8 case 9
1CC00C:  MOVW            R1, #0xA004
1CC010:  B               loc_1CC10C
1CC014:  CMP             R6, #1; jumptable 001CBCB8 case 44
1CC018:  BHI             loc_1CC104
1CC01C:  STRB            R6, [R9,#0x54]
1CC020:  B               loc_1CC048
1CC024:  ADD             R0, R5, #8; mutex
1CC028:  BL              j_EnterCriticalSection
1CC02C:  MOV             R0, #0x3F800000
1CC030:  VMOV.F32        S0, #1.0
1CC034:  STR             R0, [R9,#0x78]
1CC038:  VSTR            S0, [R9,#0x7C]
1CC03C:  LDR             R0, [R4,#0xFC]
1CC040:  ADD             R0, R0, #8; mutex
1CC044:  BL              j_LeaveCriticalSection
1CC048:  MOVW            R0, #0x1F9C
1CC04C:  MOV             R1, #1
1CC050:  STR             R1, [R9,R0]
1CC054:  B               loc_1CC110
1CC058:  MOV             R0, R4
1CC05C:  MOVW            R1, #0xA003
1CC060:  B               loc_1CC0E8
1CC064:  MOV             R0, #0
1CC068:  MOVW            R1, #0x1030
1CC06C:  STR             R0, [R9,#0x70]
1CC070:  STR             R0, [R9,#0x74]
1CC074:  STR             R1, [R9,#0xCC]
1CC078:  ADD             R1, R9, #0x6C ; 'l'
1CC07C:  DMB             ISH
1CC080:  LDREX           R7, [R1]
1CC084:  STREX           R2, R0, [R1]
1CC088:  CMP             R2, #0
1CC08C:  BNE             loc_1CC080
1CC090:  DMB             ISH
1CC094:  CMP             R7, #0
1CC098:  BEQ             loc_1CC0EC
1CC09C:  MOV             R0, R7; ptr
1CC0A0:  LDM             R7, {R1,R7}
1CC0A4:  CMP             R1, #0
1CC0A8:  BEQ             loc_1CC0CC
1CC0AC:  ADD             R1, R1, #0x2C ; ','
1CC0B0:  DMB             ISH
1CC0B4:  LDREX           R2, [R1]
1CC0B8:  SUB             R2, R2, #1
1CC0BC:  STREX           R3, R2, [R1]
1CC0C0:  CMP             R3, #0
1CC0C4:  BNE             loc_1CC0B4
1CC0C8:  DMB             ISH
1CC0CC:  BL              free
1CC0D0:  CMP             R7, #0
1CC0D4:  MOV             R0, R7
1CC0D8:  BNE             loc_1CC0A0
1CC0DC:  B               loc_1CC0EC
1CC0E0:  MOV             R0, R4
1CC0E4:  MOVW            R1, #0xA004
1CC0E8:  BL              j_alSetError
1CC0EC:  LDR             R0, [R4,#0xFC]
1CC0F0:  ADD             R0, R0, #8; mutex
1CC0F4:  BL              j_LeaveCriticalSection
1CC0F8:  B               loc_1CC110
1CC0FC:  CMP             R6, #0
1CC100:  BEQ             loc_1CBE98
1CC104:  MOV             R0, R4
1CC108:  MOVW            R1, #0xA003
1CC10C:  BL              j_alSetError
1CC110:  MOV             R0, R4
1CC114:  POP             {R4-R9,R11,LR}
1CC118:  B               j_ALCcontext_DecRef
