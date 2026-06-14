; =========================================================
; Game Engine Function: sub_15FF90
; Address            : 0x15FF90 - 0x160068
; =========================================================

15FF90:  LDR.W           R2, [R0,#0x804]
15FF94:  LDR.W           R12, [R0,#0x808]
15FF98:  CMP             R2, R12
15FF9A:  BEQ             loc_15FFAA
15FF9C:  LDR             R3, [R2,#4]
15FF9E:  CBZ             R3, loc_15FFB2
15FFA0:  LDR             R3, [R3,#4]
15FFA2:  ADDS            R3, #1
15FFA4:  BEQ             loc_15FFB2
15FFA6:  ADDS            R2, #8
15FFA8:  B               loc_15FF98
15FFAA:  ADDW            R0, R0, #0x804
15FFAE:  B.W             loc_15FFC4
15FFB2:  LDR             R0, [R2]
15FFB4:  LDR             R3, [R1]
15FFB6:  STR             R3, [R2]
15FFB8:  STR             R0, [R1]
15FFBA:  LDR             R3, [R1,#4]
15FFBC:  LDR             R0, [R2,#4]
15FFBE:  STR             R3, [R2,#4]
15FFC0:  STR             R0, [R1,#4]
15FFC2:  BX              LR
15FFC4:  PUSH            {R4,R5,R7,LR}
15FFC6:  ADD             R7, SP, #0x10+var_8
15FFC8:  SUB             SP, SP, #0x18
15FFCA:  MOV             R4, R0
15FFCC:  MOV             R5, R1
15FFCE:  LDR             R0, [R0,#4]
15FFD0:  LDR             R1, [R4,#8]
15FFD2:  CMP             R0, R1
15FFD4:  BEQ             loc_15FFF6
15FFD6:  LDRD.W          R2, R1, [R5]
15FFDA:  STRD.W          R2, R1, [R0]
15FFDE:  CBZ             R1, loc_15FFF0
15FFE0:  ADDS            R1, #8
15FFE2:  LDREX.W         R2, [R1]
15FFE6:  ADDS            R2, #1
15FFE8:  STREX.W         R3, R2, [R1]
15FFEC:  CMP             R3, #0
15FFEE:  BNE             loc_15FFE2
15FFF0:  ADDS            R0, #8
15FFF2:  STR             R0, [R4,#4]
15FFF4:  B               loc_16005E
15FFF6:  LDR             R1, [R4]
15FFF8:  SUBS            R0, R0, R1
15FFFA:  MOVS            R1, #1
15FFFC:  ADD.W           R1, R1, R0,ASR#3
160000:  CMP.W           R1, #0x20000000
160004:  BCS             loc_160062
160006:  MOVW            R3, #0xFFF8
16000A:  CMP.W           R1, R0,ASR#2
16000E:  MOVT            R3, #0x7FFF
160012:  IT LS
160014:  ASRLS           R1, R0, #2
160016:  CMP             R0, R3
160018:  MOV.W           R2, R0,ASR#3
16001C:  ADD.W           R3, R4, #8
160020:  ADD             R0, SP, #0x28+var_24
160022:  IT CS
160024:  MOVCS           R1, #0x1FFFFFFF
160028:  BL              sub_160898
16002C:  LDR             R0, [SP,#0x28+var_1C]
16002E:  LDRD.W          R2, R1, [R5]
160032:  STRD.W          R2, R1, [R0]
160036:  CBZ             R1, loc_16004C
160038:  ADD.W           R0, R1, #8
16003C:  LDREX.W         R1, [R0]
160040:  ADDS            R1, #1
160042:  STREX.W         R2, R1, [R0]
160046:  CMP             R2, #0
160048:  BNE             loc_16003C
16004A:  LDR             R0, [SP,#0x28+var_1C]
16004C:  ADDS            R0, #8
16004E:  STR             R0, [SP,#0x28+var_1C]
160050:  ADD             R1, SP, #0x28+var_24
160052:  MOV             R0, R4
160054:  BL              sub_1608E0
160058:  ADD             R0, SP, #0x28+var_24
16005A:  BL              sub_160930
16005E:  ADD             SP, SP, #0x18
160060:  POP             {R4,R5,R7,PC}
160062:  MOV             R0, R4
160064:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
