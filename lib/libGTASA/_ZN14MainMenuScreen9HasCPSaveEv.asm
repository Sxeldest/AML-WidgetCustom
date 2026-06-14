; =========================================================
; Game Engine Function: _ZN14MainMenuScreen9HasCPSaveEv
; Address            : 0x29DDE0 - 0x29DE74
; =========================================================

29DDE0:  PUSH            {R4-R7,LR}
29DDE2:  ADD             R7, SP, #0xC
29DDE4:  PUSH.W          {R8,R9,R11}
29DDE8:  SUB             SP, SP, #0x108
29DDEA:  LDR             R0, =(lastSaveForResume_ptr - 0x29DDF2)
29DDEC:  LDR             R1, =(__stack_chk_guard_ptr - 0x29DDF4)
29DDEE:  ADD             R0, PC; lastSaveForResume_ptr
29DDF0:  ADD             R1, PC; __stack_chk_guard_ptr
29DDF2:  LDR             R0, [R0]; lastSaveForResume
29DDF4:  LDR             R1, [R1]; __stack_chk_guard
29DDF6:  LDR             R4, [R0]
29DDF8:  LDR             R0, [R1]
29DDFA:  STR             R0, [SP,#0x120+var_1C]
29DDFC:  ADDS            R0, R4, #1
29DDFE:  BNE             loc_29DE52
29DE00:  LDR             R0, =(PcSaveHelper_ptr - 0x29DE0C)
29DE02:  MOV             R8, SP
29DE04:  MOVS            R1, #9; int
29DE06:  MOV             R2, R8; char *
29DE08:  ADD             R0, PC; PcSaveHelper_ptr
29DE0A:  LDR             R5, [R0]; PcSaveHelper
29DE0C:  MOV             R0, R5; this
29DE0E:  BLX             j__ZN8C_PcSave20GenerateGameFilenameEiPc; C_PcSave::GenerateGameFilename(int,char *)
29DE12:  MOVS            R0, #1; int
29DE14:  MOV             R1, R8; char *
29DE16:  BLX             j__Z14OS_FileGetDate14OSFileDataAreaPKc; OS_FileGetDate(OSFileDataArea,char const*)
29DE1A:  MOV             R6, R0
29DE1C:  MOV             R9, R1
29DE1E:  MOV             R0, R5; this
29DE20:  MOVS            R1, #8; int
29DE22:  MOV             R2, R8; char *
29DE24:  MOVS            R4, #8
29DE26:  BLX             j__ZN8C_PcSave20GenerateGameFilenameEiPc; C_PcSave::GenerateGameFilename(int,char *)
29DE2A:  MOVS            R0, #1; int
29DE2C:  MOV             R1, R8; char *
29DE2E:  BLX             j__Z14OS_FileGetDate14OSFileDataAreaPKc; OS_FileGetDate(OSFileDataArea,char const*)
29DE32:  LDR             R2, =(lastSaveForResume_ptr - 0x29DE40)
29DE34:  ORR.W           R3, R1, R9
29DE38:  ORR.W           R5, R0, R6
29DE3C:  ADD             R2, PC; lastSaveForResume_ptr
29DE3E:  ORRS            R3, R5
29DE40:  IT EQ
29DE42:  MOVEQ           R4, #9
29DE44:  SUBS            R0, R0, R6
29DE46:  LDR             R2, [R2]; lastSaveForResume ; bool
29DE48:  SBCS.W          R0, R1, R9
29DE4C:  IT LT
29DE4E:  MOVLT           R4, #9
29DE50:  STR             R4, [R2]
29DE52:  MOV             R0, R4; this
29DE54:  MOVS            R1, #1; int
29DE56:  BLX             j__ZN19CGenericGameStorage18CheckSlotDataValidEib; CGenericGameStorage::CheckSlotDataValid(int,bool)
29DE5A:  LDR             R1, =(__stack_chk_guard_ptr - 0x29DE62)
29DE5C:  LDR             R2, [SP,#0x120+var_1C]
29DE5E:  ADD             R1, PC; __stack_chk_guard_ptr
29DE60:  LDR             R1, [R1]; __stack_chk_guard
29DE62:  LDR             R1, [R1]
29DE64:  SUBS            R1, R1, R2
29DE66:  ITTT EQ
29DE68:  ADDEQ           SP, SP, #0x108
29DE6A:  POPEQ.W         {R8,R9,R11}
29DE6E:  POPEQ           {R4-R7,PC}
29DE70:  BLX             __stack_chk_fail
