; =========================================================
; Game Engine Function: _ZN8C_PcSave10DeleteSlotEa
; Address            : 0x4D40DC - 0x4D4172
; =========================================================

4D40DC:  PUSH            {R4,R5,R7,LR}
4D40DE:  ADD             R7, SP, #8
4D40E0:  SUB             SP, SP, #0x110
4D40E2:  LDR             R0, =(__stack_chk_guard_ptr - 0x4D40EE)
4D40E4:  MOV             R4, R1
4D40E6:  LDR             R1, =(PcSaveHelper_ptr - 0x4D40F2)
4D40E8:  MOVS            R3, #0
4D40EA:  ADD             R0, PC; __stack_chk_guard_ptr
4D40EC:  LDR             R2, =(FrontEndMenuManager_ptr - 0x4D40F4)
4D40EE:  ADD             R1, PC; PcSaveHelper_ptr
4D40F0:  ADD             R2, PC; FrontEndMenuManager_ptr
4D40F2:  LDR             R0, [R0]; __stack_chk_guard
4D40F4:  LDR             R1, [R1]; PcSaveHelper
4D40F6:  LDR             R2, [R2]; FrontEndMenuManager
4D40F8:  LDR             R0, [R0]
4D40FA:  STR             R3, [R1]
4D40FC:  STR             R0, [SP,#0x118+var_C]
4D40FE:  LDRB.W          R0, [R2,#(byte_98F1AC - 0x98F0F8)]
4D4102:  CBZ             R0, loc_4D410A
4D4104:  LDR             R1, =(MarketingPCSaveFileName_ptr - 0x4D410A)
4D4106:  ADD             R1, PC; MarketingPCSaveFileName_ptr
4D4108:  B               loc_4D4132
4D410A:  MOV             R0, R4; int
4D410C:  BLX             j__Z11IsCloudSloti; IsCloudSlot(int)
4D4110:  CMP             R0, #1
4D4112:  BNE             loc_4D412E
4D4114:  BLX             GetRockstarID
4D4118:  LDR             R2, =(DefaultPCSaveFileName_ptr - 0x4D4122)
4D411A:  ADR             R3, dword_4D4198
4D411C:  LDR             R1, =(aSISS_0 - 0x4D4128); "%s%i_%s%s"
4D411E:  ADD             R2, PC; DefaultPCSaveFileName_ptr
4D4120:  STRD.W          R0, R3, [SP,#0x118+var_118]
4D4124:  ADD             R1, PC; "%s%i_%s%s"
4D4126:  ADDS            R3, R4, #1
4D4128:  LDR             R2, [R2]; "GTASAsf" ...
4D412A:  ADD             R0, SP, #0x118+var_110
4D412C:  B               loc_4D413A
4D412E:  LDR             R1, =(DefaultPCSaveFileName_ptr - 0x4D4134)
4D4130:  ADD             R1, PC; DefaultPCSaveFileName_ptr
4D4132:  LDR             R2, [R1]; "GTASAsf"
4D4134:  ADDS            R3, R4, #1
4D4136:  ADD             R0, SP, #0x118+var_110
4D4138:  ADR             R1, aSIB; "%s%i.b"
4D413A:  BL              sub_5E6BC0
4D413E:  ADD             R5, SP, #0x118+var_110
4D4140:  MOVS            R0, #1
4D4142:  MOVS            R4, #1
4D4144:  MOV             R1, R5
4D4146:  BLX             j__Z13OS_FileDelete14OSFileDataAreaPKc; OS_FileDelete(OSFileDataArea,char const*)
4D414A:  ADR             R1, dword_4D419C; char *
4D414C:  MOV             R0, R5; this
4D414E:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
4D4152:  CBZ             R0, loc_4D415A
4D4154:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
4D4158:  MOVS            R4, #0
4D415A:  LDR             R0, =(__stack_chk_guard_ptr - 0x4D4162)
4D415C:  LDR             R1, [SP,#0x118+var_C]
4D415E:  ADD             R0, PC; __stack_chk_guard_ptr
4D4160:  LDR             R0, [R0]; __stack_chk_guard
4D4162:  LDR             R0, [R0]
4D4164:  SUBS            R0, R0, R1
4D4166:  ITTT EQ
4D4168:  MOVEQ           R0, R4
4D416A:  ADDEQ           SP, SP, #0x110
4D416C:  POPEQ           {R4,R5,R7,PC}
4D416E:  BLX             __stack_chk_fail
