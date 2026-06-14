; =========================================================
; Game Engine Function: sub_5FBF8
; Address            : 0x5FBF8 - 0x5FC58
; =========================================================

5FBF8:  PUSH            {R4-R7,LR}
5FBFA:  ADD             R7, SP, #0xC
5FBFC:  PUSH.W          {R8,R9,R11}
5FC00:  MOV             R6, R0
5FC02:  MOV             R0, R1; s
5FC04:  MOV             R8, R1
5FC06:  BLX             strlen
5FC0A:  CMN.W           R0, #0x10
5FC0E:  BCS             loc_5FC52
5FC10:  MOV             R5, R0
5FC12:  CMP             R0, #0xB
5FC14:  BCS             loc_5FC22
5FC16:  LSLS            R0, R5, #1
5FC18:  MOV             R4, R6
5FC1A:  STRB.W          R0, [R4],#1
5FC1E:  CBNZ            R5, loc_5FC3C
5FC20:  B               loc_5FC46
5FC22:  ADD.W           R0, R5, #0x10
5FC26:  BIC.W           R9, R0, #0xF
5FC2A:  MOV             R0, R9; unsigned int
5FC2C:  BLX             j__Znwj; operator new(uint)
5FC30:  MOV             R4, R0
5FC32:  ADD.W           R0, R9, #1
5FC36:  STRD.W          R0, R5, [R6]
5FC3A:  STR             R4, [R6,#8]
5FC3C:  MOV             R0, R4; dest
5FC3E:  MOV             R1, R8; src
5FC40:  MOV             R2, R5; n
5FC42:  BLX             j_memcpy
5FC46:  MOVS            R0, #0
5FC48:  STRB            R0, [R4,R5]
5FC4A:  MOV             R0, R6
5FC4C:  POP.W           {R8,R9,R11}
5FC50:  POP             {R4-R7,PC}
5FC52:  MOV             R0, R6
5FC54:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
