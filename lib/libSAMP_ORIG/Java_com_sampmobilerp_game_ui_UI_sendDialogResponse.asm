; =========================================================
; Game Engine Function: Java_com_sampmobilerp_game_ui_UI_sendDialogResponse
; Address            : 0x69E44 - 0x6A016
; =========================================================

69E44:  PUSH            {R4-R7,LR}
69E46:  ADD             R7, SP, #0xC
69E48:  PUSH.W          {R8-R11}
69E4C:  SUB             SP, SP, #0x1C
69E4E:  MOV             R4, R0
69E50:  LDR             R0, =(byte_1A4334 - 0x69E5A)
69E52:  LDR             R1, =(__stack_chk_guard_ptr - 0x69E5E)
69E54:  MOV             R8, R3
69E56:  ADD             R0, PC; byte_1A4334
69E58:  MOV             R9, R2
69E5A:  ADD             R1, PC; __stack_chk_guard_ptr
69E5C:  LDR             R1, [R1]; __stack_chk_guard
69E5E:  LDR             R1, [R1]
69E60:  STR             R1, [SP,#0x38+var_20]
69E62:  LDRB            R0, [R0]
69E64:  DMB.W           ISH
69E68:  LDR             R6, =(unk_1A4300 - 0x69E6E)
69E6A:  ADD             R6, PC; unk_1A4300
69E6C:  LSLS            R0, R0, #0x1F
69E6E:  BEQ.W           loc_69FC8
69E72:  LDRB.W          R0, [R6,#(dword_1A4330+3 - 0x1A4300)]
69E76:  LDR.W           R10, [R7,#arg_4]
69E7A:  CBZ             R0, loc_69ED0
69E7C:  VMOV.I8         Q8, #0x5A ; 'Z'
69E80:  MOVS            R1, #0x33 ; '3'
69E82:  MOV             R0, R6
69E84:  MOVS            R2, #0x22 ; '"'
69E86:  VLD1.8          {D18-D19}, [R0@128],R1
69E8A:  MOVS            R3, #0x11
69E8C:  VEOR            Q9, Q9, Q8
69E90:  VST1.8          {D18-D19}, [R6@128]!
69E94:  MOV             R1, R6
69E96:  VLD1.8          {D18-D19}, [R1@128],R2
69E9A:  VEOR            Q9, Q9, Q8
69E9E:  LDRB            R2, [R0]
69EA0:  VST1.8          {D18-D19}, [R6@128]!
69EA4:  EOR.W           R2, R2, #0x5A ; 'Z'
69EA8:  MOV             R5, R6
69EAA:  STRB            R2, [R0]
69EAC:  VLD1.8          {D18-D19}, [R5@128],R3
69EB0:  VEOR            Q8, Q9, Q8
69EB4:  LDRB            R3, [R1]
69EB6:  LDRB            R0, [R5]
69EB8:  VST1.8          {D16-D17}, [R6@128]!
69EBC:  EOR.W           R2, R3, #0x5A ; 'Z'
69EC0:  EOR.W           R0, R0, #0x5A ; 'Z'
69EC4:  STRB            R2, [R1]
69EC6:  LDRB            R1, [R6]
69EC8:  STRB            R0, [R5]
69ECA:  EOR.W           R0, R1, #0x5A ; 'Z'
69ECE:  STRB            R0, [R6]
69ED0:  LDR             R1, =(aSampOrig - 0x69EDA); "SAMP_ORIG" ...
69ED2:  MOVS            R0, #4; prio
69ED4:  LDR             R2, =(unk_1A4300 - 0x69EDC)
69ED6:  ADD             R1, PC; "SAMP_ORIG"
69ED8:  ADD             R2, PC; unk_1A4300 ; fmt
69EDA:  BLX             __android_log_print
69EDE:  LDR             R0, [R4]
69EE0:  SUB.W           R2, R7, #-var_21
69EE4:  MOV             R1, R10
69EE6:  LDR.W           R3, [R0,#0x2E0]
69EEA:  MOVS            R0, #1
69EEC:  STRB.W          R0, [R7,#var_21]
69EF0:  MOV             R0, R4
69EF2:  BLX             R3
69EF4:  MOV             R11, R0
69EF6:  LDR             R0, [R4]
69EF8:  MOV             R1, R10
69EFA:  LDR.W           R2, [R0,#0x2AC]
69EFE:  MOV             R0, R4
69F00:  BLX             R2
69F02:  CMN.W           R0, #0x10
69F06:  BCS.W           loc_6A010
69F0A:  MOV             R5, R0
69F0C:  CMP             R0, #0xB
69F0E:  BCS             loc_69F20
69F10:  LSLS            R0, R5, #1
69F12:  STRB.W          R0, [SP,#0x38+var_30]
69F16:  ADD             R0, SP, #0x38+var_30
69F18:  ADD.W           R6, R0, #1
69F1C:  CBNZ            R5, loc_69F46
69F1E:  B               loc_69F50
69F20:  ADD.W           R0, R5, #0x10
69F24:  MOV             R10, R9
69F26:  MOV             R9, R8
69F28:  BIC.W           R8, R0, #0xF
69F2C:  MOV             R0, R8; unsigned int
69F2E:  BLX             j__Znwj; operator new(uint)
69F32:  MOV             R6, R0
69F34:  STRD.W          R5, R0, [SP,#0x38+var_2C]
69F38:  ADD.W           R0, R8, #1
69F3C:  MOV             R8, R9
69F3E:  MOV             R9, R10
69F40:  LDR.W           R10, [R7,#arg_4]
69F44:  STR             R0, [SP,#0x38+var_30]
69F46:  MOV             R0, R6; dest
69F48:  MOV             R1, R11; src
69F4A:  MOV             R2, R5; n
69F4C:  BLX             j_memcpy
69F50:  LDR             R0, =(off_114AB0 - 0x69F5E)
69F52:  MOVS            R1, #0
69F54:  STRB            R1, [R6,R5]
69F56:  MOVW            R1, #0xDEF4
69F5A:  ADD             R0, PC; off_114AB0
69F5C:  MOVT            R1, #0x23 ; '#'
69F60:  LDR             R0, [R0]; dword_1A4408
69F62:  LDR             R0, [R0]
69F64:  LDR             R0, [R0,R1]
69F66:  CBZ             R0, loc_69F90
69F68:  LDR             R0, =(off_114AD8 - 0x69F74)
69F6A:  ADD             R6, SP, #0x38+var_30
69F6C:  LDRB.W          R1, [SP,#0x38+var_30]
69F70:  ADD             R0, PC; off_114AD8
69F72:  LDR             R2, [SP,#0x38+var_28]
69F74:  LDR             R3, [R7,#arg_0]
69F76:  LDR             R0, [R0]; dword_1A4434
69F78:  LSLS            R1, R1, #0x1F
69F7A:  LDR             R0, [R0]; int
69F7C:  IT EQ
69F7E:  ADDEQ           R2, R6, #1
69F80:  STR             R2, [SP,#0x38+s]; s
69F82:  UXTH.W          R1, R9; int
69F86:  UXTB.W          R2, R8; int
69F8A:  UXTH            R3, R3; int
69F8C:  BL              sub_6A05C
69F90:  LDR             R0, [R4]
69F92:  LDR.W           R6, [R0,#0x300]
69F96:  MOV             R0, R4
69F98:  MOV             R1, R10
69F9A:  MOV             R2, R11
69F9C:  MOVS            R3, #2
69F9E:  BLX             R6
69FA0:  LDRB.W          R0, [SP,#0x38+var_30]
69FA4:  LSLS            R0, R0, #0x1F
69FA6:  ITT NE
69FA8:  LDRNE           R0, [SP,#0x38+var_28]; void *
69FAA:  BLXNE           j__ZdlPv; operator delete(void *)
69FAE:  LDR             R0, [SP,#0x38+var_20]
69FB0:  LDR             R1, =(__stack_chk_guard_ptr - 0x69FB6)
69FB2:  ADD             R1, PC; __stack_chk_guard_ptr
69FB4:  LDR             R1, [R1]; __stack_chk_guard
69FB6:  LDR             R1, [R1]
69FB8:  CMP             R1, R0
69FBA:  ITTT EQ
69FBC:  ADDEQ           SP, SP, #0x1C
69FBE:  POPEQ.W         {R8-R11}
69FC2:  POPEQ           {R4-R7,PC}
69FC4:  BLX             __stack_chk_fail
69FC8:  LDR             R0, =(byte_1A4334 - 0x69FCE)
69FCA:  ADD             R0, PC; byte_1A4334 ; __guard *
69FCC:  BLX             j___cxa_guard_acquire
69FD0:  CMP             R0, #0
69FD2:  BEQ.W           loc_69E72
69FD6:  LDR             R0, =(unk_50E18 - 0x69FDE)
69FD8:  MOV             R3, R6
69FDA:  ADD             R0, PC; unk_50E18
69FDC:  VLD1.64         {D16-D17}, [R0]!
69FE0:  VLD1.64         {D18-D19}, [R0]!
69FE4:  VLD1.64         {D20-D21}, [R0]!
69FE8:  LDR             R1, [R0]
69FEA:  LDR             R0, =(sub_67142+1 - 0x69FF6)
69FEC:  LDR             R2, =(off_110560 - 0x69FF8)
69FEE:  VST1.64         {D16-D17}, [R3@128]!
69FF2:  ADD             R0, PC; sub_67142 ; lpfunc
69FF4:  ADD             R2, PC; off_110560 ; lpdso_handle
69FF6:  VST1.64         {D18-D19}, [R3@128]!
69FFA:  VST1.64         {D20-D21}, [R3@128]!
69FFE:  STR             R1, [R3]
6A000:  MOV             R1, R6; obj
6A002:  BLX             __cxa_atexit
6A006:  LDR             R0, =(byte_1A4334 - 0x6A00C)
6A008:  ADD             R0, PC; byte_1A4334 ; __guard *
6A00A:  BLX             j___cxa_guard_release
6A00E:  B               loc_69E72
6A010:  ADD             R0, SP, #0x38+var_30
6A012:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
