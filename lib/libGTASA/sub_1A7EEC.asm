; =========================================================
; Game Engine Function: sub_1A7EEC
; Address            : 0x1A7EEC - 0x1A7FD4
; =========================================================

1A7EEC:  PUSH            {R4-R7,LR}
1A7EEE:  ADD             R7, SP, #0xC
1A7EF0:  PUSH.W          {R8}
1A7EF4:  SUB             SP, SP, #8
1A7EF6:  LDR             R0, =(unk_A01F88 - 0x1A7F02)
1A7EF8:  MOVS            R5, #0xFF
1A7EFA:  MOVS            R1, #0xFF; unsigned __int8
1A7EFC:  MOVS            R2, #0; unsigned __int8
1A7EFE:  ADD             R0, PC; unk_A01F88 ; this
1A7F00:  MOVS            R3, #0; unsigned __int8
1A7F02:  STR             R5, [SP,#0x18+var_18]; unsigned __int8
1A7F04:  MOV.W           R8, #0
1A7F08:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A7F0C:  LDR             R0, =(unk_A01F8C - 0x1A7F18)
1A7F0E:  MOVS            R1, #0xFF; unsigned __int8
1A7F10:  MOVS            R2, #0xFF; unsigned __int8
1A7F12:  MOVS            R3, #0; unsigned __int8
1A7F14:  ADD             R0, PC; unk_A01F8C ; this
1A7F16:  STR             R5, [SP,#0x18+var_18]; unsigned __int8
1A7F18:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A7F1C:  LDR             R0, =(unk_A01F90 - 0x1A7F28)
1A7F1E:  MOVS            R1, #0x64 ; 'd'
1A7F20:  STR             R1, [SP,#0x18+var_18]; unsigned __int8
1A7F22:  MOVS            R1, #0xFF; unsigned __int8
1A7F24:  ADD             R0, PC; unk_A01F90 ; this
1A7F26:  MOVS            R2, #0; unsigned __int8
1A7F28:  MOVS            R3, #0; unsigned __int8
1A7F2A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A7F2E:  LDR             R0, =(unk_A01F94 - 0x1A7F3A)
1A7F30:  MOVS            R1, #0xFF; unsigned __int8
1A7F32:  MOVS            R2, #0; unsigned __int8
1A7F34:  MOVS            R3, #0; unsigned __int8
1A7F36:  ADD             R0, PC; unk_A01F94 ; this
1A7F38:  STR             R5, [SP,#0x18+var_18]; unsigned __int8
1A7F3A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A7F3E:  LDR             R0, =(vecTweakHandleBarPos_ptr - 0x1A7F50)
1A7F40:  MOVW            R6, #0x6666
1A7F44:  LDR             R1, =(vecTweakHandleBarPos2_ptr - 0x1A7F54)
1A7F46:  MOVT            R6, #0x3F66
1A7F4A:  LDR             R2, =(vecTestResistance_ptr - 0x1A7F56)
1A7F4C:  ADD             R0, PC; vecTweakHandleBarPos_ptr
1A7F4E:  LDR             R3, =(vecChopperHandleBarPos_ptr - 0x1A7F5A)
1A7F50:  ADD             R1, PC; vecTweakHandleBarPos2_ptr
1A7F52:  ADD             R2, PC; vecTestResistance_ptr
1A7F54:  LDR             R5, =(vecBmxHandleBarPos_ptr - 0x1A7F60)
1A7F56:  ADD             R3, PC; vecChopperHandleBarPos_ptr
1A7F58:  LDR             R4, [R0]; vecTweakHandleBarPos
1A7F5A:  LDR             R0, [R1]; vecTweakHandleBarPos2
1A7F5C:  ADD             R5, PC; vecBmxHandleBarPos_ptr
1A7F5E:  LDR             R1, [R2]; vecTestResistance
1A7F60:  LDR             R2, [R3]; vecChopperHandleBarPos
1A7F62:  MOV             R3, #0x3F6147AE
1A7F6A:  LDR             R5, [R5]; vecBmxHandleBarPos
1A7F6C:  STRD.W          R6, R3, [R1]
1A7F70:  MOVW            R6, #0x6666
1A7F74:  STR             R3, [R1,#(dword_A01FA0 - 0xA01F98)]
1A7F76:  MOVW            R3, #0x7AE1
1A7F7A:  MOV.W           R1, #0x3E800000
1A7F7E:  MOVT            R3, #0x3E94
1A7F82:  MOVT            R6, #0x3F06
1A7F86:  STM             R5!, {R1,R3,R6}
1A7F88:  LDR             R5, =(vecMtbHandleBarPos_ptr - 0x1A7F8E)
1A7F8A:  ADD             R5, PC; vecMtbHandleBarPos_ptr
1A7F8C:  LDR             R5, [R5]; vecMtbHandleBarPos
1A7F8E:  STM             R5!, {R1,R3,R6}
1A7F90:  MOVW            R3, #0xA3D
1A7F94:  MOVW            R6, #0xA3D7
1A7F98:  MOVT            R3, #0x3E57
1A7F9C:  MOVT            R6, #0x3F30
1A7FA0:  STM             R2!, {R1,R3,R6}
1A7FA2:  MOVW            R1, #0xD70A
1A7FA6:  MOVW            R2, #0xD70A
1A7FAA:  MOVT            R1, #0xBD23
1A7FAE:  MOVT            R2, #0x3D23
1A7FB2:  STRD.W          R8, R1, [R4]
1A7FB6:  MOVW            R1, #0x999A
1A7FBA:  STR             R2, [R4,#(dword_A02568 - 0xA02560)]
1A7FBC:  MOVW            R2, #0xC28F
1A7FC0:  MOVT            R1, #0xBD99
1A7FC4:  MOVT            R2, #0xBCF5
1A7FC8:  STM.W           R0, {R1,R2,R8}
1A7FCC:  ADD             SP, SP, #8
1A7FCE:  POP.W           {R8}
1A7FD2:  POP             {R4-R7,PC}
