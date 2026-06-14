; =========================================================
; Game Engine Function: LoadReverbPreset
; Address            : 0x253D30 - 0x25405A
; =========================================================

253D30:  PUSH            {R4-R7,LR}
253D32:  ADD             R7, SP, #0xC
253D34:  PUSH.W          {R8-R10}
253D38:  MOV             R10, R1
253D3A:  ADR             R1, aNone; "NONE"
253D3C:  MOV             R9, R0
253D3E:  BLX             strcasecmp
253D42:  CBZ             R0, loc_253D88
253D44:  LDR             R0, =(DisabledEffects_ptr - 0x253D4A)
253D46:  ADD             R0, PC; DisabledEffects_ptr
253D48:  LDR             R0, [R0]; DisabledEffects
253D4A:  LDRB            R0, [R0]
253D4C:  CMP             R0, #0
253D4E:  BEQ             loc_253DF0
253D50:  LDR             R0, =(DisabledEffects_ptr - 0x253D56)
253D52:  ADD             R0, PC; DisabledEffects_ptr
253D54:  LDR             R0, [R0]; DisabledEffects
253D56:  LDRB            R0, [R0,#(byte_A98FE9 - 0xA98FE8)]
253D58:  CMP             R0, #0
253D5A:  BEQ.W           loc_253E8C
253D5E:  LDR.W           R12, =(sub_264AC4+1 - 0x253D70)
253D62:  MOVS            R1, #0
253D64:  LDR.W           LR, =(sub_264A7C+1 - 0x253D74)
253D68:  LDR.W           R8, =(sub_264A34+1 - 0x253D78)
253D6C:  ADD             R12, PC; sub_264AC4
253D6E:  LDR             R3, =(sub_2649EC+1 - 0x253D7C)
253D70:  ADD             LR, PC; sub_264A7C
253D72:  LDR             R6, =(sub_2649A4+1 - 0x253D80)
253D74:  ADD             R8, PC; sub_264A34
253D76:  LDR             R0, =(sub_26495C+1 - 0x253D84)
253D78:  ADD             R3, PC; sub_2649EC
253D7A:  LDR             R2, =(sub_264914+1 - 0x253D86)
253D7C:  ADD             R6, PC; sub_2649A4
253D7E:  LDR             R5, =(sub_2648CC+1 - 0x253D88)
253D80:  ADD             R0, PC; sub_26495C
253D82:  ADD             R2, PC; sub_264914
253D84:  ADD             R5, PC; sub_2648CC
253D86:  B               loc_253F00
253D88:  LDR.W           R2, =(sub_2648CC+1 - 0x253D9A)
253D8C:  MOVS            R4, #0
253D8E:  LDR.W           R0, =(LogLevel_ptr - 0x253D9C)
253D92:  LDR.W           R1, =(sub_264914+1 - 0x253DA6)
253D96:  ADD             R2, PC; sub_2648CC
253D98:  ADD             R0, PC; LogLevel_ptr
253D9A:  LDR.W           R6, =(sub_2649A4+1 - 0x253DAC)
253D9E:  STR.W           R4, [R10]
253DA2:  ADD             R1, PC; sub_264914
253DA4:  LDR.W           R4, =(sub_264A34+1 - 0x253DB6)
253DA8:  ADD             R6, PC; sub_2649A4
253DAA:  STR.W           R1, [R10,#0x98]
253DAE:  STR.W           R2, [R10,#0x94]
253DB2:  ADD             R4, PC; sub_264A34
253DB4:  LDR.W           R2, =(sub_264AC4+1 - 0x253DC4)
253DB8:  LDR.W           R3, =(sub_26495C+1 - 0x253DCA)
253DBC:  LDR.W           R5, =(sub_2649EC+1 - 0x253DCE)
253DC0:  ADD             R2, PC; sub_264AC4
253DC2:  LDR.W           R1, =(sub_264A7C+1 - 0x253DD4)
253DC6:  ADD             R3, PC; sub_26495C
253DC8:  LDR             R0, [R0]; LogLevel
253DCA:  ADD             R5, PC; sub_2649EC
253DCC:  STRD.W          R3, R6, [R10,#0x9C]
253DD0:  ADD             R1, PC; sub_264A7C
253DD2:  STRD.W          R5, R4, [R10,#0xA4]
253DD6:  STRD.W          R1, R2, [R10,#0xAC]
253DDA:  LDR             R0, [R0]
253DDC:  CMP             R0, #3
253DDE:  BCC.W           loc_254054
253DE2:  LDR.W           R0, =(aIi - 0x253DF0); "(II)"
253DE6:  ADR             R1, aLoadreverbpres_0; "LoadReverbPreset"
253DE8:  ADR             R2, aLoadingReverbS; "Loading reverb '%s'\n"
253DEA:  ADR             R3, aNone; "NONE"
253DEC:  ADD             R0, PC; "(II)"
253DEE:  B               loc_253F58
253DF0:  ADR             R1, dword_2540A0
253DF2:  ADR             R0, dword_254070
253DF4:  VLD1.64         {D24-D25}, [R1@128]
253DF8:  MOV             R1, #0x3C343958
253E00:  STR.W           R1, [R10,#0x28]
253E04:  ADD.W           R1, R10, #0x38 ; '8'
253E08:  VLD1.64         {D16-D17}, [R0@128]
253E0C:  ADR             R0, dword_254060
253E0E:  VST1.32         {D24-D25}, [R1]
253E12:  ADD.W           R1, R10, #0x14
253E16:  VLD1.64         {D18-D19}, [R0@128]
253E1A:  ADR             R0, dword_254080
253E1C:  VST1.32         {D16-D17}, [R1]
253E20:  ADD.W           R1, R10, #4
253E24:  VLD1.64         {D20-D21}, [R0@128]
253E28:  ADR             R0, dword_254090
253E2A:  VST1.32         {D18-D19}, [R1]
253E2E:  ADD.W           R1, R10, #0x50 ; 'P'
253E32:  VLD1.64         {D22-D23}, [R0@128]
253E36:  VST1.32         {D20-D21}, [R1]
253E3A:  ADD.W           R1, R10, #0x60 ; '`'
253E3E:  VST1.32         {D22-D23}, [R1]
253E42:  MOV             R1, #0x3FA147AE
253E4A:  STR.W           R1, [R10,#0x24]
253E4E:  MOVS            R1, #0
253E50:  LDR.W           R12, =(sub_263314+1 - 0x253E60)
253E54:  LDR.W           LR, =(sub_263234+1 - 0x253E64)
253E58:  LDR.W           R8, =(sub_2631E0+1 - 0x253E68)
253E5C:  ADD             R12, PC; sub_263314
253E5E:  LDR             R3, =(sub_26318C+1 - 0x253E6C)
253E60:  ADD             LR, PC; sub_263234
253E62:  LDR             R6, =(sub_263018+1 - 0x253E70)
253E64:  ADD             R8, PC; sub_2631E0
253E66:  LDR             R0, =(sub_2627EC+1 - 0x253E74)
253E68:  ADD             R3, PC; sub_26318C
253E6A:  LDR             R2, =(sub_26275C+1 - 0x253E82)
253E6C:  ADD             R6, PC; sub_263018
253E6E:  LDR             R5, =(sub_2626D0+1 - 0x253E8C)
253E70:  ADD             R0, PC; sub_2627EC
253E72:  STRD.W          R1, R1, [R10,#0x48]
253E76:  MOV             R1, #0x3F7E76C9
253E7E:  ADD             R2, PC; sub_26275C
253E80:  STR.W           R1, [R10,#0x2C]
253E84:  MOV.W           R1, #0x8000
253E88:  ADD             R5, PC; sub_2626D0
253E8A:  B               loc_253EF4
253E8C:  ADR             R1, dword_254070
253E8E:  ADR             R0, dword_254060
253E90:  VLD1.64         {D18-D19}, [R1@128]
253E94:  ADD.W           R1, R10, #0x14
253E98:  VLD1.64         {D16-D17}, [R0@128]
253E9C:  VST1.32         {D18-D19}, [R1]
253EA0:  ADD.W           R1, R10, #4
253EA4:  VST1.32         {D16-D17}, [R1]
253EA8:  MOV             R1, #0x3FA147AE
253EB0:  STR.W           R1, [R10,#0x24]
253EB4:  MOVW            R1, #0x3958
253EB8:  LDR.W           R12, =(sub_263AE8+1 - 0x253ECC)
253EBC:  MOVT            R1, #0x3C34
253EC0:  LDR.W           LR, =(sub_263A44+1 - 0x253ED0)
253EC4:  LDR.W           R8, =(sub_2639F0+1 - 0x253ED4)
253EC8:  ADD             R12, PC; sub_263AE8
253ECA:  LDR             R3, =(sub_26399C+1 - 0x253ED8)
253ECC:  ADD             LR, PC; sub_263A44
253ECE:  LDR             R6, =(sub_263998+1 - 0x253EDC)
253ED0:  ADD             R8, PC; sub_2639F0
253ED2:  LDR             R0, =(sub_2634AC+1 - 0x253EE0)
253ED4:  ADD             R3, PC; sub_26399C
253ED6:  LDR             R2, =(sub_26341C+1 - 0x253EEE)
253ED8:  ADD             R6, PC; sub_263998
253EDA:  LDR             R5, =(sub_263390+1 - 0x253EF0)
253EDC:  ADD             R0, PC; sub_2634AC
253EDE:  STR.W           R1, [R10,#0x28]
253EE2:  MOV             R1, #0x3F7E76C9
253EEA:  ADD             R2, PC; sub_26341C
253EEC:  ADD             R5, PC; sub_263390
253EEE:  STR.W           R1, [R10,#0x2C]
253EF2:  MOVS            R1, #1
253EF4:  MOVS            R4, #1
253EF6:  STRB.W          R4, [R10,#0x34]
253EFA:  MOVS            R4, #0
253EFC:  STR.W           R4, [R10,#0x30]
253F00:  LDR             R4, =(aGeneric_5 - 0x253F0A); "GENERIC"
253F02:  STRD.W          R5, R2, [R10,#0x94]
253F06:  ADD             R4, PC; "GENERIC"
253F08:  STRD.W          R0, R6, [R10,#0x9C]
253F0C:  ADD.W           R5, R4, #0x88
253F10:  ADD.W           R0, R10, #0xA4
253F14:  MOV.W           R4, #0xFFFFFFFF
253F18:  STM.W           R0, {R3,R8,LR}
253F1C:  STR.W           R12, [R10,#0xB0]
253F20:  STR.W           R1, [R10]
253F24:  SUB.W           R6, R5, #0x88
253F28:  MOV             R0, R9; char *
253F2A:  MOV             R1, R6; char *
253F2C:  BLX             strcasecmp
253F30:  CBZ             R0, loc_253F64
253F32:  ADDS            R4, #1
253F34:  ADDS            R5, #0x8C
253F36:  CMP             R4, #0x70 ; 'p'
253F38:  BLT             loc_253F24
253F3A:  CMP             R4, #0x70 ; 'p'
253F3C:  BNE.W           loc_254054
253F40:  LDR             R0, =(LogLevel_ptr - 0x253F46)
253F42:  ADD             R0, PC; LogLevel_ptr
253F44:  LDR             R0, [R0]; LogLevel
253F46:  LDR             R0, [R0]
253F48:  CMP             R0, #2
253F4A:  BCC.W           loc_254054
253F4E:  LDR             R0, =(aWw - 0x253F5A); "(WW)"
253F50:  ADR             R1, aLoadreverbpres_0; "LoadReverbPreset"
253F52:  ADR             R2, aReverbPresetSN; "Reverb preset '%s' not found\n"
253F54:  MOV             R3, R9
253F56:  ADD             R0, PC; "(WW)"
253F58:  POP.W           {R8-R10}
253F5C:  POP.W           {R4-R7,LR}
253F60:  B.W             al_print
253F64:  LDR             R0, =(LogLevel_ptr - 0x253F6A)
253F66:  ADD             R0, PC; LogLevel_ptr
253F68:  LDR             R0, [R0]; LogLevel
253F6A:  LDR             R0, [R0]
253F6C:  CMP             R0, #3
253F6E:  BCC             loc_253F7E
253F70:  LDR             R0, =(aIi - 0x253F7C); "(II)"
253F72:  ADR             R1, aLoadreverbpres_0; "LoadReverbPreset"
253F74:  ADR             R2, aLoadingReverbS; "Loading reverb '%s'\n"
253F76:  MOV             R3, R6
253F78:  ADD             R0, PC; "(II)"
253F7A:  BLX             j_al_print
253F7E:  LDR.W           R0, [R5,#-0x68]
253F82:  STR.W           R0, [R10,#4]
253F86:  LDR.W           R0, [R5,#-0x64]
253F8A:  STR.W           R0, [R10,#8]
253F8E:  LDR.W           R0, [R5,#-0x60]
253F92:  STR.W           R0, [R10,#0xC]
253F96:  LDR.W           R0, [R5,#-0x5C]
253F9A:  STR.W           R0, [R10,#0x10]
253F9E:  LDR.W           R0, [R5,#-0x58]
253FA2:  STR.W           R0, [R10,#0x38]
253FA6:  LDR.W           R0, [R5,#-0x54]
253FAA:  STR.W           R0, [R10,#0x14]
253FAE:  LDR.W           R0, [R5,#-0x50]
253FB2:  STR.W           R0, [R10,#0x18]
253FB6:  LDR.W           R0, [R5,#-0x4C]
253FBA:  STR.W           R0, [R10,#0x3C]
253FBE:  LDR.W           R0, [R5,#-0x48]
253FC2:  STR.W           R0, [R10,#0x1C]
253FC6:  LDR.W           R0, [R5,#-0x44]
253FCA:  STR.W           R0, [R10,#0x20]
253FCE:  LDR.W           R0, [R5,#-0x40]
253FD2:  STR.W           R0, [R10,#0x40]
253FD6:  LDR.W           R0, [R5,#-0x3C]
253FDA:  STR.W           R0, [R10,#0x44]
253FDE:  LDR.W           R0, [R5,#-0x38]
253FE2:  STR.W           R0, [R10,#0x48]
253FE6:  LDR.W           R0, [R5,#-0x34]
253FEA:  STR.W           R0, [R10,#0x24]
253FEE:  LDR.W           R0, [R5,#-0x30]
253FF2:  STR.W           R0, [R10,#0x28]
253FF6:  LDR.W           R0, [R5,#-0x2C]
253FFA:  STR.W           R0, [R10,#0x4C]
253FFE:  LDR.W           R0, [R5,#-0x28]
254002:  STR.W           R0, [R10,#0x50]
254006:  LDR.W           R0, [R5,#-0x24]
25400A:  STR.W           R0, [R10,#0x54]
25400E:  LDR.W           R0, [R5,#-0x20]
254012:  STR.W           R0, [R10,#0x58]
254016:  LDR.W           R0, [R5,#-0x1C]
25401A:  STR.W           R0, [R10,#0x5C]
25401E:  LDR.W           R0, [R5,#-0x18]
254022:  STR.W           R0, [R10,#0x60]
254026:  LDR.W           R0, [R5,#-0x14]
25402A:  STR.W           R0, [R10,#0x64]
25402E:  LDR.W           R0, [R5,#-0x10]
254032:  STR.W           R0, [R10,#0x2C]
254036:  LDR.W           R0, [R5,#-0xC]
25403A:  STR.W           R0, [R10,#0x68]
25403E:  LDR.W           R0, [R5,#-8]
254042:  STR.W           R0, [R10,#0x6C]
254046:  LDR.W           R0, [R5,#-4]
25404A:  STR.W           R0, [R10,#0x30]
25404E:  LDR             R0, [R5]
254050:  STRB.W          R0, [R10,#0x34]
254054:  POP.W           {R8-R10}
254058:  POP             {R4-R7,PC}
