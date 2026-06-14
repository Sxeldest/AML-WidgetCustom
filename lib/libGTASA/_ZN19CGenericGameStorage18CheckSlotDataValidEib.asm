; =========================================================
; Game Engine Function: _ZN19CGenericGameStorage18CheckSlotDataValidEib
; Address            : 0x4838E4 - 0x48394A
; =========================================================

4838E4:  PUSH            {R4-R7,LR}
4838E6:  ADD             R7, SP, #0xC
4838E8:  PUSH.W          {R11}
4838EC:  SUB             SP, SP, #0x108
4838EE:  MOV             R5, R0
4838F0:  LDR             R0, =(__stack_chk_guard_ptr - 0x4838FA)
4838F2:  MOV             R4, R1
4838F4:  LDR             R1, =(PcSaveHelper_ptr - 0x4838FE)
4838F6:  ADD             R0, PC; __stack_chk_guard_ptr
4838F8:  MOV             R6, SP
4838FA:  ADD             R1, PC; PcSaveHelper_ptr
4838FC:  LDR             R2, [R0]; __stack_chk_guard
4838FE:  LDR             R0, [R1]; PcSaveHelper ; this
483900:  LDR             R1, [R2]
483902:  MOV             R2, R6; char *
483904:  STR             R1, [SP,#0x118+var_14]
483906:  MOV             R1, R5; int
483908:  BLX             j__ZN8C_PcSave20GenerateGameFilenameEiPc; C_PcSave::GenerateGameFilename(int,char *)
48390C:  MOV             R0, R5; this
48390E:  MOV             R1, R6; int
483910:  BLX             j__ZN19CGenericGameStorage19CheckDataNotCorruptEiPc; CGenericGameStorage::CheckDataNotCorrupt(int,char *)
483914:  CMP             R0, #1
483916:  BNE             loc_483924
483918:  CMP             R4, #1
48391A:  IT EQ
48391C:  BLXEQ           j__ZN10CStreaming18DeleteAllRwObjectsEv; CStreaming::DeleteAllRwObjects(void)
483920:  MOVS            R0, #1
483922:  B               loc_483930
483924:  LDR             R0, =(PcSaveHelper_ptr - 0x48392C)
483926:  MOVS            R1, #7
483928:  ADD             R0, PC; PcSaveHelper_ptr
48392A:  LDR             R0, [R0]; PcSaveHelper
48392C:  STR             R1, [R0]
48392E:  MOVS            R0, #0
483930:  LDR             R1, =(__stack_chk_guard_ptr - 0x483938)
483932:  LDR             R2, [SP,#0x118+var_14]
483934:  ADD             R1, PC; __stack_chk_guard_ptr
483936:  LDR             R1, [R1]; __stack_chk_guard
483938:  LDR             R1, [R1]
48393A:  SUBS            R1, R1, R2
48393C:  ITTT EQ
48393E:  ADDEQ           SP, SP, #0x108
483940:  POPEQ.W         {R11}
483944:  POPEQ           {R4-R7,PC}
483946:  BLX             __stack_chk_fail
