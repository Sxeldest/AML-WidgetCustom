; =========================================================
; Game Engine Function: sub_6BE64
; Address            : 0x6BE64 - 0x6C078
; =========================================================

6BE64:  PUSH            {R4-R7,LR}
6BE66:  ADD             R7, SP, #0xC
6BE68:  PUSH.W          {R8-R11}
6BE6C:  SUB             SP, SP, #4
6BE6E:  VPUSH           {D8-D9}
6BE72:  SUB             SP, SP, #0x28
6BE74:  LDR             R1, =(aSampOrig - 0x6BE7E); "SAMP_ORIG" ...
6BE76:  LDR             R2, =(aInitializerpcH - 0x6BE80); "initializeRPC_hooks()" ...
6BE78:  LDR             R0, =(__stack_chk_guard_ptr - 0x6BE82)
6BE7A:  ADD             R1, PC; "SAMP_ORIG"
6BE7C:  ADD             R2, PC; "initializeRPC_hooks()"
6BE7E:  ADD             R0, PC; __stack_chk_guard_ptr
6BE80:  LDR             R0, [R0]; __stack_chk_guard
6BE82:  LDR             R0, [R0]
6BE84:  STR             R0, [SP,#0x58+var_34]
6BE86:  MOVS            R0, #4; prio
6BE88:  BLX             __android_log_print
6BE8C:  LDR             R0, =(off_114AB0 - 0x6BE9E)
6BE8E:  MOVW            R1, #:lower16:unk_144C9C
6BE92:  VMOV.I32        Q4, #0
6BE96:  ADD.W           R8, SP, #0x58+var_48
6BE9A:  ADD             R0, PC; off_114AB0
6BE9C:  MOVT            R1, #:upper16:unk_144C9C
6BEA0:  LDR.W           R9, [R0]; dword_1A4408
6BEA4:  VST1.64         {D8-D9}, [R8]
6BEA8:  LDR.W           R0, [R9]
6BEAC:  ADDS            R6, R0, R1
6BEAE:  MOV             R1, R8
6BEB0:  MOV             R0, R6
6BEB2:  BLX             dladdr
6BEB6:  LDR             R4, =(aUnknownSymbol - 0x6BEBE); "unknown symbol" ...
6BEB8:  LDR             R5, =(aUnknownFile - 0x6BEC0); "unknown file" ...
6BEBA:  ADD             R4, PC; "unknown symbol"
6BEBC:  ADD             R5, PC; "unknown file"
6BEBE:  MOV             R10, R4
6BEC0:  CBZ             R0, loc_6BEEC
6BEC2:  LDRD.W          R0, R12, [SP,#0x58+var_48]
6BEC6:  LDRD.W          R3, R4, [SP,#0x58+var_40]
6BECA:  LDR             R1, =(aMemory - 0x6BED8); "Memory" ...
6BECC:  CMP             R0, #0
6BECE:  LDR             R2, =(aHookingS0xXFro - 0x6BEDE); "Hooking %s (0x%X) from %s (0x%X)" ...
6BED0:  IT EQ
6BED2:  MOVEQ           R0, R5
6BED4:  ADD             R1, PC; "Memory"
6BED6:  STRD.W          R0, R12, [SP,#0x58+var_54]
6BEDA:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
6BEDC:  MOVS            R0, #4; prio
6BEDE:  STR             R4, [SP,#0x58+var_58]
6BEE0:  CMP             R3, #0
6BEE2:  IT EQ
6BEE4:  MOVEQ           R3, R10
6BEE6:  MOV             R4, R10
6BEE8:  BLX             __android_log_print
6BEEC:  LDR             R1, =(sub_6B3AC+1 - 0x6BEF8)
6BEEE:  ADDS            R0, R6, #1
6BEF0:  LDR             R2, =(off_1A4418 - 0x6BEFA)
6BEF2:  MOV             R11, R5
6BEF4:  ADD             R1, PC; sub_6B3AC
6BEF6:  ADD             R2, PC; off_1A4418
6BEF8:  BLX             DobbyHook
6BEFC:  LDR.W           R0, [R9]
6BF00:  MOV             R1, #unk_145AF4
6BF08:  VST1.64         {D8-D9}, [R8]
6BF0C:  ADDS            R6, R0, R1
6BF0E:  MOV             R1, R8
6BF10:  MOV             R0, R6
6BF12:  BLX             dladdr
6BF16:  CBZ             R0, loc_6BF44
6BF18:  LDRD.W          R0, R12, [SP,#0x58+var_48]
6BF1C:  MOV             R5, R11
6BF1E:  LDRD.W          R3, R4, [SP,#0x58+var_40]
6BF22:  LDR             R1, =(aMemory - 0x6BF30); "Memory" ...
6BF24:  CMP             R0, #0
6BF26:  LDR             R2, =(aHookingS0xXFro - 0x6BF36); "Hooking %s (0x%X) from %s (0x%X)" ...
6BF28:  IT EQ
6BF2A:  MOVEQ           R0, R11
6BF2C:  ADD             R1, PC; "Memory"
6BF2E:  STRD.W          R0, R12, [SP,#0x58+var_54]
6BF32:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
6BF34:  MOVS            R0, #4; prio
6BF36:  STR             R4, [SP,#0x58+var_58]
6BF38:  CMP             R3, #0
6BF3A:  IT EQ
6BF3C:  MOVEQ           R3, R10
6BF3E:  MOV             R4, R10
6BF40:  BLX             __android_log_print
6BF44:  LDR             R1, =(sub_6B4E8+1 - 0x6BF4E)
6BF46:  ADDS            R0, R6, #1
6BF48:  LDR             R2, =(off_1A441C - 0x6BF50)
6BF4A:  ADD             R1, PC; sub_6B4E8
6BF4C:  ADD             R2, PC; off_1A441C
6BF4E:  BLX             DobbyHook
6BF52:  LDR.W           R0, [R9]
6BF56:  VMOV.I32        Q4, #0
6BF5A:  MOV             R1, R8
6BF5C:  ADD.W           R0, R0, #0x146000
6BF60:  ADD.W           R6, R0, #0x458
6BF64:  VST1.64         {D8-D9}, [R8]
6BF68:  MOV             R0, R6
6BF6A:  BLX             dladdr
6BF6E:  CBZ             R0, loc_6BF9C
6BF70:  LDRD.W          R0, R12, [SP,#0x58+var_48]
6BF74:  MOV             R5, R11
6BF76:  LDRD.W          R3, R4, [SP,#0x58+var_40]
6BF7A:  LDR             R1, =(aMemory - 0x6BF88); "Memory" ...
6BF7C:  CMP             R0, #0
6BF7E:  LDR             R2, =(aHookingS0xXFro - 0x6BF8E); "Hooking %s (0x%X) from %s (0x%X)" ...
6BF80:  IT EQ
6BF82:  MOVEQ           R0, R11
6BF84:  ADD             R1, PC; "Memory"
6BF86:  STRD.W          R0, R12, [SP,#0x58+var_54]
6BF8A:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
6BF8C:  MOVS            R0, #4; prio
6BF8E:  STR             R4, [SP,#0x58+var_58]
6BF90:  CMP             R3, #0
6BF92:  IT EQ
6BF94:  MOVEQ           R3, R10
6BF96:  MOV             R4, R10
6BF98:  BLX             __android_log_print
6BF9C:  LDR             R1, =(sub_6B78C+1 - 0x6BFA6)
6BF9E:  ADDS            R0, R6, #1
6BFA0:  LDR             R2, =(unk_1A4420 - 0x6BFA8)
6BFA2:  ADD             R1, PC; sub_6B78C
6BFA4:  ADD             R2, PC; unk_1A4420
6BFA6:  BLX             DobbyHook
6BFAA:  LDR.W           R0, [R9]
6BFAE:  MOV             R1, #unk_14780C
6BFB6:  VST1.64         {D8-D9}, [R8]
6BFBA:  ADDS            R6, R0, R1
6BFBC:  MOV             R1, R8
6BFBE:  MOV             R0, R6
6BFC0:  BLX             dladdr
6BFC4:  CBZ             R0, loc_6BFF2
6BFC6:  LDRD.W          R0, R12, [SP,#0x58+var_48]
6BFCA:  MOV             R5, R11
6BFCC:  LDRD.W          R3, R4, [SP,#0x58+var_40]
6BFD0:  LDR             R1, =(aMemory - 0x6BFDE); "Memory" ...
6BFD2:  CMP             R0, #0
6BFD4:  LDR             R2, =(aHookingS0xXFro - 0x6BFE4); "Hooking %s (0x%X) from %s (0x%X)" ...
6BFD6:  IT EQ
6BFD8:  MOVEQ           R0, R11
6BFDA:  ADD             R1, PC; "Memory"
6BFDC:  STRD.W          R0, R12, [SP,#0x58+var_54]
6BFE0:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
6BFE2:  MOVS            R0, #4; prio
6BFE4:  STR             R4, [SP,#0x58+var_58]
6BFE6:  CMP             R3, #0
6BFE8:  IT EQ
6BFEA:  MOVEQ           R3, R10
6BFEC:  MOV             R4, R10
6BFEE:  BLX             __android_log_print
6BFF2:  LDR             R1, =(sub_6BDCC+1 - 0x6BFFC)
6BFF4:  ADDS            R0, R6, #1
6BFF6:  LDR             R2, =(off_1A4428 - 0x6BFFE)
6BFF8:  ADD             R1, PC; sub_6BDCC
6BFFA:  ADD             R2, PC; off_1A4428
6BFFC:  BLX             DobbyHook
6C000:  LDR.W           R0, [R9]
6C004:  MOVW            R1, #:lower16:unk_14D4E8
6C008:  VMOV.I32        Q8, #0
6C00C:  MOVT            R1, #:upper16:unk_14D4E8
6C010:  ADDS            R6, R0, R1
6C012:  MOV             R1, R8
6C014:  MOV             R0, R6
6C016:  VST1.64         {D16-D17}, [R8]
6C01A:  BLX             dladdr
6C01E:  CBZ             R0, loc_6C048
6C020:  LDRD.W          R0, R12, [SP,#0x58+var_48]
6C024:  MOV             R3, R4
6C026:  LDR             R5, [SP,#0x58+var_40]
6C028:  LDR             R4, [SP,#0x58+var_3C]
6C02A:  CMP             R0, #0
6C02C:  LDR             R1, =(aMemory - 0x6C038); "Memory" ...
6C02E:  LDR             R2, =(aHookingS0xXFro - 0x6C03C); "Hooking %s (0x%X) from %s (0x%X)" ...
6C030:  IT NE
6C032:  MOVNE           R11, R0
6C034:  ADD             R1, PC; "Memory"
6C036:  MOVS            R0, #4; prio
6C038:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
6C03A:  STMEA.W         SP, {R4,R11,R12}
6C03E:  CMP             R5, #0
6C040:  IT NE
6C042:  MOVNE           R3, R5
6C044:  BLX             __android_log_print
6C048:  LDR             R1, =(sub_6B888+1 - 0x6C052)
6C04A:  ADDS            R0, R6, #1
6C04C:  LDR             R2, =(off_1A4424 - 0x6C054)
6C04E:  ADD             R1, PC; sub_6B888
6C050:  ADD             R2, PC; off_1A4424
6C052:  BLX             DobbyHook
6C056:  LDR             R0, [SP,#0x58+var_34]
6C058:  LDR             R1, =(__stack_chk_guard_ptr - 0x6C05E)
6C05A:  ADD             R1, PC; __stack_chk_guard_ptr
6C05C:  LDR             R1, [R1]; __stack_chk_guard
6C05E:  LDR             R1, [R1]
6C060:  CMP             R1, R0
6C062:  ITTTT EQ
6C064:  ADDEQ           SP, SP, #0x28 ; '('
6C066:  VPOPEQ          {D8-D9}
6C06A:  ADDEQ           SP, SP, #4
6C06C:  POPEQ.W         {R8-R11}
6C070:  IT EQ
6C072:  POPEQ           {R4-R7,PC}
6C074:  BLX             __stack_chk_fail
