; =========================================================
; Game Engine Function: _ZN10CStreaming6ReInitEv
; Address            : 0x2CF884 - 0x2CFCAE
; =========================================================

2CF884:  PUSH            {R4-R7,LR}
2CF886:  ADD             R7, SP, #0xC
2CF888:  PUSH.W          {R8-R11}
2CF88C:  SUB             SP, SP, #0x1C
2CF88E:  LDR.W           R0, =(_ZN11CTheScripts15StreamedScriptsE_ptr - 0x2CF896)
2CF892:  ADD             R0, PC; _ZN11CTheScripts15StreamedScriptsE_ptr
2CF894:  LDR             R0, [R0]; this
2CF896:  BLX             j__ZN16CStreamedScripts12ReInitialiseEv; CStreamedScripts::ReInitialise(void)
2CF89A:  LDR.W           R0, =(_ZN10CStreaming22ms_pStartRequestedListE_ptr - 0x2CF8A2)
2CF89E:  ADD             R0, PC; _ZN10CStreaming22ms_pStartRequestedListE_ptr
2CF8A0:  LDR             R0, [R0]; CStreaming::ms_pStartRequestedList ...
2CF8A2:  LDR             R0, [R0]; CStreaming::ms_pStartRequestedList
2CF8A4:  LDRSH.W         R0, [R0]
2CF8A8:  ADDS            R1, R0, #1
2CF8AA:  BNE             loc_2CF8B0
2CF8AC:  MOVS            R0, #0
2CF8AE:  B               loc_2CF8C2
2CF8B0:  LDR.W           R1, =(_ZN14CStreamingInfo13ms_pArrayBaseE_ptr - 0x2CF8BC)
2CF8B4:  ADD.W           R0, R0, R0,LSL#2
2CF8B8:  ADD             R1, PC; _ZN14CStreamingInfo13ms_pArrayBaseE_ptr
2CF8BA:  LDR             R1, [R1]; CStreamingInfo::ms_pArrayBase ...
2CF8BC:  LDR             R1, [R1]; CStreamingInfo::ms_pArrayBase
2CF8BE:  ADD.W           R0, R1, R0,LSL#2
2CF8C2:  LDR.W           R1, =(_ZN10CStreaming20ms_pEndRequestedListE_ptr - 0x2CF8CA)
2CF8C6:  ADD             R1, PC; _ZN10CStreaming20ms_pEndRequestedListE_ptr
2CF8C8:  LDR             R1, [R1]; CStreaming::ms_pEndRequestedList ...
2CF8CA:  LDR             R1, [R1]; CStreaming::ms_pEndRequestedList
2CF8CC:  CMP             R0, R1
2CF8CE:  BEQ             loc_2CF922
2CF8D0:  LDR.W           R1, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2CF8E0)
2CF8D4:  MOV             R8, #0xCCCCCCCD
2CF8DC:  ADD             R1, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2CF8DE:  LDR             R4, [R1]; CStreaming::ms_aInfoForModel ...
2CF8E0:  LDR.W           R1, =(_ZN10CStreaming20ms_pEndRequestedListE_ptr - 0x2CF8E8)
2CF8E4:  ADD             R1, PC; _ZN10CStreaming20ms_pEndRequestedListE_ptr
2CF8E6:  LDR             R6, [R1]; CStreaming::ms_pEndRequestedList ...
2CF8E8:  LDR.W           R1, =(_ZN14CStreamingInfo13ms_pArrayBaseE_ptr - 0x2CF8F0)
2CF8EC:  ADD             R1, PC; _ZN14CStreamingInfo13ms_pArrayBaseE_ptr
2CF8EE:  LDR.W           R9, [R1]; CStreamingInfo::ms_pArrayBase ...
2CF8F2:  LDRH            R1, [R0]
2CF8F4:  MOVW            R2, #0xFFFF
2CF8F8:  CMP             R1, R2
2CF8FA:  BNE             loc_2CF900
2CF8FC:  MOVS            R5, #0
2CF8FE:  B               loc_2CF90E
2CF900:  SXTH            R1, R1
2CF902:  LDR.W           R2, [R9]; CStreamingInfo::ms_pArrayBase
2CF906:  ADD.W           R1, R1, R1,LSL#2; int
2CF90A:  ADD.W           R5, R2, R1,LSL#2
2CF90E:  SUBS            R0, R0, R4
2CF910:  ASRS            R0, R0, #2
2CF912:  MUL.W           R0, R0, R8; this
2CF916:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2CF91A:  LDR             R0, [R6]; CStreaming::ms_pEndRequestedList
2CF91C:  CMP             R5, R0
2CF91E:  MOV             R0, R5; this
2CF920:  BNE             loc_2CF8F2
2CF922:  BLX             j__ZN10CStreaming13FlushChannelsEv; CStreaming::FlushChannels(void)
2CF926:  BLX             j__ZN10CStreaming18DeleteAllRwObjectsEv; CStreaming::DeleteAllRwObjects(void)
2CF92A:  BLX             j__ZN10CStreaming21RemoveAllUnusedModelsEv; CStreaming::RemoveAllUnusedModels(void)
2CF92E:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2CF93C)
2CF930:  MOVS            R2, #0
2CF932:  LDR             R1, =(_ZN14CStreamingInfo13ms_pArrayBaseE_ptr - 0x2CF942)
2CF934:  MOVW            R5, #0x4E1F
2CF938:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2CF93A:  MOVW            R6, #0x4E20
2CF93E:  ADD             R1, PC; _ZN14CStreamingInfo13ms_pArrayBaseE_ptr
2CF940:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2CF942:  STR             R0, [SP,#0x38+var_34]
2CF944:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2CF94A)
2CF946:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2CF948:  LDR.W           R10, [R0]; CStreaming::ms_aInfoForModel ...
2CF94C:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2CF952)
2CF94E:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2CF950:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2CF952:  STR             R0, [SP,#0x38+var_20]
2CF954:  LDR             R0, =(_ZN10CStreaming19ms_pStartLoadedListE_ptr - 0x2CF95A)
2CF956:  ADD             R0, PC; _ZN10CStreaming19ms_pStartLoadedListE_ptr
2CF958:  LDR             R0, [R0]; CStreaming::ms_pStartLoadedList ...
2CF95A:  STR             R0, [SP,#0x38+var_28]
2CF95C:  LDR             R0, [R1]; CStreamingInfo::ms_pArrayBase ...
2CF95E:  STR             R0, [SP,#0x38+var_2C]
2CF960:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2CF96A)
2CF962:  LDR.W           R8, [SP,#0x38+var_2C]
2CF966:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2CF968:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2CF96A:  STR             R0, [SP,#0x38+var_30]
2CF96C:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2CF972)
2CF96E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2CF970:  LDR.W           R9, [R0]; CModelInfo::ms_modelInfoPtrs ...
2CF974:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2CF97A)
2CF976:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2CF978:  LDR.W           R11, [R0]; CStreaming::ms_aInfoForModel ...
2CF97C:  ADD.W           R0, R2, R2,LSL#2
2CF980:  LDR             R1, [SP,#0x38+var_34]
2CF982:  STR             R2, [SP,#0x38+var_24]
2CF984:  ADD.W           R0, R1, R0,LSL#2
2CF988:  LDRB            R2, [R0,#6]
2CF98A:  TST.W           R2, #4
2CF98E:  BEQ             loc_2CFA34
2CF990:  LDR             R4, [SP,#0x38+var_24]
2CF992:  B               loc_2CF9A8
2CF994:  LDR.W           R0, [R9,R4,LSL#2]
2CF998:  LDRSH.W         R0, [R0,#0x20]
2CF99C:  ADDS            R4, R0, R6
2CF99E:  ADD.W           R0, R4, R4,LSL#2
2CF9A2:  ADD.W           R0, R11, R0,LSL#2
2CF9A6:  LDRB            R2, [R0,#6]
2CF9A8:  ADD.W           R1, R4, R4,LSL#2; int
2CF9AC:  AND.W           R3, R2, #0xFB
2CF9B0:  TST.W           R2, #2
2CF9B4:  ADD.W           R0, R10, R1,LSL#2
2CF9B8:  STRB            R3, [R0,#6]
2CF9BA:  BNE             loc_2CFA20
2CF9BC:  LDR             R2, [SP,#0x38+var_20]
2CF9BE:  ADD.W           R2, R2, R1,LSL#2
2CF9C2:  LDRB            R2, [R2,#0x10]
2CF9C4:  CMP             R2, #1
2CF9C6:  BNE             loc_2CFA26
2CF9C8:  LDRH            R2, [R0]
2CF9CA:  MOVW            R3, #0xFFFF
2CF9CE:  CMP             R2, R3
2CF9D0:  BNE             loc_2CFA20
2CF9D2:  LDR             R2, [SP,#0x38+var_28]
2CF9D4:  MOVW            R5, #0xCCCD
2CF9D8:  LDR.W           R3, [R8]
2CF9DC:  MOVT            R5, #0xCCCC
2CF9E0:  LDR             R2, [R2]
2CF9E2:  LDRH            R6, [R2]
2CF9E4:  STRH            R6, [R0]
2CF9E6:  SUBS            R6, R0, R3
2CF9E8:  SUBS            R3, R2, R3
2CF9EA:  LSRS            R6, R6, #2
2CF9EC:  LSRS            R3, R3, #2
2CF9EE:  MUL.W           R12, R6, R5
2CF9F2:  MOVW            R6, #0x4E20
2CF9F6:  MUL.W           LR, R3, R5
2CF9FA:  LDR             R3, [SP,#0x38+var_30]
2CF9FC:  MOVW            R5, #0x4E1F
2CFA00:  ADD.W           R1, R3, R1,LSL#2
2CFA04:  STRH.W          LR, [R1,#2]
2CFA08:  STRH.W          R12, [R2]
2CFA0C:  LDRSH.W         R0, [R0]
2CFA10:  LDR.W           R1, [R8]
2CFA14:  ADD.W           R0, R0, R0,LSL#2
2CFA18:  ADD.W           R0, R1, R0,LSL#2
2CFA1C:  STRH.W          R12, [R0,#2]
2CFA20:  CMP             R4, R5
2CFA22:  BLE             loc_2CF994
2CFA24:  B               loc_2CFA34
2CFA26:  LSLS            R0, R3, #0x1C
2CFA28:  ITT PL
2CFA2A:  MOVPL           R0, R4; this
2CFA2C:  BLXPL           j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2CFA30:  CMP             R4, R5
2CFA32:  BLE             loc_2CF994
2CFA34:  LDR             R2, [SP,#0x38+var_24]
2CFA36:  MOVW            R0, #0x66CC
2CFA3A:  ADDS            R2, #1
2CFA3C:  CMP             R2, R0
2CFA3E:  BNE             loc_2CF97C
2CFA40:  MOVS            R4, #0
2CFA42:  MOVW            R5, #0x6676
2CFA46:  ADDS            R0, R4, R5; this
2CFA48:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2CFA4C:  ADDS            R4, #1
2CFA4E:  CMP             R4, #0x52 ; 'R'
2CFA50:  BNE             loc_2CFA46
2CFA52:  LDR             R0, =(_ZN10CStreaming18ms_currentZoneTypeE_ptr - 0x2CFA60)
2CFA54:  MOV.W           R8, #0
2CFA58:  LDR             R1, =(byte_792F7C - 0x2CFA64)
2CFA5A:  LDR             R2, =(byte_792F7D - 0x2CFA68)
2CFA5C:  ADD             R0, PC; _ZN10CStreaming18ms_currentZoneTypeE_ptr
2CFA5E:  LDR             R6, =(_ZN10CStreaming19ms_disableStreamingE_ptr - 0x2CFA6C)
2CFA60:  ADD             R1, PC; byte_792F7C
2CFA62:  LDR             R5, =(_ZN10CStreaming14m_bBoatsNeededE_ptr - 0x2CFA6E)
2CFA64:  ADD             R2, PC; byte_792F7D
2CFA66:  LDR             R3, =(dword_792F80 - 0x2CFA72)
2CFA68:  ADD             R6, PC; _ZN10CStreaming19ms_disableStreamingE_ptr
2CFA6A:  ADD             R5, PC; _ZN10CStreaming14m_bBoatsNeededE_ptr
2CFA6C:  LDR             R0, [R0]; CStreaming::ms_currentZoneType ...
2CFA6E:  ADD             R3, PC; dword_792F80
2CFA70:  STRB.W          R8, [R1]
2CFA74:  STRB.W          R8, [R2]
2CFA78:  LDR             R1, [R6]; int
2CFA7A:  LDR             R2, [R5]; CStreaming::m_bBoatsNeeded ...
2CFA7C:  STR.W           R8, [R3]
2CFA80:  MOV.W           R3, #0xFFFFFFFF
2CFA84:  STR             R3, [R0]; CStreaming::ms_currentZoneType
2CFA86:  MOV.W           R0, #(elf_hash_bucket+0x26); this
2CFA8A:  STRB.W          R8, [R1]; CStreaming::ms_disableStreaming
2CFA8E:  STRB.W          R8, [R2]; CStreaming::m_bBoatsNeeded
2CFA92:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2CFA96:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2CFA9E)
2CFA98:  LDR             R4, =(byte_61CD7E - 0x2CFAA0)
2CFA9A:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2CFA9C:  ADD             R4, PC; byte_61CD7E
2CFA9E:  LDR             R5, [R0]; CModelInfo::ms_modelInfoPtrs ...
2CFAA0:  MOV             R0, R4; this
2CFAA2:  LDR.W           R6, [R5,#(dword_91E140 - 0x91DCB8)]
2CFAA6:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
2CFAAA:  STR             R0, [R6,#4]
2CFAAC:  MOVW            R0, #(elf_hash_bucket+0x27); this
2CFAB0:  STRB.W          R8, [R6,#8]
2CFAB4:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2CFAB8:  MOV             R0, R4; this
2CFABA:  LDR.W           R6, [R5,#(dword_91E144 - 0x91DCB8)]
2CFABE:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
2CFAC2:  STR             R0, [R6,#4]
2CFAC4:  MOV.W           R0, #(elf_hash_bucket+0x28); this
2CFAC8:  STRB.W          R8, [R6,#8]
2CFACC:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2CFAD0:  MOV             R0, R4; this
2CFAD2:  LDR.W           R6, [R5,#(dword_91E148 - 0x91DCB8)]
2CFAD6:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
2CFADA:  STR             R0, [R6,#4]
2CFADC:  MOVW            R0, #(elf_hash_bucket+0x29); this
2CFAE0:  STRB.W          R8, [R6,#8]
2CFAE4:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2CFAE8:  MOV             R0, R4; this
2CFAEA:  LDR.W           R6, [R5,#(dword_91E14C - 0x91DCB8)]
2CFAEE:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
2CFAF2:  STR             R0, [R6,#4]
2CFAF4:  MOV.W           R0, #(elf_hash_bucket+0x2A); this
2CFAF8:  STRB.W          R8, [R6,#8]
2CFAFC:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2CFB00:  MOV             R0, R4; this
2CFB02:  LDR.W           R6, [R5,#(dword_91E150 - 0x91DCB8)]
2CFB06:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
2CFB0A:  STR             R0, [R6,#4]
2CFB0C:  MOVW            R0, #(elf_hash_bucket+0x2B); this
2CFB10:  STRB.W          R8, [R6,#8]
2CFB14:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2CFB18:  MOV             R0, R4; this
2CFB1A:  LDR.W           R6, [R5,#(dword_91E154 - 0x91DCB8)]
2CFB1E:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
2CFB22:  STR             R0, [R6,#4]
2CFB24:  MOV.W           R0, #(elf_hash_bucket+0x2C); this
2CFB28:  STRB.W          R8, [R6,#8]
2CFB2C:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2CFB30:  MOV             R0, R4; this
2CFB32:  LDR.W           R6, [R5,#(dword_91E158 - 0x91DCB8)]
2CFB36:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
2CFB3A:  STR             R0, [R6,#4]
2CFB3C:  MOVW            R0, #(elf_hash_bucket+0x2D); this
2CFB40:  STRB.W          R8, [R6,#8]
2CFB44:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2CFB48:  MOV             R0, R4; this
2CFB4A:  LDR.W           R6, [R5,#(dword_91E15C - 0x91DCB8)]
2CFB4E:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
2CFB52:  STR             R0, [R6,#4]
2CFB54:  MOV.W           R0, #(elf_hash_bucket+0x2E); this
2CFB58:  STRB.W          R8, [R6,#8]
2CFB5C:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2CFB60:  MOV             R0, R4; this
2CFB62:  LDR.W           R6, [R5,#(dword_91E160 - 0x91DCB8)]
2CFB66:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
2CFB6A:  STR             R0, [R6,#4]
2CFB6C:  MOVW            R0, #(elf_hash_bucket+0x2F); this
2CFB70:  STRB.W          R8, [R6,#8]
2CFB74:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2CFB78:  MOV             R0, R4; this
2CFB7A:  LDR.W           R6, [R5,#(dword_91E164 - 0x91DCB8)]
2CFB7E:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
2CFB82:  STR             R0, [R6,#4]
2CFB84:  MOV.W           R0, #(elf_hash_bucket+0x84); this
2CFB88:  STRB.W          R8, [R6,#8]
2CFB8C:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2CFB90:  MOV             R0, R4; this
2CFB92:  LDR.W           R6, [R5,#(dword_91E2B8 - 0x91DCB8)]
2CFB96:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
2CFB9A:  STR             R0, [R6,#4]
2CFB9C:  MOVW            R0, #(elf_hash_bucket+0x85); this
2CFBA0:  STRB.W          R8, [R6,#8]
2CFBA4:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2CFBA8:  MOV             R0, R4; this
2CFBAA:  LDR.W           R6, [R5,#(dword_91E2BC - 0x91DCB8)]
2CFBAE:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
2CFBB2:  STR             R0, [R6,#4]
2CFBB4:  MOV.W           R0, #(elf_hash_bucket+0x86); this
2CFBB8:  STRB.W          R8, [R6,#8]
2CFBBC:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2CFBC0:  MOV             R0, R4; this
2CFBC2:  LDR.W           R6, [R5,#(dword_91E2C0 - 0x91DCB8)]
2CFBC6:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
2CFBCA:  STR             R0, [R6,#4]
2CFBCC:  MOVW            R0, #(elf_hash_bucket+0x87); this
2CFBD0:  STRB.W          R8, [R6,#8]
2CFBD4:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2CFBD8:  MOV             R0, R4; this
2CFBDA:  LDR.W           R6, [R5,#(dword_91E2C4 - 0x91DCB8)]
2CFBDE:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
2CFBE2:  STR             R0, [R6,#4]
2CFBE4:  MOV.W           R0, #(elf_hash_bucket+0x88); this
2CFBE8:  STRB.W          R8, [R6,#8]
2CFBEC:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2CFBF0:  MOV             R0, R4; this
2CFBF2:  LDR.W           R6, [R5,#(dword_91E2C8 - 0x91DCB8)]
2CFBF6:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
2CFBFA:  STR             R0, [R6,#4]
2CFBFC:  MOVW            R0, #(elf_hash_bucket+0x89); this
2CFC00:  STRB.W          R8, [R6,#8]
2CFC04:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2CFC08:  MOV             R0, R4; this
2CFC0A:  LDR.W           R6, [R5,#(dword_91E2CC - 0x91DCB8)]
2CFC0E:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
2CFC12:  STR             R0, [R6,#4]
2CFC14:  MOV.W           R0, #(elf_hash_bucket+0x8A); this
2CFC18:  STRB.W          R8, [R6,#8]
2CFC1C:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2CFC20:  MOV             R0, R4; this
2CFC22:  LDR.W           R6, [R5,#(dword_91E2D0 - 0x91DCB8)]
2CFC26:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
2CFC2A:  STR             R0, [R6,#4]
2CFC2C:  MOVW            R0, #(elf_hash_bucket+0x8B); this
2CFC30:  STRB.W          R8, [R6,#8]
2CFC34:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2CFC38:  MOV             R0, R4; this
2CFC3A:  LDR.W           R6, [R5,#(dword_91E2D4 - 0x91DCB8)]
2CFC3E:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
2CFC42:  STR             R0, [R6,#4]
2CFC44:  MOV.W           R0, #(elf_hash_bucket+0x8C); this
2CFC48:  STRB.W          R8, [R6,#8]
2CFC4C:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2CFC50:  MOV             R0, R4; this
2CFC52:  LDR.W           R6, [R5,#(dword_91E2D8 - 0x91DCB8)]
2CFC56:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
2CFC5A:  STR             R0, [R6,#4]
2CFC5C:  MOVW            R0, #(elf_hash_bucket+0x8D); this
2CFC60:  STRB.W          R8, [R6,#8]
2CFC64:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2CFC68:  MOV             R0, R4; this
2CFC6A:  LDR.W           R5, [R5,#(dword_91E2DC - 0x91DCB8)]
2CFC6E:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
2CFC72:  STR             R0, [R5,#4]
2CFC74:  MOV.W           R4, #(elf_hash_bucket+0x30)
2CFC78:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2CFC82)
2CFC7A:  LDR.W           R9, =(byte_61CD7E - 0x2CFC88)
2CFC7E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2CFC80:  STRB.W          R8, [R5,#8]
2CFC84:  ADD             R9, PC; byte_61CD7E
2CFC86:  LDR             R6, [R0]; CModelInfo::ms_modelInfoPtrs ...
2CFC88:  MOV             R0, R4; this
2CFC8A:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2CFC8E:  MOV             R0, R9; this
2CFC90:  LDR.W           R5, [R6,R4,LSL#2]
2CFC94:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
2CFC98:  ADDS            R4, #1
2CFC9A:  STR             R0, [R5,#4]
2CFC9C:  CMP.W           R4, #0x140
2CFCA0:  STRB.W          R8, [R5,#8]
2CFCA4:  BNE             loc_2CFC88
2CFCA6:  ADD             SP, SP, #0x1C
2CFCA8:  POP.W           {R8-R11}
2CFCAC:  POP             {R4-R7,PC}
