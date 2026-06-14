; =========================================================
; Game Engine Function: sub_105CF4
; Address            : 0x105CF4 - 0x105D8A
; =========================================================

105CF4:  PUSH            {R4-R7,LR}
105CF6:  ADD             R7, SP, #0xC
105CF8:  PUSH.W          {R8,R9,R11}
105CFC:  LDR             R1, =(aTs - 0x105D04); "Ts" ...
105CFE:  MOV             R4, R0
105D00:  ADD             R1, PC; "Ts"
105D02:  ADDS            R2, R1, #2
105D04:  BL              sub_FE18C
105D08:  CBZ             R0, loc_105D14
105D0A:  LDR             R0, =(aStruct - 0x105D10); "struct" ...
105D0C:  ADD             R0, PC; "struct"
105D0E:  ADD.W           R8, R0, #6
105D12:  B               loc_105D42
105D14:  LDR             R1, =(aTu - 0x105D1C); "Tu" ...
105D16:  MOV             R0, R4
105D18:  ADD             R1, PC; "Tu"
105D1A:  ADDS            R2, R1, #2
105D1C:  BL              sub_FE18C
105D20:  CBZ             R0, loc_105D2C
105D22:  LDR             R0, =(aUnion - 0x105D28); "union" ...
105D24:  ADD             R0, PC; "union"
105D26:  ADD.W           R8, R0, #5
105D2A:  B               loc_105D42
105D2C:  LDR             R1, =(aTe - 0x105D34); "Te" ...
105D2E:  MOV             R0, R4
105D30:  ADD             R1, PC; "Te"
105D32:  ADDS            R2, R1, #2
105D34:  BL              sub_FE18C
105D38:  CBZ             R0, loc_105D80
105D3A:  LDR             R0, =(aEnum - 0x105D40); "enum" ...
105D3C:  ADD             R0, PC; "enum"
105D3E:  ADD.W           R8, R0, #4
105D42:  MOV             R9, R0
105D44:  MOV             R0, R4
105D46:  MOVS            R1, #0
105D48:  MOVS            R5, #0
105D4A:  BL              sub_FF2B8
105D4E:  CBZ             R0, loc_105D78
105D50:  MOV             R6, R0
105D52:  CMP             R9, R8
105D54:  BEQ             loc_105D76
105D56:  ADD.W           R0, R4, #0x198
105D5A:  MOVS            R1, #0x14
105D5C:  BL              sub_FFA98
105D60:  MOV             R5, R0
105D62:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle22ElaboratedTypeSpefTypeE - 0x105D6A); `vtable for'`anonymous namespace'::itanium_demangle::ElaboratedTypeSpefType ...
105D64:  LDR             R0, =0x1010106
105D66:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::ElaboratedTypeSpefType
105D68:  STRD.W          R9, R8, [R5,#8]
105D6C:  ADDS            R1, #8
105D6E:  STR             R6, [R5,#0x10]
105D70:  STRD.W          R1, R0, [R5]
105D74:  B               loc_105D78
105D76:  MOV             R5, R6
105D78:  MOV             R0, R5
105D7A:  POP.W           {R8,R9,R11}
105D7E:  POP             {R4-R7,PC}
105D80:  MOV.W           R9, #0
105D84:  MOV.W           R8, #0
105D88:  B               loc_105D44
