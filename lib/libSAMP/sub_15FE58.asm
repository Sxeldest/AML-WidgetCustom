; =========================================================
; Game Engine Function: sub_15FE58
; Address            : 0x15FE58 - 0x15FF04
; =========================================================

15FE58:  PUSH            {R4-R7,LR}
15FE5A:  ADD             R7, SP, #0xC
15FE5C:  PUSH.W          {R8-R10}
15FE60:  SUB             SP, SP, #8
15FE62:  MOV             R4, R2
15FE64:  CMP             R2, #0
15FE66:  ITE NE
15FE68:  LDRNE.W         R8, [R4,#0x5C]
15FE6C:  MOVEQ.W         R8, #0
15FE70:  LDR             R6, =(dword_381A54 - 0x15FE7A)
15FE72:  MOV             R10, R0
15FE74:  MOV             R9, R1
15FE76:  ADD             R6, PC; dword_381A54
15FE78:  MOV             R2, R9
15FE7A:  MOV             R3, R4
15FE7C:  LDR             R0, [R6]
15FE7E:  LDR             R1, [R0]
15FE80:  LDR             R5, [R1,#8]
15FE82:  MOV             R1, R10
15FE84:  BLX             R5
15FE86:  CMP             R0, #1
15FE88:  BNE             loc_15FEC8
15FE8A:  MOVS            R0, #0
15FE8C:  STR             R0, [SP,#0x20+var_1C]
15FE8E:  MOV             R0, #0x3B9ACA00
15FE96:  STR             R0, [SP,#0x20+var_20]
15FE98:  MOV             R0, SP
15FE9A:  BLX             j__ZNSt6__ndk111this_thread9sleep_forERKNS_6chrono8durationIxNS_5ratioILx1ELx1000000000EEEEE; std::this_thread::sleep_for(std::chrono::duration<long long,std::ratio<1ll,1000000000ll>> const&)
15FE9E:  LDR             R0, [R6]
15FEA0:  ADD.W           R0, R0, R10,LSL#4
15FEA4:  LDR.W           R1, [R0,#0x82C]
15FEA8:  AND.W           R1, R1, R10
15FEAC:  CMP             R1, R10
15FEAE:  BEQ             loc_15FEFC
15FEB0:  LDR.W           R3, [R0,#0x828]
15FEB4:  LDRB.W          R0, [R0,#0x830]
15FEB8:  LSLS            R0, R0, #0x1D
15FEBA:  BPL             loc_15FEF6
15FEBC:  CBZ             R3, loc_15FEF6
15FEBE:  MOV             R0, R10
15FEC0:  MOV             R1, R9
15FEC2:  MOV             R2, R4
15FEC4:  BLX             R3
15FEC6:  B               loc_15FEFC
15FEC8:  CBZ             R4, loc_15FEFC
15FECA:  LDR.W           R0, [R4,#0x5C]!
15FECE:  CMP             R8, R0
15FED0:  BEQ             loc_15FEFC
15FED2:  LDR             R1, =(byte_8F794 - 0x15FEDC)
15FED4:  MOVS            R0, #3; int
15FED6:  MOVS            R2, #0
15FED8:  ADD             R1, PC; byte_8F794 ; text
15FEDA:  BL              sub_ED4F8
15FEDE:  LDR             R1, =(aContinueExecut - 0x15FEEA); "Continue execute at {:X}" ...
15FEE0:  MOVS            R0, #3
15FEE2:  MOVS            R2, #0x18
15FEE4:  MOV             R3, R4
15FEE6:  ADD             R1, PC; "Continue execute at {:X}"
15FEE8:  ADD             SP, SP, #8
15FEEA:  POP.W           {R8-R10}
15FEEE:  POP.W           {R4-R7,LR}
15FEF2:  B.W             sub_1606F4
15FEF6:  CBZ             R3, loc_15FEFC
15FEF8:  MOV             R0, R10
15FEFA:  BLX             R3
15FEFC:  ADD             SP, SP, #8
15FEFE:  POP.W           {R8-R10}
15FF02:  POP             {R4-R7,PC}
