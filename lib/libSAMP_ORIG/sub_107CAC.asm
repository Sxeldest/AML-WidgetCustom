; =========================================================
; Game Engine Function: sub_107CAC
; Address            : 0x107CAC - 0x107E82
; =========================================================

107CAC:  PUSH            {R4-R7,LR}
107CAE:  ADD             R7, SP, #0xC
107CB0:  PUSH.W          {R8-R11}
107CB4:  SUB             SP, SP, #0x3C
107CB6:  MOV             R6, R0
107CB8:  LDR             R0, =(__stack_chk_guard_ptr - 0x107CC2)
107CBA:  MOV             R4, R1
107CBC:  MOV             R11, R2
107CBE:  ADD             R0, PC; __stack_chk_guard_ptr
107CC0:  LDR             R0, [R0]; __stack_chk_guard
107CC2:  LDR             R0, [R0]
107CC4:  STR             R0, [SP,#0x58+var_20]
107CC6:  LDR             R0, =(_ZTSDn_ptr - 0x107CCE)
107CC8:  LDR             R1, [R1,#4]
107CCA:  ADD             R0, PC; _ZTSDn_ptr
107CCC:  LDR             R0, [R0]; "Dn" ...
107CCE:  CMP             R1, R0
107CD0:  BEQ             loc_107CE6
107CD2:  MOV             R0, R6; int
107CD4:  MOV             R1, R4; lpsrc
107CD6:  BL              sub_107C5C
107CDA:  CBZ             R0, loc_107D0A
107CDC:  LDR.W           R0, [R11]
107CE0:  CBZ             R0, loc_107CEC
107CE2:  LDR             R0, [R0]
107CE4:  B               loc_107CE8
107CE6:  MOVS            R0, #0
107CE8:  STR.W           R0, [R11]
107CEC:  MOVS            R5, #1
107CEE:  LDR             R0, [SP,#0x58+var_20]
107CF0:  LDR             R1, =(__stack_chk_guard_ptr - 0x107CF6)
107CF2:  ADD             R1, PC; __stack_chk_guard_ptr
107CF4:  LDR             R1, [R1]; __stack_chk_guard
107CF6:  LDR             R1, [R1]
107CF8:  CMP             R1, R0
107CFA:  ITTTT EQ
107CFC:  MOVEQ           R0, R5
107CFE:  ADDEQ           SP, SP, #0x3C ; '<'
107D00:  POPEQ.W         {R8-R11}
107D04:  POPEQ           {R4-R7,PC}
107D06:  BLX             __stack_chk_fail
107D0A:  LDR             R0, =(_ZTIN10__cxxabiv116__shim_type_infoE_ptr - 0x107D14)
107D0C:  MOVS            R3, #0; s2d
107D0E:  MOVS            R5, #0
107D10:  ADD             R0, PC; _ZTIN10__cxxabiv116__shim_type_infoE_ptr
107D12:  LDR.W           R8, [R0]; `typeinfo for'__cxxabiv1::__shim_type_info ...
107D16:  LDR             R0, =(_ZTIN10__cxxabiv119__pointer_type_infoE_ptr - 0x107D1C)
107D18:  ADD             R0, PC; _ZTIN10__cxxabiv119__pointer_type_infoE_ptr
107D1A:  MOV             R1, R8; lpstype
107D1C:  LDR.W           R10, [R0]; `typeinfo for'__cxxabiv1::__pointer_type_info ...
107D20:  MOV             R0, R4; lpsrc
107D22:  MOV             R2, R10; lpdtype
107D24:  BLX             j___dynamic_cast
107D28:  CMP             R0, #0
107D2A:  BEQ             loc_107CEE
107D2C:  MOV             R9, R0
107D2E:  LDR.W           R0, [R11]
107D32:  CBZ             R0, loc_107D3A
107D34:  LDR             R0, [R0]
107D36:  STR.W           R0, [R11]
107D3A:  LDR             R0, [R6,#8]
107D3C:  LDR.W           R1, [R9,#8]
107D40:  BIC.W           R2, R1, R0
107D44:  LSLS            R2, R2, #0x1D
107D46:  ITT EQ
107D48:  BICEQ           R0, R1
107D4A:  TSTEQ.W         R0, #0x60
107D4E:  BEQ             loc_107D54
107D50:  MOVS            R5, #0
107D52:  B               loc_107CEE
107D54:  LDR             R0, [R6,#0xC]; lpsrc
107D56:  LDR.W           R1, [R9,#0xC]
107D5A:  LDR             R2, [R0,#4]
107D5C:  LDR             R3, [R1,#4]
107D5E:  CMP             R2, R3
107D60:  BEQ             loc_107CEC
107D62:  LDR             R3, =(_ZTSv_ptr - 0x107D68)
107D64:  ADD             R3, PC; _ZTSv_ptr
107D66:  LDR             R3, [R3]; "v" ...
107D68:  CMP             R2, R3
107D6A:  BEQ             loc_107DA0
107D6C:  MOV             R1, R8; lpstype
107D6E:  MOV             R2, R10; lpdtype
107D70:  MOVS            R3, #0; s2d
107D72:  BLX             j___dynamic_cast
107D76:  CBZ             R0, loc_107DB8
107D78:  LDRB            R1, [R6,#8]
107D7A:  LSLS            R1, R1, #0x1F
107D7C:  BEQ             loc_107D50
107D7E:  LDR.W           R1, [R9,#0xC]; lpsrc
107D82:  LDR             R2, [SP,#0x58+var_20]
107D84:  LDR             R3, =(__stack_chk_guard_ptr - 0x107D8A)
107D86:  ADD             R3, PC; __stack_chk_guard_ptr
107D88:  LDR             R3, [R3]; __stack_chk_guard
107D8A:  LDR             R3, [R3]
107D8C:  CMP             R3, R2
107D8E:  ITTTT EQ
107D90:  ADDEQ           SP, SP, #0x3C ; '<'
107D92:  POPEQ.W         {R8-R11}
107D96:  POPEQ.W         {R4-R7,LR}
107D9A:  BEQ.W           sub_107EB0
107D9E:  B               loc_107D06
107DA0:  LDR             R0, =(_ZTIN10__cxxabiv120__function_type_infoE_ptr - 0x107DA8)
107DA2:  MOVS            R3, #0; s2d
107DA4:  ADD             R0, PC; _ZTIN10__cxxabiv120__function_type_infoE_ptr
107DA6:  LDR             R2, [R0]; lpdtype
107DA8:  MOV             R0, R1; lpsrc
107DAA:  MOV             R1, R8; lpstype
107DAC:  BLX             j___dynamic_cast
107DB0:  CLZ.W           R0, R0
107DB4:  LSRS            R5, R0, #5
107DB6:  B               loc_107CEE
107DB8:  LDR             R0, [R6,#0xC]; lpsrc
107DBA:  CMP             R0, #0
107DBC:  BEQ             loc_107D50
107DBE:  LDR             R1, =(_ZTIN10__cxxabiv129__pointer_to_member_type_infoE_ptr - 0x107DC6)
107DC0:  MOVS            R3, #0; s2d
107DC2:  ADD             R1, PC; _ZTIN10__cxxabiv129__pointer_to_member_type_infoE_ptr
107DC4:  LDR             R2, [R1]; lpdtype
107DC6:  MOV             R1, R8; lpstype
107DC8:  BLX             j___dynamic_cast
107DCC:  CBZ             R0, loc_107DF6
107DCE:  LDRB            R1, [R6,#8]
107DD0:  LSLS            R1, R1, #0x1F
107DD2:  BEQ             loc_107D50
107DD4:  LDR.W           R1, [R9,#0xC]; lpsrc
107DD8:  LDR             R2, [SP,#0x58+var_20]
107DDA:  LDR             R3, =(__stack_chk_guard_ptr - 0x107DE0)
107DDC:  ADD             R3, PC; __stack_chk_guard_ptr
107DDE:  LDR             R3, [R3]; __stack_chk_guard
107DE0:  LDR             R3, [R3]
107DE2:  CMP             R3, R2
107DE4:  ITTTT EQ
107DE6:  ADDEQ           SP, SP, #0x3C ; '<'
107DE8:  POPEQ.W         {R8-R11}
107DEC:  POPEQ.W         {R4-R7,LR}
107DF0:  BEQ.W           sub_107F48
107DF4:  B               loc_107D06
107DF6:  LDR             R0, [R6,#0xC]; lpsrc
107DF8:  CMP             R0, #0
107DFA:  BEQ             loc_107D50
107DFC:  LDR             R1, =(_ZTIN10__cxxabiv117__class_type_infoE_ptr - 0x107E06)
107DFE:  MOVS            R3, #0; s2d
107E00:  MOVS            R5, #0
107E02:  ADD             R1, PC; _ZTIN10__cxxabiv117__class_type_infoE_ptr
107E04:  LDR             R4, [R1]; `typeinfo for'__cxxabiv1::__class_type_info ...
107E06:  MOV             R1, R8; lpstype
107E08:  MOV             R2, R4; lpdtype
107E0A:  BLX             j___dynamic_cast
107E0E:  CMP             R0, #0
107E10:  BEQ.W           loc_107CEE
107E14:  MOV             R6, R0
107E16:  LDR.W           R0, [R9,#0xC]; lpsrc
107E1A:  CMP             R0, #0
107E1C:  BEQ             loc_107D50
107E1E:  MOV             R1, R8; lpstype
107E20:  MOV             R2, R4; lpdtype
107E22:  MOVS            R3, #0; s2d
107E24:  MOVS            R5, #0
107E26:  BLX             j___dynamic_cast
107E2A:  CMP             R0, #0
107E2C:  BEQ.W           loc_107CEE
107E30:  VMOV.I32        Q8, #0
107E34:  MOV             R1, SP
107E36:  ADDS            R2, R1, #4
107E38:  STR             R0, [SP,#0x58+var_58]
107E3A:  VST1.32         {D16-D17}, [R2]!
107E3E:  VST1.32         {D16-D17}, [R2]!
107E42:  VST1.32         {D16-D17}, [R2]!
107E46:  STR             R5, [R2]
107E48:  MOVS            R2, #1
107E4A:  STR             R2, [SP,#0x58+var_28]
107E4C:  MOV.W           R2, #0xFFFFFFFF
107E50:  STRD.W          R6, R2, [SP,#0x58+var_50]
107E54:  LDR             R3, [R0]
107E56:  LDR.W           R2, [R11]
107E5A:  LDR             R4, [R3,#0x1C]
107E5C:  MOVS            R3, #1
107E5E:  BLX             R4
107E60:  LDR             R0, [SP,#0x58+var_40]
107E62:  SUBS            R0, #1
107E64:  CLZ.W           R0, R0
107E68:  MOV.W           R5, R0,LSR#5
107E6C:  BNE.W           loc_107CEE
107E70:  LDR.W           R0, [R11]
107E74:  CMP             R0, #0
107E76:  BEQ.W           loc_107CEE
107E7A:  LDR             R0, [SP,#0x58+var_48]
107E7C:  STR.W           R0, [R11]
107E80:  B               loc_107CEE
