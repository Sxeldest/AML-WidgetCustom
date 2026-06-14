; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity10InitialiseEP7CEntity
; Address            : 0x39CE68 - 0x39CF8C
; =========================================================

39CE68:  PUSH            {R4-R7,LR}
39CE6A:  ADD             R7, SP, #0xC
39CE6C:  PUSH.W          {R8-R11}
39CE70:  SUB             SP, SP, #4
39CE72:  MOV             R8, R0
39CE74:  MOVS            R0, #0
39CE76:  MOV             R6, R8
39CE78:  VMOV.I32        Q8, #0
39CE7C:  STR.W           R0, [R6,#0x96]!
39CE80:  MOVW            R9, #0xFFFF
39CE84:  STRB            R0, [R6,#6]
39CE86:  STRH            R0, [R6,#4]
39CE88:  STR.W           R0, [R6,#0xA]
39CE8C:  MOVS            R0, #0xC2C80000
39CE92:  STR.W           R1, [R6,#-0x92]
39CE96:  STR.W           R0, [R6,#0x16]
39CE9A:  ADD.W           R0, R6, #0x5A ; 'Z'
39CE9E:  STRH.W          R9, [R6,#0x1A]
39CEA2:  VST1.32         {D16-D17}, [R0]
39CEA6:  ADD.W           R0, R6, #0x4E ; 'N'
39CEAA:  VST1.32         {D16-D17}, [R0]
39CEAE:  ADD.W           R0, R6, #0x3E ; '>'
39CEB2:  VST1.32         {D16-D17}, [R0]
39CEB6:  ADD.W           R0, R6, #0x2E ; '.'
39CEBA:  VST1.32         {D16-D17}, [R0]
39CEBE:  ADD.W           R0, R6, #0x1E
39CEC2:  VST1.32         {D16-D17}, [R0]
39CEC6:  LDRSH.W         R10, [R1,#0x26]
39CECA:  CMP.W           R10, #0
39CECE:  BLT             loc_39CF84
39CED0:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x39CED6)
39CED2:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
39CED4:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
39CED6:  LDR.W           R0, [R0,R10,LSL#2]; this
39CEDA:  LDRH.W          R1, [R0,#0x54]
39CEDE:  STRH.W          R1, [R8,#0x92]
39CEE2:  CMP             R1, #5
39CEE4:  BHI             loc_39CF84
39CEE6:  BNE             loc_39CF10
39CEE8:  LDR             R1, =(gSpecialPedVoiceNameLookup_ptr - 0x39CEF4)
39CEEA:  MOVS            R4, #0
39CEEC:  LDR.W           R11, [R0,#4]
39CEF0:  ADD             R1, PC; gSpecialPedVoiceNameLookup_ptr ; char *
39CEF2:  LDR             R5, [R1]; "GANGRL1" ...
39CEF4:  MOV             R0, R5; this
39CEF6:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
39CEFA:  CMP             R0, R11
39CEFC:  BEQ             loc_39CF22
39CEFE:  ADDS            R0, R4, #1
39CF00:  ADDS            R5, #0x14
39CF02:  CMP             R4, #0x2C ; ','
39CF04:  MOV             R4, R0
39CF06:  BLT             loc_39CEF4
39CF08:  UXTH            R1, R0
39CF0A:  CMP             R1, #0x2D ; '-'
39CF0C:  BNE             loc_39CF24
39CF0E:  B               loc_39CF84
39CF10:  LDRSH.W         R1, [R0,#0x5A]
39CF14:  STRH.W          R1, [R8,#0x94]
39CF18:  CMP             R1, #0
39CF1A:  BLT             loc_39CF84
39CF1C:  BLX             j__ZN13CPedModelInfo14IncrementVoiceEv; CPedModelInfo::IncrementVoice(void)
39CF20:  B               loc_39CF58
39CF22:  MOV             R0, R4
39CF24:  LDR             R1, =(gSpecialPedVoiceLookup_ptr - 0x39CF2A)
39CF26:  ADD             R1, PC; gSpecialPedVoiceLookup_ptr
39CF28:  LDR             R2, [R1]; gSpecialPedVoiceLookup
39CF2A:  ADD.W           R1, R0, R0,LSL#1
39CF2E:  LDRH.W          R0, [R2,R1,LSL#1]
39CF32:  CMP             R0, R9
39CF34:  ITTT NE
39CF36:  ADDNE.W         R2, R2, R1,LSL#1
39CF3A:  LDRHNE          R2, [R2,#2]
39CF3C:  CMPNE           R2, R9
39CF3E:  BEQ             loc_39CF84
39CF40:  LDR             R3, =(gSpecialPedVoiceLookup_ptr - 0x39CF46)
39CF42:  ADD             R3, PC; gSpecialPedVoiceLookup_ptr
39CF44:  LDR             R3, [R3]; gSpecialPedVoiceLookup
39CF46:  ADD.W           R1, R3, R1,LSL#1
39CF4A:  LDRB            R1, [R1,#4]
39CF4C:  STRH.W          R2, [R8,#0x92]
39CF50:  STRH.W          R0, [R8,#0x94]
39CF54:  STRH.W          R1, [R8,#0x96]
39CF58:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x39CF5E)
39CF5A:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
39CF5C:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
39CF5E:  LDR.W           R0, [R0,R10,LSL#2]
39CF62:  LDRH.W          R1, [R0,#0x54]
39CF66:  CMP             R1, #5
39CF68:  BHI             loc_39CF84
39CF6A:  BEQ             loc_39CF7E
39CF6C:  LDR             R0, [R0,#0x40]
39CF6E:  CMP             R0, #0x16
39CF70:  IT NE
39CF72:  CMPNE           R0, #5
39CF74:  BNE             loc_39CF7A
39CF76:  MOVS            R0, #1
39CF78:  B               loc_39CF7C
39CF7A:  MOVS            R0, #0
39CF7C:  STRH            R0, [R6]
39CF7E:  MOVS            R0, #1
39CF80:  STRB.W          R0, [R8,#0x90]
39CF84:  ADD             SP, SP, #4
39CF86:  POP.W           {R8-R11}
39CF8A:  POP             {R4-R7,PC}
