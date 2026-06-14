; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity18GetSoundAndBankIDsEsPs
; Address            : 0x39AD64 - 0x39B0A2
; =========================================================

39AD64:  PUSH            {R4-R7,LR}
39AD66:  ADD             R7, SP, #0xC
39AD68:  PUSH.W          {R8-R11}
39AD6C:  SUB             SP, SP, #0x5C
39AD6E:  MOV             R10, R0
39AD70:  UBFX.W          R0, R1, #3, #0xD
39AD74:  CMP             R0, #0x2C ; ','
39AD76:  MOVW            R11, #0xFFFF
39AD7A:  ITT LS
39AD7C:  LDRSHLS.W       R12, [R10,#0x92]
39AD80:  CMPLS.W         R12, #5
39AD84:  BHI.W           def_39ADE0; jumptable 0039ADE0 default case
39AD88:  LDR             R0, =(gSpeechContextLookup_ptr - 0x39AD90)
39AD8A:  MOVS            R3, #0
39AD8C:  ADD             R0, PC; gSpeechContextLookup_ptr
39AD8E:  LDR             R4, [R0]; gSpeechContextLookup
39AD90:  SXTH            R5, R3
39AD92:  LSLS            R0, R5, #4
39AD94:  LDRH            R0, [R4,R0]
39AD96:  CMP             R0, R11
39AD98:  ITTT NE
39AD9A:  ADDNE           R3, #1
39AD9C:  UXTHNE          R6, R1
39AD9E:  CMPNE           R0, R6
39ADA0:  BNE             loc_39AD90
39ADA2:  CMP             R0, R11
39ADA4:  BEQ.W           def_39ADE0; jumptable 0039ADE0 default case
39ADA8:  LDR             R0, =(gSpeechContextLookup_ptr - 0x39ADAE)
39ADAA:  ADD             R0, PC; gSpeechContextLookup_ptr
39ADAC:  LDR             R0, [R0]; gSpeechContextLookup
39ADAE:  ADD.W           R0, R0, R5,LSL#4
39ADB2:  ADD.W           R0, R0, R12,LSL#1
39ADB6:  LDRSH.W         R5, [R0,#2]
39ADBA:  CMP             R5, #0
39ADBC:  BLT.W           def_39ADE0; jumptable 0039ADE0 default case
39ADC0:  STRH            R5, [R2]
39ADC2:  SUB.W           R1, R1, #0x154
39ADC6:  LDRSH.W         R0, [R10,#0x92]; this
39ADCA:  UXTH            R1, R1
39ADCC:  CMP             R1, #0x12
39ADCE:  BHI             loc_39ADDA
39ADD0:  UXTH            R0, R0
39ADD2:  CMP             R0, #2
39ADD4:  BNE             loc_39AE26
39ADD6:  MOVS            R1, #0
39ADD8:  B               loc_39AE32
39ADDA:  CMP             R0, #4; switch 5 cases
39ADDC:  BHI.W           def_39ADE0; jumptable 0039ADE0 default case
39ADE0:  TBH.W           [PC,R0,LSL#1]; switch jump
39ADE4:  DCW 5; jump table for switch statement
39ADE6:  DCW 0xDD
39ADE8:  DCW 0xE7
39ADEA:  DCW 0x13A
39ADEC:  DCW 0xCA
39ADEE:  CMP             R5, #0x67 ; 'g'; jumptable 0039ADE0 case 0
39ADF0:  BGT.W           def_39ADE0; jumptable 0039ADE0 default case
39ADF4:  LDR             R2, =(gGenSpeechLookup_ptr - 0x39AE00)
39ADF6:  MOV.W           R3, #0x1A2
39ADFA:  LDR             R0, =(gGenSpeechVoiceToBankLookup_ptr - 0x39AE06)
39ADFC:  ADD             R2, PC; gGenSpeechLookup_ptr
39ADFE:  LDRSH.W         R1, [R10,#0x94]
39AE02:  ADD             R0, PC; gGenSpeechVoiceToBankLookup_ptr
39AE04:  LDR             R2, [R2]; gGenSpeechLookup
39AE06:  LDR             R0, [R0]; gGenSpeechVoiceToBankLookup
39AE08:  SMLABB.W        R2, R5, R3, R2
39AE0C:  LDRH.W          R0, [R0,R1,LSL#1]
39AE10:  STRH.W          R0, [R10,#0xA6]
39AE14:  LDRB.W          R0, [R2,R1,LSL#1]
39AE18:  CMP             R0, #0xFF
39AE1A:  BEQ.W           def_39ADE0; jumptable 0039ADE0 default case
39AE1E:  ADD.W           R1, R2, R1,LSL#1
39AE22:  LDRB            R1, [R1,#1]
39AE24:  B               loc_39AE5E
39AE26:  LDRH.W          R0, [R10,#0x96]
39AE2A:  MOVS            R1, #1
39AE2C:  CMP             R0, #0
39AE2E:  IT EQ
39AE30:  MOVEQ           R1, #2
39AE32:  LDR             R0, =(gPainVoiceToBankLookup_ptr - 0x39AE3A)
39AE34:  LDR             R2, =(gPainLookup_ptr - 0x39AE3C)
39AE36:  ADD             R0, PC; gPainVoiceToBankLookup_ptr
39AE38:  ADD             R2, PC; gPainLookup_ptr
39AE3A:  LDR             R0, [R0]; gPainVoiceToBankLookup
39AE3C:  LDR             R2, [R2]; gPainLookup
39AE3E:  LDRH.W          R0, [R0,R1,LSL#1]
39AE42:  STRH.W          R0, [R10,#0xA6]
39AE46:  ADD.W           R0, R5, R5,LSL#1
39AE4A:  ADD.W           R2, R2, R0,LSL#2
39AE4E:  LDRH.W          R0, [R2,R1,LSL#2]
39AE52:  CMP             R0, R11
39AE54:  BEQ.W           def_39ADE0; jumptable 0039ADE0 default case
39AE58:  ADD.W           R1, R2, R1,LSL#2
39AE5C:  LDRH            R1, [R1,#2]
39AE5E:  SXTH            R1, R1
39AE60:  ADDS            R2, R1, #1; int
39AE62:  SXTH            R0, R0
39AE64:  SUBS            R4, R2, R0
39AE66:  MOVS            R5, #0x14
39AE68:  CMP             R4, #0x14
39AE6A:  SUB.W           R1, R1, R0; int
39AE6E:  IT LT
39AE70:  SXTHLT          R5, R4
39AE72:  STR             R0, [SP,#0x78+var_74]
39AE74:  MOVS            R0, #0; this
39AE76:  MOVS            R6, #0
39AE78:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
39AE7C:  CMP             R5, #1
39AE7E:  STR             R5, [SP,#0x78+var_70]
39AE80:  BLT             loc_39AEFC
39AE82:  SXTH            R5, R0
39AE84:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity14s_PhraseMemoryE_ptr - 0x39AE8E)
39AE86:  MOV.W           R9, #0
39AE8A:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity14s_PhraseMemoryE_ptr
39AE8C:  LDR.W           R8, [R0]; CAEPedSpeechAudioEntity::s_PhraseMemory ...
39AE90:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity14s_PhraseMemoryE_ptr - 0x39AE96)
39AE92:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity14s_PhraseMemoryE_ptr
39AE94:  LDR.W           R11, [R0]; CAEPedSpeechAudioEntity::s_PhraseMemory ...
39AE98:  ADDS            R0, R6, R5
39AE9A:  MOV             R1, R4
39AE9C:  BLX             __aeabi_idivmod
39AEA0:  LDR             R0, [SP,#0x78+var_74]
39AEA2:  ADD             R1, R0
39AEA4:  ADD             R0, SP, #0x78+var_6C
39AEA6:  STRH.W          R1, [R10,#0xA4]
39AEAA:  STRH.W          R1, [R0,R6,LSL#2]
39AEAE:  MOVS            R0, #0
39AEB0:  LDRH.W          R2, [R8,R0,LSL#2]
39AEB4:  UXTH            R3, R1
39AEB6:  CMP             R2, R3
39AEB8:  BNE             loc_39AEC8
39AEBA:  ADD.W           R3, R11, R0,LSL#2
39AEBE:  LDRH.W          R2, [R10,#0xA6]
39AEC2:  LDRH            R3, [R3,#2]
39AEC4:  CMP             R2, R3
39AEC6:  BEQ             loc_39AED4
39AEC8:  ADDS            R2, R0, #1
39AECA:  CMP             R0, #0x95
39AECC:  MOV             R0, R2
39AECE:  BLT             loc_39AEB0
39AED0:  MOV             R0, R2
39AED2:  B               loc_39AEDC
39AED4:  ADD             R1, SP, #0x78+var_6C
39AED6:  ADD.W           R1, R1, R6,LSL#2
39AEDA:  STRH            R0, [R1,#2]
39AEDC:  UXTH            R1, R0
39AEDE:  CMP             R1, #0x96
39AEE0:  MOV.W           R0, #0
39AEE4:  ADD.W           R9, R9, #1
39AEE8:  IT EQ
39AEEA:  MOVEQ           R0, #1
39AEEC:  LDR             R2, [SP,#0x78+var_70]
39AEEE:  SXTH.W          R6, R9
39AEF2:  CMP             R2, R6
39AEF4:  BLE             loc_39AEFE
39AEF6:  CMP             R1, #0x96
39AEF8:  BNE             loc_39AE98
39AEFA:  B               loc_39AEFE
39AEFC:  MOVS            R0, #0
39AEFE:  LDR             R1, [SP,#0x78+var_70]
39AF00:  CMP             R1, R6
39AF02:  IT EQ
39AF04:  CMPEQ           R0, #0
39AF06:  BNE             loc_39AF3C
39AF08:  LDR             R1, [SP,#0x78+var_70]
39AF0A:  LDRH.W          R0, [SP,#0x78+var_6C]
39AF0E:  CMP             R1, #1
39AF10:  BLT             loc_39AF38
39AF12:  ADD             R1, SP, #0x78+var_6C
39AF14:  MOVS            R3, #0
39AF16:  MOVS            R2, #0
39AF18:  MOVS            R5, #0
39AF1A:  ADD.W           R6, R1, R3,LSL#2
39AF1E:  SXTH            R4, R5
39AF20:  ADDS            R2, #1
39AF22:  LDRSH.W         R6, [R6,#2]
39AF26:  CMP             R6, R4
39AF28:  ITT GT
39AF2A:  LDRHGT.W        R0, [R1,R3,LSL#2]
39AF2E:  MOVGT           R5, R6
39AF30:  LDR             R6, [SP,#0x78+var_70]
39AF32:  SXTH            R3, R2
39AF34:  CMP             R6, R3
39AF36:  BGT             loc_39AF1A
39AF38:  STRH.W          R0, [R10,#0xA4]
39AF3C:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity14s_PhraseMemoryE_ptr - 0x39AF44)
39AF3E:  MOVS            R1, #0x96
39AF40:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity14s_PhraseMemoryE_ptr
39AF42:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_PhraseMemory ...
39AF44:  ADD.W           R0, R0, #0x250
39AF48:  LDR             R2, [R0]
39AF4A:  SUBS            R1, #1
39AF4C:  STR             R2, [R0,#4]
39AF4E:  SUBS            R0, #4
39AF50:  CMP             R1, #1
39AF52:  BGT             loc_39AF48
39AF54:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity14s_PhraseMemoryE_ptr - 0x39AF5E)
39AF56:  LDRH.W          R1, [R10,#0xA4]
39AF5A:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity14s_PhraseMemoryE_ptr
39AF5C:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_PhraseMemory ...
39AF5E:  STRH            R1, [R0]; CAEPedSpeechAudioEntity::s_PhraseMemory
39AF60:  LDRH.W          R2, [R10,#0xA6]
39AF64:  STRH            R2, [R0,#(word_944B9A - 0x944B98)]
39AF66:  LDR             R0, [SP,#0x78+var_74]
39AF68:  SUB.W           R11, R1, R0
39AF6C:  SXTH.W          R0, R11; jumptable 0039ADE0 default case
39AF70:  ADD             SP, SP, #0x5C ; '\'
39AF72:  POP.W           {R8-R11}
39AF76:  POP             {R4-R7,PC}
39AF78:  CMP             R5, #0x78 ; 'x'; jumptable 0039ADE0 case 4
39AF7A:  BGT             def_39ADE0; jumptable 0039ADE0 default case
39AF7C:  LDR             R0, =(gGfdSpeechVoiceToBankLookup_ptr - 0x39AF86)
39AF7E:  LDRSH.W         R1, [R10,#0x94]
39AF82:  ADD             R0, PC; gGfdSpeechVoiceToBankLookup_ptr
39AF84:  LDR             R2, =(gGfdSpeechLookup_ptr - 0x39AF8C)
39AF86:  LDR             R0, [R0]; gGfdSpeechVoiceToBankLookup
39AF88:  ADD             R2, PC; gGfdSpeechLookup_ptr
39AF8A:  LDR             R2, [R2]; gGfdSpeechLookup
39AF8C:  LDRH.W          R0, [R0,R1,LSL#1]
39AF90:  STRH.W          R0, [R10,#0xA6]
39AF94:  ADD.W           R0, R5, R5,LSL#3
39AF98:  ADD.W           R2, R2, R0,LSL#3
39AF9C:  B               loc_39AE4E
39AF9E:  CMP             R5, #0x22 ; '"'; jumptable 0039ADE0 case 1
39AFA0:  BGT             def_39ADE0; jumptable 0039ADE0 default case
39AFA2:  LDR             R0, =(gEmgSpeechVoiceToBankLookup_ptr - 0x39AFAC)
39AFA4:  MOVS            R3, #0xB8
39AFA6:  LDR             R2, =(gEmgSpeechLookup_ptr - 0x39AFB2)
39AFA8:  ADD             R0, PC; gEmgSpeechVoiceToBankLookup_ptr
39AFAA:  LDRSH.W         R1, [R10,#0x94]
39AFAE:  ADD             R2, PC; gEmgSpeechLookup_ptr
39AFB0:  B               loc_39B06C
39AFB2:  CMP             R5, #0x6F ; 'o'; jumptable 0039ADE0 case 2
39AFB4:  BGT             def_39ADE0; jumptable 0039ADE0 default case
39AFB6:  BLX             j__ZN23CAEPedSpeechAudioEntity16GetCurrentCJMoodEv; CAEPedSpeechAudioEntity::GetCurrentCJMood(void)
39AFBA:  MOV             R8, R0
39AFBC:  LDR             R0, =(gPlySpeechLookup_ptr - 0x39AFC6)
39AFBE:  MOV.W           R9, #0xA
39AFC2:  ADD             R0, PC; gPlySpeechLookup_ptr
39AFC4:  LDR             R4, [R0]; gPlySpeechLookup
39AFC6:  MOVS            R0, #0; this
39AFC8:  MOVS            R1, #1; int
39AFCA:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
39AFCE:  SXTH.W          R1, R8
39AFD2:  CMP             R1, #9; switch 10 cases
39AFD4:  BHI             def_39AFD6; jumptable 0039AFD6 default case
39AFD6:  TBB.W           [PC,R1]; switch jump
39AFDA:  DCB 0x19; jump table for switch statement
39AFDB:  DCB 5
39AFDC:  DCB 0xA
39AFDD:  DCB 0xC
39AFDE:  DCB 0xE
39AFDF:  DCB 0x10
39AFE0:  DCB 0x12
39AFE1:  DCB 0x14
39AFE2:  DCB 0x16
39AFE3:  DCB 0x18
39AFE4:  ADDS            R0, #2; jumptable 0039AFD6 case 1
39AFE6:  B               loc_39B00C; jumptable 0039AFD6 case 0
39AFE8:  UXTAH.W         R0, R9, R0; jumptable 0039AFD6 default case
39AFEC:  B               loc_39B00C; jumptable 0039AFD6 case 0
39AFEE:  ADDS            R0, #4; jumptable 0039AFD6 case 2
39AFF0:  B               loc_39B00C; jumptable 0039AFD6 case 0
39AFF2:  ADDS            R0, #6; jumptable 0039AFD6 case 3
39AFF4:  B               loc_39B00C; jumptable 0039AFD6 case 0
39AFF6:  ADDS            R0, #8; jumptable 0039AFD6 case 4
39AFF8:  B               loc_39B00C; jumptable 0039AFD6 case 0
39AFFA:  ADDS            R0, #0xA; jumptable 0039AFD6 case 5
39AFFC:  B               loc_39B00C; jumptable 0039AFD6 case 0
39AFFE:  ADDS            R0, #0xC; jumptable 0039AFD6 case 6
39B000:  B               loc_39B00C; jumptable 0039AFD6 case 0
39B002:  ADDS            R0, #0xE; jumptable 0039AFD6 case 7
39B004:  B               loc_39B00C; jumptable 0039AFD6 case 0
39B006:  ADDS            R0, #0x10; jumptable 0039AFD6 case 8
39B008:  B               loc_39B00C; jumptable 0039AFD6 case 0
39B00A:  ADDS            R0, #0x12; jumptable 0039AFD6 case 9
39B00C:  ADD.W           R2, R5, R5,LSL#2; jumptable 0039AFD6 case 0
39B010:  LSLS            R6, R0, #0x10
39B012:  ADD.W           R3, R4, R2,LSL#4
39B016:  ADD.W           R3, R3, R6,ASR#14
39B01A:  UXTH.W          R6, R8
39B01E:  CMP             R6, #5
39B020:  BEQ             loc_39B07E
39B022:  LDRH            R6, [R3]
39B024:  CMP             R6, R11
39B026:  BNE             loc_39B07E
39B028:  CMP             R1, #9; switch 10 cases
39B02A:  BHI             def_39B030; jumptable 0039B030 default case, case 9
39B02C:  MOV.W           R8, #1
39B030:  TBB.W           [PC,R1]; switch jump
39B034:  DCB 8; jump table for switch statement
39B035:  DCB 5
39B036:  DCB 5
39B037:  DCB 5
39B038:  DCB 5
39B039:  DCB 5
39B03A:  DCB 9
39B03B:  DCB 8
39B03C:  DCB 0xF
39B03D:  DCB 0xC
39B03E:  MOV.W           R8, #5; jumptable 0039B030 cases 1-5
39B042:  B               loc_39AFC6
39B044:  B               loc_39AFC6; jumptable 0039B030 cases 0,7
39B046:  MOV.W           R8, #0; jumptable 0039B030 case 6
39B04A:  B               loc_39AFC6
39B04C:  MOV.W           R8, #5; jumptable 0039B030 default case, case 9
39B050:  B               loc_39AFC6
39B052:  MOV.W           R8, #4; jumptable 0039B030 case 8
39B056:  B               loc_39AFC6
39B058:  CMP             R5, #0x70 ; 'p'; jumptable 0039ADE0 case 3
39B05A:  BGT.W           def_39ADE0; jumptable 0039ADE0 default case
39B05E:  LDR             R0, =(gGngSpeechVoiceToBankLookup_ptr - 0x39B068)
39B060:  MOVS            R3, #0xD0
39B062:  LDR             R2, =(gGngSpeechLookup_ptr - 0x39B06E)
39B064:  ADD             R0, PC; gGngSpeechVoiceToBankLookup_ptr
39B066:  LDRSH.W         R1, [R10,#0x94]
39B06A:  ADD             R2, PC; gGngSpeechLookup_ptr
39B06C:  LDR             R0, [R0]
39B06E:  LDR             R2, [R2]
39B070:  LDRH.W          R0, [R0,R1,LSL#1]
39B074:  SMLABB.W        R2, R5, R3, R2
39B078:  STRH.W          R0, [R10,#0xA6]
39B07C:  B               loc_39AE4E
39B07E:  SXTH            R1, R0
39B080:  LDR             R0, =(gPlySpeechVoiceToBankLookup_ptr - 0x39B086)
39B082:  ADD             R0, PC; gPlySpeechVoiceToBankLookup_ptr
39B084:  LDR             R0, [R0]; gPlySpeechVoiceToBankLookup
39B086:  LDRH.W          R0, [R0,R1,LSL#1]
39B08A:  STRH.W          R0, [R10,#0xA6]
39B08E:  LDRH            R0, [R3]
39B090:  CMP             R0, R11
39B092:  BEQ.W           def_39ADE0; jumptable 0039ADE0 default case
39B096:  LDR             R3, =(gPlySpeechLookup_ptr - 0x39B09C)
39B098:  ADD             R3, PC; gPlySpeechLookup_ptr
39B09A:  LDR             R3, [R3]; gPlySpeechLookup
39B09C:  ADD.W           R2, R3, R2,LSL#4
39B0A0:  B               loc_39AE58
