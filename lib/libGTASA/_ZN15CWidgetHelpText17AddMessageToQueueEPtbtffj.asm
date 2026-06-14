; =========================================================
; Game Engine Function: _ZN15CWidgetHelpText17AddMessageToQueueEPtbtffj
; Address            : 0x2B7000 - 0x2B711A
; =========================================================

2B7000:  PUSH            {R4-R7,LR}
2B7002:  ADD             R7, SP, #0xC
2B7004:  PUSH.W          {R8-R10}
2B7008:  VPUSH           {D8-D9}
2B700C:  SUB.W           SP, SP, #0x338
2B7010:  MOV             R6, R0
2B7012:  MOVW            R0, #0x1D8C
2B7016:  ADD             R0, R6; this
2B7018:  MOV             R4, R3
2B701A:  MOV             R8, R2
2B701C:  MOV             R9, R1
2B701E:  BLX             j__ZN9CMessages18GetGxtStringLengthEPt; CMessages::GetGxtStringLength(ushort *)
2B7022:  CMP             R0, #0
2B7024:  BNE             loc_2B710C
2B7026:  CBNZ            R4, loc_2B7034
2B7028:  MOV             R0, R6; this
2B702A:  MOV             R1, R9; CMessages *
2B702C:  BLX             j__ZN15CWidgetHelpText14IsStringQueuedEPt; CWidgetHelpText::IsStringQueued(ushort *)
2B7030:  CMP             R0, #0
2B7032:  BNE             loc_2B710C
2B7034:  ADD.W           R5, R6, #0xB8
2B7038:  MOV             R0, R5; this
2B703A:  BLX             j__ZN9CMessages18GetGxtStringLengthEPt; CMessages::GetGxtStringLength(ushort *)
2B703E:  CBZ             R0, loc_2B70B6
2B7040:  ADD.W           R5, R6, #0x3EC
2B7044:  MOV             R0, R5; this
2B7046:  BLX             j__ZN9CMessages18GetGxtStringLengthEPt; CMessages::GetGxtStringLength(ushort *)
2B704A:  CBZ             R0, loc_2B70B6
2B704C:  ADD.W           R5, R6, #0x720
2B7050:  MOV             R0, R5; this
2B7052:  BLX             j__ZN9CMessages18GetGxtStringLengthEPt; CMessages::GetGxtStringLength(ushort *)
2B7056:  CBZ             R0, loc_2B70B6
2B7058:  ADDW            R5, R6, #0xA54
2B705C:  MOV             R0, R5; this
2B705E:  BLX             j__ZN9CMessages18GetGxtStringLengthEPt; CMessages::GetGxtStringLength(ushort *)
2B7062:  CBZ             R0, loc_2B70B6
2B7064:  ADDW            R5, R6, #0xD88
2B7068:  MOV             R0, R5; this
2B706A:  BLX             j__ZN9CMessages18GetGxtStringLengthEPt; CMessages::GetGxtStringLength(ushort *)
2B706E:  CBZ             R0, loc_2B70B6
2B7070:  MOVW            R0, #0x10BC
2B7074:  ADDS            R5, R6, R0
2B7076:  MOV             R0, R5; this
2B7078:  BLX             j__ZN9CMessages18GetGxtStringLengthEPt; CMessages::GetGxtStringLength(ushort *)
2B707C:  CBZ             R0, loc_2B70B6
2B707E:  MOVW            R0, #0x13F0
2B7082:  ADDS            R5, R6, R0
2B7084:  MOV             R0, R5; this
2B7086:  BLX             j__ZN9CMessages18GetGxtStringLengthEPt; CMessages::GetGxtStringLength(ushort *)
2B708A:  CBZ             R0, loc_2B70B6
2B708C:  MOVW            R0, #0x1724
2B7090:  ADDS            R5, R6, R0
2B7092:  MOV             R0, R5; this
2B7094:  BLX             j__ZN9CMessages18GetGxtStringLengthEPt; CMessages::GetGxtStringLength(ushort *)
2B7098:  CBZ             R0, loc_2B70B6
2B709A:  MOVW            R0, #0x1A58
2B709E:  ADDS            R5, R6, R0
2B70A0:  MOV             R0, R5; this
2B70A2:  BLX             j__ZN9CMessages18GetGxtStringLengthEPt; CMessages::GetGxtStringLength(ushort *)
2B70A6:  CBZ             R0, loc_2B70B6
2B70A8:  MOVW            R0, #0x1D8C
2B70AC:  ADDS            R5, R6, R0
2B70AE:  MOV             R0, R5; this
2B70B0:  BLX             j__ZN9CMessages18GetGxtStringLengthEPt; CMessages::GetGxtStringLength(ushort *)
2B70B4:  CBNZ            R0, loc_2B710C
2B70B6:  LDR             R0, =(byte_61CD7E - 0x2B70C4)
2B70B8:  MOV             R6, SP
2B70BA:  MOV             R1, R6; unsigned __int16 *
2B70BC:  LDR.W           R10, [R7,#arg_8]
2B70C0:  ADD             R0, PC; byte_61CD7E ; char *
2B70C2:  VLDR            S16, [R7,#arg_4]
2B70C6:  VLDR            S18, [R7,#arg_0]
2B70CA:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
2B70CE:  MOV             R0, R6; this
2B70D0:  MOV             R1, R9; unsigned __int16 *
2B70D2:  MOV.W           R2, #(elf_hash_bucket+0x94); unsigned __int16 *
2B70D6:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
2B70DA:  VMOV.F32        S2, #9.0
2B70DE:  CMP.W           R8, #0
2B70E2:  VMOV.F32        S0, #5.0
2B70E6:  MOV             R0, R5; void *
2B70E8:  MOV             R1, R6; void *
2B70EA:  MOV.W           R2, #0x334; size_t
2B70EE:  IT NE
2B70F0:  VMOVNE.F32      S0, S2
2B70F4:  STRH.W          R4, [SP,#0x360+var_3C]
2B70F8:  VSTR            S18, [SP,#0x360+var_38]
2B70FC:  VSTR            S16, [SP,#0x360+var_34]
2B7100:  STR.W           R10, [SP,#0x360+var_30]
2B7104:  VSTR            S0, [SP,#0x360+var_40]
2B7108:  BLX             memcpy_0
2B710C:  ADD.W           SP, SP, #0x338
2B7110:  VPOP            {D8-D9}
2B7114:  POP.W           {R8-R10}
2B7118:  POP             {R4-R7,PC}
