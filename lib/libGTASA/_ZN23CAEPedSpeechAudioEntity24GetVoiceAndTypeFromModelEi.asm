; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity24GetVoiceAndTypeFromModelEi
; Address            : 0x39CFA0 - 0x39D046
; =========================================================

39CFA0:  PUSH            {R4-R7,LR}
39CFA2:  ADD             R7, SP, #0xC
39CFA4:  PUSH.W          {R8,R9,R11}
39CFA8:  MOV             R9, R0
39CFAA:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x39CFB0)
39CFAC:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
39CFAE:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
39CFB0:  LDR.W           R0, [R0,R1,LSL#2]; this
39CFB4:  LDRH.W          R1, [R0,#0x54]
39CFB8:  STRH.W          R1, [R9,#0x92]
39CFBC:  CMP             R1, #5
39CFBE:  BLS             loc_39CFC8
39CFC0:  MOVS            R0, #0
39CFC2:  POP.W           {R8,R9,R11}
39CFC6:  POP             {R4-R7,PC}
39CFC8:  BNE             loc_39CFF4
39CFCA:  LDR             R1, =(gSpecialPedVoiceNameLookup_ptr - 0x39CFD8)
39CFCC:  MOVS            R4, #0
39CFCE:  LDR             R6, [R0,#4]
39CFD0:  MOVW            R8, #0xFFFF
39CFD4:  ADD             R1, PC; gSpecialPedVoiceNameLookup_ptr ; char *
39CFD6:  LDR             R5, [R1]; "GANGRL1" ...
39CFD8:  MOV             R0, R5; this
39CFDA:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
39CFDE:  CMP             R0, R6
39CFE0:  BEQ             loc_39D006
39CFE2:  ADDS            R0, R4, #1
39CFE4:  ADDS            R5, #0x14
39CFE6:  CMP             R4, #0x2C ; ','
39CFE8:  MOV             R4, R0
39CFEA:  BLT             loc_39CFD8
39CFEC:  UXTH            R1, R0
39CFEE:  CMP             R1, #0x2D ; '-'
39CFF0:  BEQ             loc_39CFC0
39CFF2:  B               loc_39D008
39CFF4:  LDRSH.W         R1, [R0,#0x5A]
39CFF8:  STRH.W          R1, [R9,#0x94]
39CFFC:  CMP             R1, #0
39CFFE:  BLT             loc_39CFC0
39D000:  BLX             j__ZN13CPedModelInfo14IncrementVoiceEv; CPedModelInfo::IncrementVoice(void)
39D004:  B               loc_39D03E
39D006:  MOV             R0, R4
39D008:  LDR             R1, =(gSpecialPedVoiceLookup_ptr - 0x39D014)
39D00A:  ADD.W           R2, R0, R0,LSL#1
39D00E:  MOVS            R0, #0
39D010:  ADD             R1, PC; gSpecialPedVoiceLookup_ptr
39D012:  LDR             R3, [R1]; gSpecialPedVoiceLookup
39D014:  LDRH.W          R1, [R3,R2,LSL#1]
39D018:  CMP             R1, R8
39D01A:  ITTT NE
39D01C:  ADDNE.W         R3, R3, R2,LSL#1
39D020:  LDRHNE          R3, [R3,#2]
39D022:  CMPNE           R3, R8
39D024:  BEQ             loc_39D040
39D026:  LDR             R0, =(gSpecialPedVoiceLookup_ptr - 0x39D02C)
39D028:  ADD             R0, PC; gSpecialPedVoiceLookup_ptr
39D02A:  LDR             R0, [R0]; gSpecialPedVoiceLookup
39D02C:  ADD.W           R0, R0, R2,LSL#1
39D030:  LDRB            R0, [R0,#4]
39D032:  STRH.W          R3, [R9,#0x92]
39D036:  STRH.W          R1, [R9,#0x94]
39D03A:  STRH.W          R0, [R9,#0x96]
39D03E:  MOVS            R0, #1
39D040:  POP.W           {R8,R9,R11}
39D044:  POP             {R4-R7,PC}
